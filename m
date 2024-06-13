Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E4D614A0B8
	for <ddprobe@lists.linux.dev>; Thu, 13 Jun 2024 17:28:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718299703; cv=none; b=AE/zF69I2eLnKAoU0zBW67c8RJwgXmqz0aRX0Wid18IesXFVp0El9VURydMM5/svmhJrAU1qdVfKtG+UHMVKGtOwfO3+grCzNmAWVD9FBqDQrTKzFt91U3tjRbFjs7jk6RSPO3oQc3Ty24EnKRVcl/Tzf8ZJ6EH5AnR6L1zRIn8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718299703; c=relaxed/simple;
	bh=XgcVU/Tu70aR0lItjRu65XOJcgSv1jtSaqIXvgOH+xA=;
	h=To:Subject:From:Message-Id:Date; b=CCjOXXbr+qlZQV0GV8ggTK/H9AL4RfsewRrtfPRO8iIdamw5A0A3V5svHtt7ZJa/IH6ymndzaU8Aku5oZjQX/E5Ptimqi9Zg7fLM5+63BGQjXvy+2zw0afrzWtK/4bI1oPsAwl88aN1jLGKt3Uai2SvSyWluKds4gNY2+wIvcuc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jJ2cOAT8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jJ2cOAT8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 08673C2BBFC
	for <ddprobe@lists.linux.dev>; Thu, 13 Jun 2024 17:28:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718299703;
	bh=XgcVU/Tu70aR0lItjRu65XOJcgSv1jtSaqIXvgOH+xA=;
	h=To:Subject:From:Date:From;
	b=jJ2cOAT89fsVtAS62yxVW6MMkxJzPoN071fgIQfVJ7uW4uuB4PVhbZ8uqY9SM51Hm
	 bER5Bqb27VzUJWCspOQ/QkyYHjarJ3ITbnRTqjvuSIpFdx9i43rQ4c6ADwbK5OM3eh
	 /qZGCjGxgl0rOj6laHhlhriMxOMGT6kyKUdgRgj4K1Ie+pQbmGPITf9v6slVjSc5I+
	 dmdZFHmyRx0GYnNl5k5D6qs+/UZm+mEabENS5VE+rgizqAJl7t7QceYZdHJ2xO0XwO
	 NGJX0nJ7FjYcbpRfiy1T9e/dtzp7uuOyPKb0y5Bt9MuSBbuU8EDAQgbajUdqJe1F9P
	 /5gnYMw9UovUQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E4FF4C27C4F
	for <ddprobe@lists.linux.dev>; Thu, 13 Jun 2024 17:28:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171829970292.14155.8674789186338653930.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 84745014da95f71248b0f19e55ddc09184d9b7d3122027745b5a772c94aa0a66
Date: Thu, 13 Jun 2024 17:28:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718299702
