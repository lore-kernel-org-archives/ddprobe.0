Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A8171FBEB0
	for <ddprobe@lists.linux.dev>; Sat, 14 Jun 2025 23:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749944394; cv=none; b=ogUFx+o50+oev1aWR5uFh0vBt4a/m+lkWyf6faZneUiRKpf7qtg4RARHSKcU22FyvIErcAIF9Jz36aozpOW8YnmupZY/7SVUBPJTgptm77xtIHPEPpVCbxICjN3IzGYW7UOYIFEnCL11Za/oKQW8RV0SHNSZTj75ijmdZt8L0so=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749944394; c=relaxed/simple;
	bh=q/mhgfpb2og7kCX8FOxoYYpMiPSfvLqdR6ArlvQarmQ=;
	h=To:Subject:From:Message-Id:Date; b=Szc22pBQGmeYxVxYwSkcO1a6Z1Doy+9Sv/C4EGQhVzUMRSD7AwglroIpEcLzpTohklScH4rwMAIkJgFwJQ9XeM44k3CiS2SUDi3nFmDVl7oTWii155KJylj5RNvDxOuBpK/zH32pkdz3YxNefbDJUPUGhXQfGXigGBTA3Lbvwps=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bhtSjSU+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bhtSjSU+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B09D5C4CEEB
	for <ddprobe@lists.linux.dev>; Sat, 14 Jun 2025 23:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749944393;
	bh=q/mhgfpb2og7kCX8FOxoYYpMiPSfvLqdR6ArlvQarmQ=;
	h=To:Subject:From:Date:From;
	b=bhtSjSU+zCD2evkDdAq/OW7zYUM2N2/8+7liHPIMvYrFdNLFDBTMXtUet4dVdqMvh
	 qHsiAJvoIB8ZHwfmO7vT9+2sY2cJvwI5OkgaG4f/xA5Pn0zkwkNjstZO8fmTZKTI4O
	 LwRoSrtrl6PUtcLPNegCq4ZqyDs6VxIQLKoP3kVSr6TWHexZ41xb5qrbjCi7iCNKJJ
	 vaXynCsnwJj3b4g5DK+EHfnUYRLk6fb3ag+3WezdmK/x+UQiAxxgtb8QEoQuxKlw1F
	 okj7xmGwDdFhofxecshBHHMKcPq83FOuU5zbDRyivWAaYUcGUFtfJD0Bsy0nXzIdfq
	 p0oIdVU59hWFg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9985CC71135
	for <ddprobe@lists.linux.dev>; Sat, 14 Jun 2025 23:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174994439360.24634.5034410670945676580.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3d31f05e9cf4bf7db4eba36a31d629ea03cd417cca166a5460e6a96830e20b28
Date: Sat, 14 Jun 2025 23:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749944393
