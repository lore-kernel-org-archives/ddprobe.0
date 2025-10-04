Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 519CD7081F
	for <ddprobe@lists.linux.dev>; Sat,  4 Oct 2025 04:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759552195; cv=none; b=mzXFA+QiQNQpoHZGuD4JX43Ip4R1+LV9SrfH324HoP/mWB3wRevlmrC1Pwk305z1p0z/+cPAwe9qx4MkIpkwxQjuePE4IbuvOq5fGu5HrzGo4nc6t3dUzfcQSNx3v/Py9mC14k4DpfHci8GLrcu/JqHsPA6lpik6S3GaPlEGHB0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759552195; c=relaxed/simple;
	bh=r0vYNVf+SAHi/9zQNrG5lBBY8RS8BVk06OTBco1MzjE=;
	h=To:Subject:From:Message-Id:Date; b=BvG1y+khECdjHEU4h7IifhbY0TPMskMkzBb4GHV13KsrFvNJ2vYxGgDEh5FRbltqx0RvIjPEfJNQEZmCCc+vqzIWXx3ia1mcFXcU6qgCOM1EeTsKcm80dw2vS14oW62i21P2+e2jKf6vr4qgO51qnU3OBj+lYuSEbY5SGaOseR8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BbWCJCp/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BbWCJCp/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AABF4C4CEF1
	for <ddprobe@lists.linux.dev>; Sat,  4 Oct 2025 04:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759552193;
	bh=r0vYNVf+SAHi/9zQNrG5lBBY8RS8BVk06OTBco1MzjE=;
	h=To:Subject:From:Date:From;
	b=BbWCJCp/d+QWGCPeQRvHGowU2A3inDQtGjpqCytJwM9OTO4YoMNPwgrtVQCOLQ+Ga
	 RLVpQWjv2UndOmZ4imZPlPVGqW1XLIwLlQASQsH8Il5wZRrKv9FRYxQBt49BN63abo
	 ist1v7LVM/WYtVxcNmX2cnsdyT8w8rsYPzU5LDb75X9L6sAySbt9XaJrw/4hI4Ee8t
	 3oWkS1EZEdTTaPG83moq1d7eHcocyeoTxvRV0qmbtUx86j3+27wSz6Kx13tW+EiF06
	 KdzK/HDGo6kWMd63TcBvxZclOiVw+5VQF+4SKMxOd+E6GHnxz6obx/2X1zM2vAmXfS
	 gRf1NAjBjPsiw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96CA0CAC5BB
	for <ddprobe@lists.linux.dev>; Sat,  4 Oct 2025 04:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175955219358.10360.14396439095376738547.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b2a29c839ce8f3f8cb6feb20fcb6744af515be3477520c059699c4c0060dfeef
Date: Sat, 04 Oct 2025 04:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759552193
