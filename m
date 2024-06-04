Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 599A7146593
	for <ddprobe@lists.linux.dev>; Tue,  4 Jun 2024 13:15:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717506923; cv=none; b=paGQgdSgkKuRavzxs0RYNhOgWsvOPEL0tvmOoMO2EyfVT5L/e0b7AK97odcpKZ8maH8rJx/oYuyt0W5M5bq5+llCQjuG30VWA4sc6+FDXP0Db7fA+WsslS0onkDjPyA52+4XA9jxpVw/TiUfb+Nd3f7DsYmYj9YofnBZR+px3Xw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717506923; c=relaxed/simple;
	bh=37TvvRTp1QN9tfp2W31kRHnpiFqWSKG744FofPGan9E=;
	h=To:Subject:From:Message-Id:Date; b=Ca2+QUUMFGz6v54T+hjq81qN+xeEJI2vLB/60KR272FEi+5IeJv+HpqinzQejZUDFDEQfL87XXwjKt0YBfSgRAe9v5owX9JStWqP0KCSTXuZUexZBpc6ixUQ8CRMfwZX6IF16L+op6wcgXfIPePx1C3JNweQWFkg/srmPo+tIwI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=q4G9vmwv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="q4G9vmwv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EEDF4C4AF07
	for <ddprobe@lists.linux.dev>; Tue,  4 Jun 2024 13:15:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717506923;
	bh=37TvvRTp1QN9tfp2W31kRHnpiFqWSKG744FofPGan9E=;
	h=To:Subject:From:Date:From;
	b=q4G9vmwvpup9MzS59klmyRY+MxNdJ/Lw9fF3gEkfWxgj5SXhWpKtZtCCUJKxCduou
	 oEPbpG+fc8dUO+pkZ3p4GM5QDBrotTAO4bXO42VdSmSTx9BGZh00bkfwo/ngVvZpgd
	 EjPpzTeO2ikVOnpdmXT2goeoVDNglGTQnhobuyUc72nrcpLWpMHxKWlp6PfGAz1wbl
	 n7x9vGLGWSxDoOY9xfnM0gPFt+o3bZBhaHsJCZ8sn2sJtkb7Gjr8bG3Slryd4v1oFZ
	 Q72nWo3r4ZOuvtB7XXL1cElKAYsPLmwjNsFtkUD5Tz+9ZDR/8TPLTlhUC3cxNXZM+2
	 kwUTznE3mo2gQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D328EC25B78
	for <ddprobe@lists.linux.dev>; Tue,  4 Jun 2024 13:15:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171750692284.9391.10756219329378195880.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 58723601ab5d00b81c92f8f6185deaf281a992e958ccb88ec5bd56b1d947965c
Date: Tue, 04 Jun 2024 13:15:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717506922
