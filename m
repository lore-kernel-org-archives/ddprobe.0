Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1183121CA13
	for <ddprobe@lists.linux.dev>; Mon,  2 Feb 2026 18:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770058434; cv=none; b=dR1l0esdpf/kbft2ZyFigPaKe0o7ARKhSDuuN2gg8snrj9jqYEVMCsiTCGE8S+WWZ9IN6mgR33X6EoLoy5mc83OlTCcKRJjCEKSXBLp9fR/GR0PZCM5XNoLUMvQ26UDo1MDXHGxJX94Xoah/+HvqhKNC/xOFA3MpdZlbM6C/JoA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770058434; c=relaxed/simple;
	bh=/hCv2ZVm2+NPezYV8Ixu7Q47DUQbsvxzsLxUlnJ8xQ8=;
	h=To:Subject:From:Message-Id:Date; b=VBg0VQwvQtbBO563+hMjKQWcyKudjSK7C93Bx/SovIeu0iWYCOkMVqNMi4Vtu+DDtk2qleohUtpN70AJ4VDv1jrlGXdsQHgVU5slAyaj6YUTP1Kx8b3xJud2oMefTmDjFzMyb5ZvEzUUxz81KQw8lgOvBw9yo417nyyAyRJ4j5c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=U1GWwxnI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="U1GWwxnI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B131BC19422
	for <ddprobe@lists.linux.dev>; Mon,  2 Feb 2026 18:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770058433;
	bh=/hCv2ZVm2+NPezYV8Ixu7Q47DUQbsvxzsLxUlnJ8xQ8=;
	h=To:Subject:From:Date:From;
	b=U1GWwxnIGWDjpTNjOQT9rMfJm62FUTxC4gyEuM/rUBBc+RPXwQpMF5EkXI53FTA8g
	 SZ7QhmYuA0FsbJIwxdspggNFP9wgaJzkgXrhMy+35xm5IKdu5xCYKJF9p+TrVTUtL1
	 UOa5Te7R287bxKRgP2E82kvuu96wIBPIqMk/LdLWb5Pmjkk9zZjSSGon9WfrsZZoR+
	 C2HOqGxf12y94/ShOIqZQbWCdPJdB8tgv+dsgVgO+2JWxYT+dyHQEe43s9Nn4VGky2
	 hyXm8uzb3N1jKtGYLGsoS3drQMv6YbJRHvUrupCAhy275n38jsE4hKYuTLacKLVWld
	 Lb7iwa/oyy8rQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F5FDE7DF0F
	for <ddprobe@lists.linux.dev>; Mon,  2 Feb 2026 18:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177005843363.27519.9354532629949132701.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e4280c4caec415b77ab54b8e5dc23883ba60e09fb53f123c3f5943c8ae49dc03
Date: Mon, 02 Feb 2026 18:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770058433
