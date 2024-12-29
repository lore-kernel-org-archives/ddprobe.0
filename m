Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29D5D139D19
	for <ddprobe@lists.linux.dev>; Sun, 29 Dec 2024 13:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735479954; cv=none; b=ZkVImDMmE0WNAoOGKcd7Jzas/3KITgj8sjK+w4GXjr515cZrj0bv7549L+cpMsHxteVVj8zLMaDAQUnyIgDtYF7OVf9N+JsSSlUt0Gf/Rp7OZ9xF43ywqV1XNpM0aobfKnTwmkjQB3mw3QxPWHzLlXMqYm583sWSuKQNeLpC1ks=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735479954; c=relaxed/simple;
	bh=qVFRltxxXViNgesL46n7pcjnKP6a0aHo4T30DFW6B2Q=;
	h=To:Subject:From:Message-Id:Date; b=tMerxPkY72CK1hfngxpCcWvfo5+cj4gT0tTkRMCYzvsTGJv/e+xCvvum1O7+Fv4gteS/qk4Zp5uqEhEMD9oED0TQwrzT99bEh4WDXpAIVeRPH+VIoqaTeVIy6TVK8YfIHhD678RXypb7gTgO70uUKoCqEMi3QQVPyrpMHEkTRUk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rj/veXwO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rj/veXwO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABE45C4CED1
	for <ddprobe@lists.linux.dev>; Sun, 29 Dec 2024 13:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735479953;
	bh=qVFRltxxXViNgesL46n7pcjnKP6a0aHo4T30DFW6B2Q=;
	h=To:Subject:From:Date:From;
	b=rj/veXwOcza7O8JAwhOSOLt7mNvlQ6APEqfePWJC7HedqiVshTiTbrIUh6I23jOmL
	 1UDeqVKPDCCokAMQZZlPP06mkkCGSiGOzjAOLasq4fQ8TyDLpVLWP64CqanesFR0OD
	 qojkHPos9ACIqTSSWMiY45XwgtvBrdNJ2jrhpkk4f8eKBYnx47DKRQbrK8AVZRbHCH
	 KuzVflzfluzWlhyb7U9mWxAXQrW475wgTnVngmDKMrajChoc7ebfiQ775IvH1uwoxm
	 Z52TUjGjbcpb5moJgc+buw7F68YpHjRME/UG9DZmQLqs1RYjIqT//59SNc49UYun5D
	 ZSZBfMWd0WbmA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96E53E7718B
	for <ddprobe@lists.linux.dev>; Sun, 29 Dec 2024 13:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173547995358.23698.10619094394087454475.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 172e4f9ccbfe5df5218bc35ed453cc87bd9ff5353e64e779fa7579781ce21814
Date: Sun, 29 Dec 2024 13:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735479953
