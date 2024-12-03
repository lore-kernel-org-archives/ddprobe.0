Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 310A215E8B
	for <ddprobe@lists.linux.dev>; Tue,  3 Dec 2024 01:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733189754; cv=none; b=AZBpa3+IHDNbknGrSp6Q1ew5u4RDu5N6ADt3mZS6Bug6IqGhAjNwThocrD1Np2tF2agZ6mgXGIRam4hnhRPFWebIstmAoeUsCUHL23qwk1tfyycdHG0ls6rqN4mWA3TPj64ybOKVDV71hEH9bZoqtxc28pUGHbeczlrDrtrULFw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733189754; c=relaxed/simple;
	bh=I+Wz7Omv7ROr3WFZiCqJSG8shgIIxBeXZ3VMXzdd6uc=;
	h=To:Subject:From:Message-Id:Date; b=gw9gbZJJRHeSGcQrzYnukZ1rasnCfZF4X9JfBPO0iZNZkklRerXHQUfPydETSn92poBSVaTI8VjLH+bh7YTHIISUSMzeRhkGQy3TBCXo4DnWHYSJfnra1ePKT7Non+WvFbBNLvRcWf+2pZhmzTq4U8szJCC8DtSHcwaRXKqHRy4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eroQICqu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eroQICqu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AFFFBC4CED2
	for <ddprobe@lists.linux.dev>; Tue,  3 Dec 2024 01:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733189753;
	bh=I+Wz7Omv7ROr3WFZiCqJSG8shgIIxBeXZ3VMXzdd6uc=;
	h=To:Subject:From:Date:From;
	b=eroQICqu1YRiAHbAyeSR7/8UkflW0lnyCPVVc2Zmk+PvKofz401txEDnIefcPT/Ne
	 coYQ+KoyU5H4jaydAQFlvMDjWeQxdES8LYbphvg4ih4a6uX8+h2KsYY1hD8pvQjH8t
	 xqUFHbYeGqQL8oQme/+LnWA2GEEIBgd2LxJLJjq3WVF8l9fZjQHac4WsVtO9YBwkGs
	 gsIfsG+3b38/mxSx/IruOx5yNcSL+ueI0O/Sl15pYuvomJHDykCznv1eexDmPhBSkD
	 mCTttn4h3JtbKjgesABonsE+KQV3B3wECoWFa0GF6+q0EyoZCjP+wZHuLTDlNAp1li
	 qPOQQKYQYJpWA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D42BE6C5E3
	for <ddprobe@lists.linux.dev>; Tue,  3 Dec 2024 01:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173318975363.6467.8522633757307986483.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: abdd8b24e4311fb609cfd7c78cf9ae101b13b27c5add947b223407ee395dea0c
Date: Tue, 03 Dec 2024 01:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733189753
