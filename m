Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CA8261E1DE3
	for <ddprobe@lists.linux.dev>; Sat, 13 Sep 2025 18:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757787593; cv=none; b=qQhR/PR4O5dMEdCY4CZ+SXur/QaNEbCzt82UHJed8Bnmw2v1yAtCphJf9uFpufcPnNbzoVSzSALoKlemr19EMLy5AzmI07S5wyKbeepzmU2shR6mP7yDXmmxqA3NdQHT1wBef98D4RAQxxbOf9P0dXfUVssamHpg22hkVYJ7VFg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757787593; c=relaxed/simple;
	bh=/BjnkFgUcl/s2l/SbqZ7oRS/wf2h2L3TJms+KHTa/Zc=;
	h=To:Subject:From:Message-Id:Date; b=E86U9nNJAMOcMwnqnC09Aj6IsydjHJ538HzwMgznW0rt/TT3U1ZwHTc0ofyoF7345SZp9pEWUCgzMGSVne15VNYzrt+t58JGbE/IpToP7ZbeQXLtN1Tl2dtJv6Z4dXhi7+CBBTKXw6mBK81jgnQL2f9TczXIUU9HhvhAtu8IFgQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AIfSo3jp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AIfSo3jp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2FE5C4CEEB
	for <ddprobe@lists.linux.dev>; Sat, 13 Sep 2025 18:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757787593;
	bh=/BjnkFgUcl/s2l/SbqZ7oRS/wf2h2L3TJms+KHTa/Zc=;
	h=To:Subject:From:Date:From;
	b=AIfSo3jpsKA47/D2dWCKH+AK7djhgoTwoG4gKoB/5MexLyLK2kN3tbearBM4bJbfC
	 9AdQWxLxvYbWoo5q2pmGC+YTNbtrE0QntrnIt9cluVzV9jTsd2sM50T4y+Vhk30YFo
	 jPwjjm87mZgG9YPYxdyw01vXqo/3sSt2NNEq1LlWdPnSMgpJkuXA5045s5KeAaaNdA
	 wG/bqg/malI687fvFD3gIv99D8AtEZcgSPmDmQDzdkyJEpFWZZLx32/aOuvuZYRpwM
	 LctdzGMfnxW2N+rt9Q3GSAqJguY344F1QxMxc3nuoNSY4nEgWeijZHEJ4vbpwymKP8
	 e4zt2wqR5ra7Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 917BBCAC58E
	for <ddprobe@lists.linux.dev>; Sat, 13 Sep 2025 18:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175778759357.17792.6914640312286156975.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7e941e9556dbe6a2cdef44e7e21266a294c0c6823caea6355cc7491ea9e0848a
Date: Sat, 13 Sep 2025 18:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757787593
