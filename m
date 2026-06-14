Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4948C76026
	for <ddprobe@lists.linux.dev>; Sun, 14 Jun 2026 00:56:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781398594; cv=none; b=JnZ/l/r+tyq6VRPC8TWrGIk1Ui2qDzfwYWpLjoTWEXMvB50Id3SUjIKmnaSlBYGULGDh9d4uFoWo5yWMgP9jDrv7Fm7HcOn0b9inJmKWuxWX9fnD1T881tjk06PJwhIFUGilSc55nrV6a5y7kYWo56McH7zFCPPDIksGNCoVVyM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781398594; c=relaxed/simple;
	bh=8YWyDb7DQOuqbRrsJ92Swk4iYoH1w2UqyG1AQQV/Mz4=;
	h=To:Subject:From:Message-Id:Date; b=SJHanGrMumB5ihtp2QeawVOs81CmHk/BWYCoq6NJmKzDrkRXB9wVndDlfMb2uL4vE9uCC4OGntBQq6RZZ5pNqyUmVOtRmSRvoe5RtakfwmssvwpR5HpXbgZ5p9gfJ5cqSdG1GupEQl5zvKu2q1w7qMwYDeJYmYsaVo+W1lAVMqw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DGYEKCQQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DGYEKCQQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB64DC19425
	for <ddprobe@lists.linux.dev>; Sun, 14 Jun 2026 00:56:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781398593;
	bh=8YWyDb7DQOuqbRrsJ92Swk4iYoH1w2UqyG1AQQV/Mz4=;
	h=To:Subject:From:Date:From;
	b=DGYEKCQQcAr+/t54y9RTPCxVkZNJ7UWqIvPcykmO4PVF4rJ6SZ3I+ZXYa8slGyVeA
	 uulHxxl0np6tKf9KUxAkctbNR7pc7m+SPlHvsxjkDajHBTAmEPis1MqeIOB1Wv/LU6
	 u7BHJSba0ftacDzpRjKZLKBkRS80J73yhFm9ODG9jvFpt0Abpa8TYCgL+cpOTTJ5wa
	 WcBNEfDDCCnXF0d7L2N0o5YIX0QxTGMMtKcZXV6A7HqcRYRiPSr+QmA0HCnnG4QCwT
	 5C9x0zBNVoXM2QCSCKLAag3MdsMF5qcu1To/SeVSx4ka2Bqk9zxOevPBkju/Qu7A4K
	 QWY/t8eyEh7Og==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF4E9CD8CA8
	for <ddprobe@lists.linux.dev>; Sun, 14 Jun 2026 00:56:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178139859368.30892.10219403496344799835.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6b3a8aeec52e3843a25dad9e7c7da33c04290a43e43b46074b1e5c0a43f0376b
Date: Sun, 14 Jun 2026 00:56:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781398593
