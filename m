Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DDF3F8BEA
	for <ddprobe@lists.linux.dev>; Fri,  9 Aug 2024 00:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723164953; cv=none; b=ZLn4BYxWH2SDTLSmj40FPBq8fWer8Kk2Olk0vpg/gooDArl6rFLPNPmAvbbe1EwSQ2FBsLrw8bzQ6N0+8cfCbJFyN9s4hwgxza17Ivz6CYneWOJ6pzyCJx8f5Mey8XLYnTRTirYtgxHOyIg14dt920S+sH9u7rm/W75VJZ/ME6Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723164953; c=relaxed/simple;
	bh=mzsbCnkDvXkANbvkew1HgeVClaub3TcI0jBRaAowHGM=;
	h=To:Subject:From:Message-Id:Date; b=ozgWccA159rPzVNFs5GkRkwjhdVx/+nNC1K61zxqTb/ZurvFKq4loz1dzjjlG9BjEYrP+HNPWXmFrPUFEmSDqnkT8hWQA5iDV8jcLjvgRrG+u/kSrhrHoDOhxJ19qgk7N8vhcrgPp1RXAOFWTAtEGIuTpfDCz0eTNjqQ7vrducM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RjS6bvmE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RjS6bvmE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2187C32782
	for <ddprobe@lists.linux.dev>; Fri,  9 Aug 2024 00:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723164953;
	bh=mzsbCnkDvXkANbvkew1HgeVClaub3TcI0jBRaAowHGM=;
	h=To:Subject:From:Date:From;
	b=RjS6bvmEz48kH/A/8s7E6HQIX1DFtqOHgfFrw0XlO8cuu+M1dp4Fh7AirCrIkm5Ag
	 VDuWjiziXZ5/bz4pb8kuxbuhIMrJjxn8pG7//Vq5IsofX8f/GGbmnBCCm9BgSg/0eI
	 bKpdSX+TUdUOAVenHAp5vcrLmoFwLmClTv1F48xIKP1JkT5721fhIIaUG84ww9l3ab
	 d8P5E0k8TPcTcQkFv1X5Ktw2dE9j0jgOc9FwkeSfJq8sseArf8xRe7V1+5Ue/HAxBC
	 16M77IZRuiL6+Y2h65KSUeUKpumMqYY+rRi0RU5fsfW5/VEI/9G+9xbbjhbwydxkUM
	 lMzYoijaZRMlA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A0B1AC52D7B
	for <ddprobe@lists.linux.dev>; Fri,  9 Aug 2024 00:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172316495364.32380.11335079743833348419.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c96bc40aeff9edb96265c9c99398c4cac5761e442b2eac9bc5e9462f693e17c7
Date: Fri, 09 Aug 2024 00:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1723164953
