Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1951B1F0995
	for <ddprobe@lists.linux.dev>; Fri,  4 Jul 2025 04:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751605194; cv=none; b=KiKWUiMonBtMuGxeJ5OCulztUjAFehsMbo7+329snkVohh1I/99UnGOaISciO6kUyQBnDro6ziXlo4Kt4m4RiWkhqxpRumw2CW0zxD4/D9qEl0dJWojmNv5c3fN+kTRpg7pM67j5j16fhsvnbOcAsrOOBAfzeHyU/Gr7ooMkBd0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751605194; c=relaxed/simple;
	bh=1p0aaCLW+XDUEL+Ln181JwbPWoF09Bi3EWOGveZterE=;
	h=To:Subject:From:Message-Id:Date; b=lrpKGD0l6ZYwir+8c9pLgCxwrCNF4gj1/HUVCMfhb4okoprIsIxSkAp2jFf4ufa0t+VYMBY1amnNy8g40d1/cTpIyAOygFw5yWJLxuNeerQSJpFkgBR1SUUMad/TxMME8CBJt6OSIFnlh3w31GSvGkRQSEA+NklSaOUXeELMkJw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lz1v9QzR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lz1v9QzR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FAFCC4CEE3
	for <ddprobe@lists.linux.dev>; Fri,  4 Jul 2025 04:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751605193;
	bh=1p0aaCLW+XDUEL+Ln181JwbPWoF09Bi3EWOGveZterE=;
	h=To:Subject:From:Date:From;
	b=lz1v9QzRqhOia3/jvDmV44XzY9PjWGpx1DecQqOLYIjgnyMKmwstSTfKj2dCAgiyz
	 HKrlt77ttVPwsGMb398x6ao7IUVEGcwwfE9MnzswHP5RaHthgPmH4aAnWTIKvvmsnQ
	 QA5AOqxYTV4wFZqXW1CfUTB7qV2BOfOyTpzVQoUFp1ppaVhjsE/Mop3qcgCAAVx/To
	 UGWYtZ6tyySxvj0jQLYNudnWaTDgg/ayQ1yXMJI59vs3EU8n17oRYkLixUp71Xpu2H
	 xzWcQ/jH9xP4q9pEUdMyDBVgiJlq9TOCWTE8f/LY3b5qKiNeyL4/76R5ZX14pkpVSo
	 sHKDruKD9kp/w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 916FEC8303D
	for <ddprobe@lists.linux.dev>; Fri,  4 Jul 2025 04:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175160519357.8031.16212310762008271011.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9022c0251bb2717a149919c1d3119888e807e2f5040b3c5a43e8a0f64e2c3571
Date: Fri, 04 Jul 2025 04:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751605193
