Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E57078C9C
	for <ddprobe@lists.linux.dev>; Sat, 22 Nov 2025 05:21:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763788914; cv=none; b=WNA5ju6m7z4Fefx5NzXa9EqqyD7PjdG2cFfysvxuXnTG5ELZTio1LWuj1yf3/a1O4Pw+C3Uhhce1b8sQlYwcjj7ucGGOcTppB66H4hbmHJbYv809ApCM+3NBsfF6w1nRCHEEXN8TPK/xgjGkcy0Trtoj47HoVaNDbH/+6IpEMdo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763788914; c=relaxed/simple;
	bh=6KfkL26RyTZ0BfPtDBKTikpDtjBWKkMnViTu7u+dOw0=;
	h=To:Subject:From:Message-Id:Date; b=DSv2htnw+MR4Lo3DDoBx5p1xSL24+HBhtmUL9SXAw5z5OpoW5YUzdrL1X8a2ko4C1nOlOoY2uoPbpxh0Qft6C1vA66bMBzpddNb6IzHLtFmF7Qlr2kNnMbVs/IF55Vk6Apbyj3dvypMK5YCRSK6/n2yieV1xzPe8UAHxSFbtZAM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XgfeFeaD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XgfeFeaD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A84AFC4CEF5
	for <ddprobe@lists.linux.dev>; Sat, 22 Nov 2025 05:21:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763788913;
	bh=6KfkL26RyTZ0BfPtDBKTikpDtjBWKkMnViTu7u+dOw0=;
	h=To:Subject:From:Date:From;
	b=XgfeFeaDTKHvCBtENuuyftORYx0H2aR8RA8aGvWVPsCPnW2PxDRZLuStLBwxoBPVZ
	 wYH8yXn8gEWvDptvWG7f0BniF1CMyXIHZAk7G8B7ZeaH16Plc+b862gQV8zKh+L7q0
	 jXXWjm8MjuCKJUQiqnyQmpcSZ6Hs6mzZ6EbTiFZbyk7w8J19v/GNEYjChCSHktxyAw
	 iLXmd4vMH+UykQF/k8jkG9fDYLKY38Cm3Z12nrTHRJ+4weR7eMyNW0A41OZ3O+h0ht
	 KxOrZtPdHoACrqQqWXB9RMN7rSQPYoVC8Xcx0X2J4KxCYC4erP0lKlDU51shL7vo/L
	 aSwIif6PS81Mg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93B16CFC50C
	for <ddprobe@lists.linux.dev>; Sat, 22 Nov 2025 05:21:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176378891359.25333.11657462597057841018.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9feb046bd5d3ef7b15eecd365b16495bb81f3e1a0188be21daaede34c85eace0
Date: Sat, 22 Nov 2025 05:21:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763788913
