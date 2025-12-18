Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5328D328B7F
	for <ddprobe@lists.linux.dev>; Thu, 18 Dec 2025 07:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766043234; cv=none; b=nJ7guxpT1l9L4atlLeBp2F8JWkISnFZThpUOinea+b79U5egcXZuntm5agJONO4TGLinyHyUYG+vE4VBeIdeBySwaXghHvB6SbkBpgvTwNsHPOCosBmLx3oOdvcc/IzL9A38ZoEdud5W/HYgS160w4bI3D25FG0aHmYp/7/NB58=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766043234; c=relaxed/simple;
	bh=Tu6h0xLjT/QCsFncNrpt+jillMbsaRlBrQR2pyX+6Ss=;
	h=To:Subject:From:Message-Id:Date; b=Sv/lq3IPenvBADE5HEo8vajeQfwPNxYwMQ/yCELQ2YgSykGZBYfEYFWNncj890sYnhAvjilSybr5xGaLrohu1dEL0c8c0DU6gboEpfzwP2zJuWpAGq/0VOOvRpgojGBd2dFffPSRbAVC6cMCw64h6yjnsTpwVr1FBpg6IcO805w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GhHG0Ud6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GhHG0Ud6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6569C4CEFB
	for <ddprobe@lists.linux.dev>; Thu, 18 Dec 2025 07:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766043233;
	bh=Tu6h0xLjT/QCsFncNrpt+jillMbsaRlBrQR2pyX+6Ss=;
	h=To:Subject:From:Date:From;
	b=GhHG0Ud6K7GLGjNRajv9Ptis0W5Kjnvv7oqoLZdWH564Ps0sB/1IuaW3fSLkBZpr1
	 RosJ8Vr3Yq1FPhPDySmJYPLfL1tZAQkpuS/SPP0BEks5y4XxH59utsz6xTLY07uhZV
	 keOZKyFzT7XonZhO64mwbwEFwLTo8AWuvJj7+wAzNFGXneyiEE/aRHUFjB0QsSgbp4
	 cF0i4ytPaVdaD/8PCv8T0qBYgcQZakTnuNGCRwdv1Xh/UN65y9hiys5aQGEmZuIHwB
	 bKqSz2KPaUku4dR4493U76svCcqZ4HfKTw03MHYL0cYQAAn6g7pPAIZuzxUYGBQUVV
	 jE9C7vGE28jsQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91974D68BE8
	for <ddprobe@lists.linux.dev>; Thu, 18 Dec 2025 07:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176604323358.5513.10644638502625513739.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9dc89a9ad9a0d5c34e1b0aadcd604ae60750142cb895678707656232f54a895a
Date: Thu, 18 Dec 2025 07:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766043233
