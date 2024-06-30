Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 661B4EBE
	for <ddprobe@lists.linux.dev>; Sun, 30 Jun 2024 03:04:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719716663; cv=none; b=Xx2WacuYaJkqRBZsp2Qm3GHPVPRujUIcXvWqvz0CMomQm71jFrlGW3M2R2etlSilcyy9Ysl4kb7mZD0jACTJn32hCsxlQeN5t+cvIlSlMqa4dy5yddt84reCAi8NFUhsdoixaNRhol94LJoTB6+0ytjo93WrwKjBSR/e1rIBP9w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719716663; c=relaxed/simple;
	bh=vZFluMVDXkSVl7p2iXxhqG9YOajM4fBt9POe8vn2jE0=;
	h=To:Subject:From:Message-Id:Date; b=s5XDiv/IKfjKbZU9P71E2fKBmyGn9N29QnxxfzQkjAU2+v0HxhBGBmDnOlrOUSXj2J51GfQhs4/rwQzzAO9scRplCc2xaS63sydYglCHCuZ+izlQ4YdV0nGZ5VYqRqPVzx/hVqod9PhJ0xMh6T9fOboGgfZwzoRqnm++4aJTnM0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=h8Xl8veW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="h8Xl8veW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E36A7C4AF0A
	for <ddprobe@lists.linux.dev>; Sun, 30 Jun 2024 03:04:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719716662;
	bh=vZFluMVDXkSVl7p2iXxhqG9YOajM4fBt9POe8vn2jE0=;
	h=To:Subject:From:Date:From;
	b=h8Xl8veWSfoZVO3GMgjT4OjbUzrfehJMkVk5P1AujM9v7FHXxZj0tH4CRg4KRf/XK
	 P4ANtgnadvKOXCpgGXUQJuJprt+47fEYIYN6sY5DQObNcvDRFFGSqoCLNxWhVlRG9n
	 lmbRgPfbmN0MnpfGjkCJBaA8n6oS2yhD6kbMNlcdwyDaM420Eq5nF8Uer1LYehyCib
	 6TwaYdgNWkwjK7CuDioL0n9WqBeQAJXq6vIzxWko83RgEgPpFtS8utlQGn0N1RFo3R
	 lggvx4XXzxN0oIPj5OKSydpU2+EHuBHJY1MOMDS1CgHmlP0ULF0ZsqGneBgY57TCOP
	 PfQweOCQ1esoA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C990AC27C4F
	for <ddprobe@lists.linux.dev>; Sun, 30 Jun 2024 03:04:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171971666281.31787.3127649513815179504.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 155196241d1f0b6d58ff1b61925c52b56c02951baffd35ad777a221096a7c43b
Date: Sun, 30 Jun 2024 03:04:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719716662
