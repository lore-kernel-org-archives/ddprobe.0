Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3AB151E1DF6
	for <ddprobe@lists.linux.dev>; Sun, 18 May 2025 17:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747588794; cv=none; b=B1TuDpqCl+bQfu/YXEY8o95qNPhQdVSe1jyotl/Z8nVSox7P6XN6uyqPgILYIHZz9rYgH1+a7fMSQXIKosAKu48cXjhG47HtPCCEEXgKHswFZE2RiuhW/dbhfbpxklTsIuaefRjchjwFgvEYJAviGofDje15zwI7oeYGNsNLrlQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747588794; c=relaxed/simple;
	bh=tlmXMosw1K59nWz0+ipISTDHh00l1bHTMeq2qGBFVKI=;
	h=To:Subject:From:Message-Id:Date; b=Q9rXCcSvRbBT5dOfMugg7BBE5vzwMuS9Do7/zxAs1640ym+aFwrecOADb7Gp6IhEL8aDAglVHjeR/3acd3wLvP+s8yPNwjNVlEYjQbcWpvlyYHogsBk1NlA+syt5NZla7X1KPjg0GPy5MTHCAk7vQHoXM/B19GaLw/VeT/xhbE8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ewtorYA2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ewtorYA2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A491BC4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 18 May 2025 17:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747588793;
	bh=tlmXMosw1K59nWz0+ipISTDHh00l1bHTMeq2qGBFVKI=;
	h=To:Subject:From:Date:From;
	b=ewtorYA2N2WLK+BVjGEq39OwwEHF2DK5JhXXrDBV5XHqz+EodCMw6LNpcg8NGDB8f
	 KSril2c9oPMuIpsvaJiQ36A1tls1zL8k346rVRGS17+U4poyvV1lvwC0y5tVSAqEoc
	 GC/x69DEC5vpYaVqSypHTljiS0HFrLILRjgBGDjq7yZ3JSpxYbQGZFUpRcbhAXje+l
	 +AQhpdgsXySKGnYuSi/evW+VZ2AdKU6GmNm+UN6GGxSM4fQjlwswUXuidnw87lkXLA
	 qXecNzRkyzSm4Kss6iwkaFyjQe/++uBPLh6TGdO2FNNj6g0pdPvx9kENRMKP9fQnvT
	 cCtRA6fAHoHlg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92C5CC3ABC9
	for <ddprobe@lists.linux.dev>; Sun, 18 May 2025 17:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174758879358.15616.14974851071896636227.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0c76eea0af582e49e03d6553829a0906487504f0477eb59dd1a9e74cbf6bdb43
Date: Sun, 18 May 2025 17:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747588793
