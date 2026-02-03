Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F3F4329378
	for <ddprobe@lists.linux.dev>; Tue,  3 Feb 2026 22:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770156834; cv=none; b=dBOvbmit3Wrp5TclkNq3Yc/UoUOTNnhWFFJ/fJ5sBzcWGLNS6G+6InDIpx+3wVBTHviJGNlzCciazDQWOe6VzTQK5So2dFmp5GKnPUwstRDbat6z4VAg8cgs9fmK0yqgtlcPMTGuVvgjacgEFgU4lYYrzCd2SJx9NEvoeSnrZMs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770156834; c=relaxed/simple;
	bh=Nr3AAqWZtB5Jpvq5AE7085jnvZtjpJe0CETJi6ryndQ=;
	h=To:Subject:From:Message-Id:Date; b=Wo/3XAR+QgPSVYskzRB24CwNZUr/JZujOCNba9b6V59ry0Yqts2bJGIreUCefsms8ki68X0EjDo8zhyDAzfrEqphW/YfqWG+SlyK8csQOGxMBEGtUP4t/CbFq0pDSmb1GvhhUgsFaMY155PMXkQS+jO3JKiTEBhGzVD4FlNAlGA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ONRqCTzz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ONRqCTzz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C2A81C116D0
	for <ddprobe@lists.linux.dev>; Tue,  3 Feb 2026 22:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770156833;
	bh=Nr3AAqWZtB5Jpvq5AE7085jnvZtjpJe0CETJi6ryndQ=;
	h=To:Subject:From:Date:From;
	b=ONRqCTzzV2oHU1xHPCBmbk5kjn6JIRzAg4armqAwMEVQxWONgT/qCbRWW47RDIX2B
	 XHWekGdE5ejKcbxhJ4AtrrSHZULWnSLdCuIaFD3FoeHYKEcNlV+6usG+xxN87A4Qqo
	 HBCgYYXFUvcVmWkpqcc18JMO/TM12uNg/wbTxHNZsUouPWnnXs5wogTz7RuU2onmrG
	 7cGvxm8aMsr/P5fSOdU33Z9q20JIvIe+9JUEgejS5IlxKX+4JsysCnAVz4dB7hLr95
	 +b7cAxCRauxmljd2eA6jpGwWiYSSEWvSiYI7qCgTSKIMGIrDP6xuKh+fMAKXJpNWPP
	 cxsT9QDss/0Mg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A66D0E8B36D
	for <ddprobe@lists.linux.dev>; Tue,  3 Feb 2026 22:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177015683366.740.12025879250217219529.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c82c3b0d85200f9879a02a9cb63ade33ecb8b569bb4aa5b687bd783474dde139
Date: Tue, 03 Feb 2026 22:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770156833
