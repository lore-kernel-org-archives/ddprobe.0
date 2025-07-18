Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4013A2D613
	for <ddprobe@lists.linux.dev>; Fri, 18 Jul 2025 03:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752810594; cv=none; b=BBJfzzpJb6eMMipAyhE/mcrs4xhENf9IMV3qrn0UtV5OumfwWWqzSfCzo7Mr7frUTpzsYWNFmVfuiNLkh/RWLBsjQcgKJSJfENuzo7iBKBFfSk8vynWYR14ADY3iH8yMA7fa+jIY9kYG74aI1rdD1X4ui1xnAQrvnsw5D82JU1k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752810594; c=relaxed/simple;
	bh=+ctVe7QDB3dxntixo8Fywo1RCEG6lyIxBs8UdjXeVlg=;
	h=To:Subject:From:Message-Id:Date; b=Ptdr9X1dNUttYyl9QPI1cZRrgYpg5DOiR5+8StT+bjndIdQCuMDXZMeMY5l1lAElrDWDnOVqQWAPrhwB0FNvf72CRv+Ei8JWfyQ/TFtpP5rdR0bMaecWrx50Zl8Hiq8u4uHB8srvBRF1P2mBFKt8X6ox8yzMGesv9cUL5ILx5HE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Fd7/63U7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Fd7/63U7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3136C4CEED
	for <ddprobe@lists.linux.dev>; Fri, 18 Jul 2025 03:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752810593;
	bh=+ctVe7QDB3dxntixo8Fywo1RCEG6lyIxBs8UdjXeVlg=;
	h=To:Subject:From:Date:From;
	b=Fd7/63U7ltc429fiCYxZtPy+P9zVNeldv4RvsEOach+kUs4tU3Ae6u5vAhoBNybiJ
	 eac4Vvkv+C/FyCmQskIyo8DkUbi43QVdw6aEIY2AVfqjs0Gbe9saDnr31eCHXahOpG
	 KdVpnAtLzCNxjYek3MLnzu/MDUwKw+CG5OZJiDP7xnaR13akgoS5HA63YF4vS9t5C/
	 0QtXczalNMH6frqJ8EQjuNPBGrKxp+VcYnymaNBtEnIkTYZXcQfBEqTt4c7PSTiI5p
	 0BIwb305LlgfLKaZ7A3CjV9KaRwaf9T78LzXEW3iB9UEA7/FdY5A2m+8KfWHnGeLCe
	 uf6v8arWNKKog==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F678C83F1A
	for <ddprobe@lists.linux.dev>; Fri, 18 Jul 2025 03:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175281059357.21599.2641617010699872443.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 29df100f4b22ee8dd61e2f28ec97dadcec6257ff8db70a600d1f07cedcb01788
Date: Fri, 18 Jul 2025 03:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752810593
