Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 13195323D
	for <ddprobe@lists.linux.dev>; Sat, 17 Feb 2024 02:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708138697; cv=none; b=dpT7wxVFNSdEdk20TeyHCx6KThasN9OSe+cAxBaxg5EYC+cNlOaGxW8n7ue29GBDxnAD4Yv+ZxTlALZvjifZUoSrq5aljUH/+o5UNOPJ7CIVV8+cJ05MwTfZeze5qwkk5u1tDR3etPsQ++xXKcmjytFT9GdOU53VBto4YrzG3Xc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708138697; c=relaxed/simple;
	bh=yhRZ37vJpCtCsBq1aIQ52lP9MogcLAgS4/tQDykotvQ=;
	h=To:Subject:From:Message-Id:Date; b=in/mkJ29rDnDqx3kIYAktposKiWvUrIAcKSQNfBC3wGQoR9VrYQxo5/6y7oJr2AuHEJAJHywoyGb0hZRaj04OPA+vpTK+dpGQl+jxH0/pO5itDotWmyi4ARSGVVD9hGCtWK+9FxX2fE4+qlPxj3DLg9IO0nemSEu4waFAi4+2QE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EZSAYyMI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EZSAYyMI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7EDD4C433F1
	for <ddprobe@lists.linux.dev>; Sat, 17 Feb 2024 02:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1708138696;
	bh=yhRZ37vJpCtCsBq1aIQ52lP9MogcLAgS4/tQDykotvQ=;
	h=To:Subject:From:Date:From;
	b=EZSAYyMIyM9QDOAQ2w6JMfVyndXp/8NMrKCWF6eBgcmuftIkarU/B2CojuW/tHufN
	 IFBG8FFZ6L4hs4mxM62NFed7UQs2Gelp7RyGekOdzvV8FehEkjkh4gPmm67w0M+YeS
	 WQF7zotlysv7Y4Q9s33UJl6Fyiy0Tu32uXDAXM0stC+Hv9qXrX1lj5XM14lmoiQW5h
	 OYQDrvA541vAhklbI109cMZyquTlrx5wNPbfpd3oApCAnKTrLJYh2GIJKSFnRl91MC
	 +ZKT9bRS4H1VURnau9lRznNKUjugKEno2SWLTACi3ZKwoWY1By2BsLPGj3xiVdCrfF
	 tG9+lczChewuQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 612EBC48260
	for <ddprobe@lists.linux.dev>; Sat, 17 Feb 2024 02:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170813869637.17507.7401272995088029450.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b2baf8171ebe1f36ae239e36e35eb7755f625748c94871bb2d702c720b029b57
Date: Sat, 17 Feb 2024 02:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1708138696
