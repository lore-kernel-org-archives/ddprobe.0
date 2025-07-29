Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46B52BA45
	for <ddprobe@lists.linux.dev>; Tue, 29 Jul 2025 20:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753820394; cv=none; b=U0cr9s5zru2hP4fhcLA2QGf2GedbA7Rl8hdajm+Xpcqhv1VLwXiHE1sIr1aT5DFBrVC79K2ANbN9nZDk0wuVAMGN82OlOKwIFKNipe+1vsl84vnPkBrF0qftzLVMHPZQsqf037VRUY4T37kZkJ804VsCHydl3w8oir/Fo4wtskI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753820394; c=relaxed/simple;
	bh=8qyfelRhmoAbCGVFedt8Jhk035gW21mQlLQskKxKhlk=;
	h=To:Subject:From:Message-Id:Date; b=bCgEQSAutRychAiVd04YBR3v2Pn3n1isDosXwol+KRXk0if6hqMv2L+wJbpw689jwK/4p91FdEZdhYRWj8udXNrGZnLbS4fvUP5GR7P/GsiAo0iBqveMaJK3mZN5VPsgQpI5ni9Mwr5TQ4tDtnf6gBkMrtvKfq4ukzyU/Kmshq0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VIBaDYuV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VIBaDYuV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC579C4CEEF
	for <ddprobe@lists.linux.dev>; Tue, 29 Jul 2025 20:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753820393;
	bh=8qyfelRhmoAbCGVFedt8Jhk035gW21mQlLQskKxKhlk=;
	h=To:Subject:From:Date:From;
	b=VIBaDYuVRIFfcgr3Y9FUUbcZ/TnmA0symgfPB426KcbauxV4uhKWG9uZEAN2vwH9y
	 gn7worWkOs56OHeNujQ4Ol2ymlVEW/q/4OlTISul+mbNwvCVl+WTSnSQhyp0JIWQpI
	 XzDfIPrFzCZApn1LjY4oVEcXo2/v73f3fxapezmjxKUqETHQ3Hut5OBp6zuLK3wbVp
	 FdBuzIo6wOCDtYN2JemPWcKNzDotGyQmjwrQF5xL3rI5MrRU+sc6jT6mWExAsJxIp2
	 HYJ8TQ3mnmqy8rvNXLqbI/pCEPra5N1nL2ZtiP2xMlAlQNAisVYj0mEy8NBLRRuNsI
	 PqLZ93yMn73NA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97F16C87FC9
	for <ddprobe@lists.linux.dev>; Tue, 29 Jul 2025 20:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175382039358.19595.1664846470491820382.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5021496fc3643d19144e4889ee8b7d84962c2da7c250d0d8e49cb07da896eca4
Date: Tue, 29 Jul 2025 20:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753820393
