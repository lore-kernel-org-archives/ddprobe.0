Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F290249F3
	for <ddprobe@lists.linux.dev>; Sun,  4 Feb 2024 17:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707067697; cv=none; b=bc6YlaZXmZrQoDWkxwhsO+nezDQaaK0dc5pPeohTB6xe7sNH9fmSr10Uw/u6klaeJwn16IeoKhqPLqR7QuvViR0KT/Fd1t6v1QRtNTo/375HPGLXKq5olnA/+TIWjjjtRIKV2bhUpwrvBjakhADx/V98UdePMbVkBbJBj7LEV5A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707067697; c=relaxed/simple;
	bh=wUTjArLzeREKZyxSZSfHA9v2RIYu26vflTDFRaNodSI=;
	h=To:Subject:From:Message-Id:Date; b=XxYVZqPDAp6TFoCtPe9M5KLACpnfPN8RK7pklixZgVBUBA/uMChtaURAgbimneNAiF85Iymco/plPvj9E3oG9YHtwW26qSVhlmao4LU78ivV9l10koF81V4nxwSbAc+0JLR2vxlJPcOOdRa3w/rdJNqKiwB2p1/k4+KPDXDXRT8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=X329gRUh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="X329gRUh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 88F5AC433C7
	for <ddprobe@lists.linux.dev>; Sun,  4 Feb 2024 17:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1707067696;
	bh=wUTjArLzeREKZyxSZSfHA9v2RIYu26vflTDFRaNodSI=;
	h=To:Subject:From:Date:From;
	b=X329gRUhBd/nScNyOCF4HnhsWPI8D7aqYPP77nNJkkd6IIonEndf4ScroeQIRZ/r7
	 /TU4W3veVc+QJv1i2DkaJzSo8nPILXOadJtR68yAQ20IISAFzWlBI7wojovuJLn2gC
	 YlYp6vFeZzTq7I/GyN6e4E6VdEyGLTcc2z11DJa1PnKqCEVnezRQOL31uYKn6clbQV
	 uZicOgA/q6g1CMffP5641KcE5rpBJ5J7E6bRXiddlGJZ0cpY1sI4ioSO1URZzAEeK1
	 SCts6GzFXeMT3aJBBhar/Hd+ojxcguSxbgp3xozOdBokLrSeEMJBJyxePaACIY5SB2
	 wmI1jvEGj3YLQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6A3F4C48286
	for <ddprobe@lists.linux.dev>; Sun,  4 Feb 2024 17:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170706769640.5128.7131343059389537536.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3451ecf857971877862564ecd0fb1c88c90f4872794923ec9c4942a6fc6f2812
Date: Sun, 04 Feb 2024 17:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1707067696
