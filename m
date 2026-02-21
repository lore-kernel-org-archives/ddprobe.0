Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 13BDC274FE8
	for <ddprobe@lists.linux.dev>; Sat, 21 Feb 2026 17:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771694694; cv=none; b=gnYH9VlI5QuYZG80PthEq617ozREKYMXiisp/b8FH561g51o/ZMMwE7xviAo5n+fE0lnTnR54O7qlgIapBjMvVJHI25KB64Yd7s4pF0Ufpm7zSASM4prG9E2Z5swoxcb7QJDR3OpRcVsGEy/J6DaLFMWefHKucegAvfDYq9Q9ok=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771694694; c=relaxed/simple;
	bh=dYraq/Txf1sGjpdcmaTXfbrgG8hcLPBo0NEth5DLfoY=;
	h=To:Subject:From:Message-Id:Date; b=gvLqVJUS5ATIVwlH9EPYHNhBj0Rudan+U9ADhPHprvOUgNLr655OGlSy64ZgPTtNjWVmgbSk/LyxAWLFOgcs9gbWDBJ6IOpWKaj1cC63WxdL4hfhLt64Y4SbwaGo+MXk8zIDlO299D34MeTE7zJ3dAWYqOgE0z5maPFDmi3A83o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AdKmcHAf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AdKmcHAf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA623C4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 21 Feb 2026 17:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771694693;
	bh=dYraq/Txf1sGjpdcmaTXfbrgG8hcLPBo0NEth5DLfoY=;
	h=To:Subject:From:Date:From;
	b=AdKmcHAf3EL2GhjtZm11eitaNewtyJ/Pu+67pt1Ztk8+4BjlkD5+w23fSZDGG2z9v
	 8iZL1O/yhCTC88F9OEE4wQoOV0cCXvTQrKzDfIbRfDz0xZ3ah1AUuDdVBBv0Jn45es
	 AHICU9+xU7HFTvcS3lKBrW+HQqsShj7CcPjWovdsWYAXbIOI0i9ZRXxXwdJzEYRvCD
	 zpAIGx1b+d1in1IXCq4ZUeohjoDqZuypdFz6fEtiL6jymUILJs+a1+l0fYPk7it4T6
	 pGezdS76gbI5ElArijiKdrHGHF/158IMjm2L0ycvx55+la9U5PTEbrD+IpGvgIPTk1
	 u+0CI73zGSKcQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99D74C61DFC
	for <ddprobe@lists.linux.dev>; Sat, 21 Feb 2026 17:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177169469358.8976.14205828176518016152.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 12035f3c579ef6dc9b0f16ebeacc57e4fbb16f62b0238d9b7e05717704a8f73e
Date: Sat, 21 Feb 2026 17:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771694693
