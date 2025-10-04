Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A38818EB0
	for <ddprobe@lists.linux.dev>; Sat,  4 Oct 2025 02:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759544394; cv=none; b=ji/4NwLWwMSeVT3WQH7MLCW0OdNo+Dfr8OaUcz2Qr2iwKFDjz00IIeVwPH2WodcOsWQf7RrSOnE787MaXE5gBBycarwBoLAxhiE5UIb3njYzQ0pb34KZldt+VBLC6vhOB45xnCiDJ+JSh9m4pIo5qRjw+qrSRYCuNXRYZeGPPsI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759544394; c=relaxed/simple;
	bh=gC/GXouE2qqqb/VNnVZVO+8s/RGWW8dEcv+jdnfyafY=;
	h=To:Subject:From:Message-Id:Date; b=hi1YcUA+wHEPsbih1VoeuTaRo/a6WawSl+LTgzb9b7pTxFqEwXrJMch2zlSNKBAdmOntdAUd2RRWcSL0yAF8q96ioIMuAyH4qfRomUnaCNxeEH3URCtuJrElr03iG8xpguedUvHkni3+nzTAdMxHy+3ZJIROBJGNfO4ARUznhp8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=q46YwTmh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="q46YwTmh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5F97C4CEF5
	for <ddprobe@lists.linux.dev>; Sat,  4 Oct 2025 02:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759544393;
	bh=gC/GXouE2qqqb/VNnVZVO+8s/RGWW8dEcv+jdnfyafY=;
	h=To:Subject:From:Date:From;
	b=q46YwTmhA4zIC4j7lglztdU5xKlbxoTlIcIN2fTJCMNryhnUkX+6DdjyBBmGBCy0k
	 n30AKwPh3dKrV/NFl0afwysqp7CAEuMfrP+TcIVrGjCo+7AWUvS9CwItgHL3pxX4S2
	 S9CI5FVvaLLnQmpLU+MSFjqah7sDdr3a03XpLNwXvfSdO1DObwMB5uRYofafMA5AP8
	 2RiuXWZc6mKxXrieLjaEdtFJw7SyJVWweMduob268GfG34XbqerL/YspseVwekYAgH
	 xLjn5yqiaMdsxWWzJOzavK4vNpMzF5zqqWZLVhzL7W03Cvfp8ksKP/QxsH7Fq5oX1p
	 r6ITp9rvqpjhg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9293FCAC5B0
	for <ddprobe@lists.linux.dev>; Sat,  4 Oct 2025 02:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175954439358.8579.4122778769487015534.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c65b662dace9180fee98fb7037767360c55b8259ca2aa18fc3c279c1a1ad696f
Date: Sat, 04 Oct 2025 02:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759544393
