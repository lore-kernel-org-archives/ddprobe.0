Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5074D1DD877
	for <ddprobe@lists.linux.dev>; Sat, 27 Jun 2026 03:08:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782529714; cv=none; b=diyvN/pn0plmbSVp5fPxWHpJSx8ThJwGTjrd+oIMD2AQ29zgSDitTRhYb104TNKaBWxmhtm+nzk1k9Cn9pv4XcfSnLzV/94XIf3IQGDPjmBehioweFEhpbmWTpxz34RJwHj/P9eo3fhAJ253PyAAlfVsfxOj6LySk/YyQrBJGoQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782529714; c=relaxed/simple;
	bh=v0XykoqKTrFZfNeDQIAkc0c5DFh5uka2GTXvcEoY/cA=;
	h=To:Subject:From:Message-Id:Date; b=TtFQLXoEz+rI673YDnsrdiv1IXzouIX+KuuIfc1crieNOm1QXNKP9/qRLYAwUwau+O10j1nU+Zl/MTWdr/qPbGJvt8X1yWBMtzZm55FkDuOo2Qfri09BApfy6LiA7ugh1XU0lPon2+2jOSSNXcL2VZOPlzLUXg1qxa+k5H8haHQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Za4c6rPr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Za4c6rPr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1215C19425
	for <ddprobe@lists.linux.dev>; Sat, 27 Jun 2026 03:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782529713;
	bh=v0XykoqKTrFZfNeDQIAkc0c5DFh5uka2GTXvcEoY/cA=;
	h=To:Subject:From:Date:From;
	b=Za4c6rPrlmbPYXD6Lo87hhOQvfNx0NMBiHLXnfCJWqbf8PsUAhzKuysIkIQc/bkP5
	 CIMa9BYCi92ezzUbAdQEnkJVmrgLgrVi0ngIntdZgwkTkdWCguYiIqKZT6vvW9IHg5
	 hZ+e0wJ2eHkVZTKFoM2SGXmFmqkQOcxpxmyRZjTmREue/VoOEJIzsMhBbEwlzgx2Kn
	 6Y+a5ar97nX8MTwr9SZq13VurcI2USaUSfUx4JQJQGYLwpl7fFq6lpytIHY5wBncza
	 qd/0Lqq4YAXNCmS+ZZW5t49Zo/CVBeDaG8oRNLGcpWaPlV5ljp8IYzsVFWvFc2VcEI
	 IyW8qhRTzVoDw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE5F7C43458
	for <ddprobe@lists.linux.dev>; Sat, 27 Jun 2026 03:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178252971369.20236.4755132661885445861.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9b9a341f3c62a5b9316be3fa45508d0caf389b8ab5b8434ea665f99421af868d
Date: Sat, 27 Jun 2026 03:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782529713
