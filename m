Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21BBB20966B
	for <ddprobe@lists.linux.dev>; Sat, 20 Sep 2025 15:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758381594; cv=none; b=J1lkyQXM5vXMNWQS4S2YykS1vounhqTnd036BQDnsPvYgzv8QHaFsGlEfCscWL5aGvryTPzrvOFEAJrhSGySD6IDOCPcyXCkWYU1t3mwrmGoBfszk1j3jZZJyqBkNqlrFWL5dB4P5wYVDE7LYkHsR9ScA9T/hJfSFSUu8jt1dxE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758381594; c=relaxed/simple;
	bh=PktIBke+t6s8zPJLQ1XqbYC9EsN5BhiiTjdyijoqOPU=;
	h=To:Subject:From:Message-Id:Date; b=E0gAULOF5nKD/DAW/nIqK+i+EsNC3144UPoog3nsJ/dFtUu5eNQsFe8CR4bxq6HsMn9b8USLVlOoS5/rrkRNuDinp9c/AoV3XBvQBV+4dZ7IXzw54bzPYzsolLpXl/kt+I/4HJUjnEiR/O7ExmNe5dBcuoPgXAjUfk7gMi8ipmo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tOAIlulK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tOAIlulK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAC01C4CEEB
	for <ddprobe@lists.linux.dev>; Sat, 20 Sep 2025 15:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758381593;
	bh=PktIBke+t6s8zPJLQ1XqbYC9EsN5BhiiTjdyijoqOPU=;
	h=To:Subject:From:Date:From;
	b=tOAIlulKs4G/MztNY7iPGKTKralTTcP+o6mdmaBbM/AYGvbpLK/kMkk/9oH5ouf+O
	 39omH5QK8oS3UnhaxwtIpZDPAGXzKtWBhs3gLbCCVEStmru0gqsKJiaGFTZvIQI/+/
	 eNikq24Y9LlHOE+sc6pxFZuaQOahzMJADmvfYrmAgaSNZu8y5GlWhBIbsXVjYVaV1D
	 NOcBSDYOKzxu7zvbwFvEaGE9dqVQlJcYHqtKfNkODJt0tBjwn85BinR9e/tEzYcTN+
	 2FPIu2DS0r1qB38WwdG6gsn136FI7QpTkPAKD0n2MYElOiHTaNSSjLARONwIt7KmZr
	 oO0lTlSKc8qnw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93320CAC5A7
	for <ddprobe@lists.linux.dev>; Sat, 20 Sep 2025 15:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175838159358.2804.13725346516039089103.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cb6ec1c8bc15e5ef6822794fe8ed3f6b8458242a612a670fe710f9bebcf6b31d
Date: Sat, 20 Sep 2025 15:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758381593
