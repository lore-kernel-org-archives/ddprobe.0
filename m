Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17218215034
	for <ddprobe@lists.linux.dev>; Fri, 11 Oct 2024 10:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728643554; cv=none; b=Hv3jlZAM8I6ZQ2QC/5XGOOkHHKMyN0qcu4XDrtoIREFZXu/OLouhfdpdKxqz3ifqySXOgN06layvJwiFGcpmzaTmL1L4UuKkpohCiuHP9kSeBzDAGu9UF/VvRHw1hJgK1sm78N7VBukJ1LKlyIN/Yie8ED5o2KkMF6FqZxrmr8Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728643554; c=relaxed/simple;
	bh=8qU1YUIHpIvuwyLAw1CpcX29Ff8MdjM50D5hIFnSwj4=;
	h=To:Subject:From:Message-Id:Date; b=KAb9P+6oOiDWp+A+j6oC0NfYyYGoPrZQDFCN1I8841rA4Ypoln/MwlIK3vLeeu6PFe/Ckab8ZZnbg/N8TB7FUVv2debCYdEnwwP+ucH3V4+9jo4aiaOlbE2dz4mS7xh8gR5Bx4TKD2z25Tp2OXJsz5WnexwCSWKkNNWYjpzHMjk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fRRZESzv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fRRZESzv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A006CC4CEC3
	for <ddprobe@lists.linux.dev>; Fri, 11 Oct 2024 10:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728643553;
	bh=8qU1YUIHpIvuwyLAw1CpcX29Ff8MdjM50D5hIFnSwj4=;
	h=To:Subject:From:Date:From;
	b=fRRZESzvXbs4x1+dSJH3sTMYTIXvy+0xYd+sYyxmDECjPpO7Y9QkIOpMtxYbwBfG7
	 +a67W3ZScbAJoUNuJNVmkDOEuxQV9hIZWZnAqo5/emW7z63WH7tiuO67Ny2XiP5lUR
	 i2TadJaN3HZccd9Y5RNq7iJwi+UwlOl4pRoStzRMWf1QBSDS50rGhV1JGW3FIWSeMP
	 bHWolWcK5LYvE/2CCAo3lUq05UTciw0W91idN7XQzfYLKWEmirFIDMPpTq9kcLv4vl
	 Rpdd5qdrHbfikhtZZu+PgQnRwP9hkIhn8zCUmc4a76lACa8kDa/GFS/RiOV1eKm3Wa
	 sWOZIOd6XOFyA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91349CFD31D
	for <ddprobe@lists.linux.dev>; Fri, 11 Oct 2024 10:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172864355358.12066.11985827641315794967.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c9d9703ed199ed4fa6927103097a45ae2485f3c009c39ca25059ca1c437adcd5
Date: Fri, 11 Oct 2024 10:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728643553
