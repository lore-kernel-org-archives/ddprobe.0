Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4714516CD0A
	for <ddprobe@lists.linux.dev>; Wed, 26 Jun 2024 09:13:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719393203; cv=none; b=Gfrp/uxz8qUdBz8a1lGP1pfk3OACr1O3zU0ThAVYZYcoAaC2rDeWOPHLs+BED2knrG3wGXs6JdlLqrh34TANDYctpoGQIavcdVKUJW7kDNpTv96RHAhiT5DuXZ2zznESIiIa0MShH0Ls39uUGhFj8ueGDLGzrEKEndyqwL+t8x4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719393203; c=relaxed/simple;
	bh=EgeyfZ+uVV6QclbTE/sFIk024Pc8D4wML31zbOORtz8=;
	h=To:Subject:From:Message-Id:Date; b=UGV2B17e4RD1fKntRA95evXdZfYS+QMDiuhKSvVIIqKSuh8OnV70pvkVfofhy9Xlu6eB1rRJGXFCH+sGtP86hbO2PjkwLR+U9P7R6vzm+nh8/6+Mo6WGCCBuk8TMx3qtPcN0IMIzXR3t7y4GKKCu+U6rviP1GJeu+0GrQX64oyA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Sp3iRt7w; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Sp3iRt7w"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DBE56C2BD10
	for <ddprobe@lists.linux.dev>; Wed, 26 Jun 2024 09:13:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719393202;
	bh=EgeyfZ+uVV6QclbTE/sFIk024Pc8D4wML31zbOORtz8=;
	h=To:Subject:From:Date:From;
	b=Sp3iRt7wHnoYPpNNhg0eqlZZMDeVZyJzGffxEhFOo5mLKIT/+uCbmuAWqE/024cWv
	 KBPQ7GuRpCBICUIIChfbsdJydnvHyd8naEp/wit0PF+rnIdn0AX8zhicD5U8tFKZMT
	 EGV1Twuwoe0ECa9YSH9qn97OSQqGDXEeYXT9z+TI7DALz7B8N2eXQ6zf+p5x/yQ0Zx
	 +Pet2tP+j+JBIy75PlXuCG5a9A2PfduUD36kZPOP94lI3Zev3V0QZtWeeAkEHlY3S2
	 oeGssvKS952/5FE4PQU3zNGaNDa2GWHfpKX1p+kcJQuZ0J8u97KhK1FvbxCX80esuY
	 28UiO6ZTfUBkA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C4EF3C27C4F
	for <ddprobe@lists.linux.dev>; Wed, 26 Jun 2024 09:13:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171939320279.13209.2284828849106055267.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 471dfa2acb56725ee9449e7a18f90480d9c6e678fd711c0f367da672fa093688
Date: Wed, 26 Jun 2024 09:13:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719393202
