Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 71F4F8F66
	for <ddprobe@lists.linux.dev>; Sat, 25 May 2024 10:04:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716631463; cv=none; b=R5Q+pr53wPU177QSs3aVcv8162gJ1Su5S1pHTFY7cIgDU72DjGGuwhDKG6EzzFS0QG8Sf4ZpU2937VzOBeg5UeIIqztkcFG9RnEeVTMZtCh5clyIHuxsrPhDqrVFpigEt0u1vFE9Buvhr2BSzWjnqzOYGsM+PuOs8o2fRJxuCec=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716631463; c=relaxed/simple;
	bh=OXZXVDhkvi+PGCNBf+wh0vWb2UUTl9qmbqf8oR31EwA=;
	h=To:Subject:From:Message-Id:Date; b=RnByeoPGYxITHpLeIAyfquIbKbFx5LJURZQAhNSwLwZ+MtWxFi6guTpqXzSV5qkFlKvIBm74aPimI4Dkior9u7jV3Ha6LKu7h0EQOLfsDiP4shHZEmCJlQjP0mQc9dJ675iQLp4XZIYaHpq11sGBVj2szIoTkr/h778R72+nGSc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WdWPb8l6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WdWPb8l6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id F214CC2BD11
	for <ddprobe@lists.linux.dev>; Sat, 25 May 2024 10:04:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716631463;
	bh=OXZXVDhkvi+PGCNBf+wh0vWb2UUTl9qmbqf8oR31EwA=;
	h=To:Subject:From:Date:From;
	b=WdWPb8l6llB+qgEGbpa5mnvs0IUZgwhikeDGta5b/CY1rmyX9tou5LYuPxQ388lmu
	 D7Dv+DQrqECDCHmx2yGKfOG7NKyG5uR/dHB9+tlb5hLExWjPUxfNmf4XF8CL5zr8+y
	 4vh9mtuwEzTMSBzWt2sNa/WAGi2eG2++cNYFNA/RtDS0zh/69GzlVaHpPSHFx5R9Au
	 66u4fZ9lIV4T0oDiVs/44RafQI5vOFYbLG8sKSSnkJqfa8XM9rsNwBYWdphSc5hfzp
	 quJcCt8svLJxd1HTeTVVO4YlblphmVVn5DmLL+3PxU5fDF2GsRL4wxia/tCoP8gVKy
	 6poOuvVAaeeLA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DB0B9C25B78
	for <ddprobe@lists.linux.dev>; Sat, 25 May 2024 10:04:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171663146285.27603.4820969388224759400.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f3552eb2d88758316778af87abc9be9d1b9a5c00cffbc6bed699d2fad83cdf10
Date: Sat, 25 May 2024 10:04:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716631462
