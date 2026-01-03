Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B9244C98
	for <ddprobe@lists.linux.dev>; Sat,  3 Jan 2026 15:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767455634; cv=none; b=HEHMRK56Nid95GKBa/XFWybEYbowVV4R7cM0MrvpWyboP/njIBqaCY7GOxJl0MZ4bQC6/hbTTXF5sF/m3gYlf45bGolMRmrH+0z5Kuiwc5ArKqDKTJ4Ktuu2ReIBv6ZAB7SKKH/4R+oZs3+a3Zs35cN7kQGU4wPNKkZjxopHLsg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767455634; c=relaxed/simple;
	bh=wUoGsaZFQJlV9lFqV97RVwlIi2NzttvnpGNdseGx45k=;
	h=To:Subject:From:Message-Id:Date; b=q300jl0oAH2BbZpvv2h4GvIrEH1MbzLyq9kCdNSgozz46dnvaZruWthPCuzRjNfOaZvQ39mmVeZcff8o7h81BKjOJF5rE2482Grs3hJL/f3J9k9fG7rmRe4EURuVIfP8d09pdelwqFm2sBCqT65oXwXewQ4nPf7jMtr8hyYFnck=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=J8PmbA2L; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="J8PmbA2L"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A08C0C113D0
	for <ddprobe@lists.linux.dev>; Sat,  3 Jan 2026 15:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767455633;
	bh=wUoGsaZFQJlV9lFqV97RVwlIi2NzttvnpGNdseGx45k=;
	h=To:Subject:From:Date:From;
	b=J8PmbA2L1qPMC2jHADtrPya1OZYAwcq0tfi9DKK7FzBeSd800d680KGkkIGoof294
	 ShlUC6ExEpvnOtiSA5eg/JjXyyT/y8XTDxtakHVBsM4pN4mrG/rDuc5XlgXTVWAusK
	 e5HwENusG+UYkaeFN8dR2m8tqbn7EviM0YOFAv273ty9pL+mhMClbFvNoNGCtZqios
	 5FTiXFh2EbBUtwPeLfeAHn0QaS8ZgU7Xfhjj0Qc0ZOE5wfxCyNwzKTKvjfBWZCrSLg
	 hoT9fXqJRaWc/NR9nK94l4VHZRTHsm6A+CsdEzdh5NYzZsFhzMb8U+y96W+gKKAjm0
	 5Ijaztu5H8PzQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F2CAFC6175
	for <ddprobe@lists.linux.dev>; Sat,  3 Jan 2026 15:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176745563357.27079.3296924941502910738.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1221291e3e55be814f5ee193db6622857ddcb9b306b2b1c4c9a2b5222511b115
Date: Sat, 03 Jan 2026 15:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767455633
