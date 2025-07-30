Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B6B178F4E
	for <ddprobe@lists.linux.dev>; Wed, 30 Jul 2025 19:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753902594; cv=none; b=MZOqTN6Z5PJWeDRpjmqgelvAM0sFCU8icXkHuKdJf/THS/N1546f0COhwAqrgvbKPXfWIsr0hDDf3NGIwYc93z9KxV7v9BngMPtn6FSmRpMqsRY6ZdWvyFt2VNNVUOnC/ClMsEAcLmRZUVEUatNt9YGBNKS0RlK47ZUdsENkHgA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753902594; c=relaxed/simple;
	bh=Db/0rhQKLwfHN8DamPBC/k6A/6w7quFeTzLUJ5VM/u0=;
	h=To:Subject:From:Message-Id:Date; b=CkHgA47Ucf2/g0zzhK1HnOM5HJZjNmspzjYEEmlu7HINV5qJQkALuXN4K84LRhWL0wpqqxbtrB7u489DGVx3k+0LayaM3QMme7s8HvN57PPRLBoBWWRnb2+7ZnY+UE6bZYWWeCQRnyETZqrZWj/bdoxDAYhjkbUkplZzj3MEt5k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LI1F9c4I; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LI1F9c4I"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A278BC4CEE3
	for <ddprobe@lists.linux.dev>; Wed, 30 Jul 2025 19:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753902593;
	bh=Db/0rhQKLwfHN8DamPBC/k6A/6w7quFeTzLUJ5VM/u0=;
	h=To:Subject:From:Date:From;
	b=LI1F9c4Ixb/2Cfjl7jFSP/84uZTYoaTQk/wG3tFaTigaEoR34xskp788WTu1SNKg+
	 sfnUKiNxDKEDuSI4AAYr8Jb8onJGmjkTNVe9p6uxhzS3p03lQBTpmF/0wwhls27fK+
	 WfBriT4i61xFa4dhOgmoWIMvXg/qpt21rc9ecbJ2jP9iVr+JQ/Nq6H/L6wKq5y88zd
	 d8Ni6Tar0dagIG2IktFaZ7rjSoZC6LAnuiB/vRiPYAnN4Dr/38B1lQJyUoKHO+yA3g
	 VjV96dSxwTyVui04+8pO7u6tHippDXNvEMzx9ZwVztvj8/FuKp7XvwnCaBIMDrsOj5
	 G3qUn0IEpYxwg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FEDFC83F26
	for <ddprobe@lists.linux.dev>; Wed, 30 Jul 2025 19:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175390259358.4388.5839357680931344352.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9bc5f476de272eb6bc8d752149509ace192307c0624908228ba54b510c6aa053
Date: Wed, 30 Jul 2025 19:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753902593
