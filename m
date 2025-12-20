Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 452C014F70
	for <ddprobe@lists.linux.dev>; Sat, 20 Dec 2025 18:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766254434; cv=none; b=LHGsepZz5m4ffFTH1hsgaHfMrpDdE1MU13l0VrwkC3Y7MaF6xvk+3w1jpkPGae37wn2lj2Eyw6m3oNDMLZof3jqxXK2OucMpYRsBDAkuFCDy+bQnIP26APeDGkW1dDTUQxYkBVgNwxpRdkII8eZsjso1o14NGE/E642BKfiUC7E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766254434; c=relaxed/simple;
	bh=UjYJbzZdOpKdE/tGH5pAZEgN6FkaRp9ejDPj+Skis5w=;
	h=To:Subject:From:Message-Id:Date; b=L89yLaMi8B6LXaC1APZ0PODPUV1DrT+J/g9tngccsttFANFS/b9qH1K3Sxx64wpfGwsBl9z236o9SKz47F6QQWCvYuOkysPe+6durmQp50a4uCK++10iq0QuMrkDqPk2gXNZ5j1FMY6jHJko2HrPMp2wGFolNBCZT/61SbE/aTw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=btJeEhKL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="btJeEhKL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A71B2C4CEF5
	for <ddprobe@lists.linux.dev>; Sat, 20 Dec 2025 18:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766254433;
	bh=UjYJbzZdOpKdE/tGH5pAZEgN6FkaRp9ejDPj+Skis5w=;
	h=To:Subject:From:Date:From;
	b=btJeEhKLRqz6zw+s7S37xqhH6CyjEpuwm0ZV+Wun33LGg32gQLBvCyhtFjMWYOfTF
	 mte8ORxCSIDGtwa74ABuzoT0xT60b+5AmHB70hSNtc9vlRJUzua9kWGifnkYvJEuu7
	 2A52FdmxFb8UzGED9CHPCQODL8lALOTkOZoalMLP/JyeWODUIf/FMhWS/7gdLc6HmD
	 HpwLzNpHf1rbcL1Rv18PaAnU3uB9wJHiofPtMemrESwxFzJofIfefJCkTjf/SJo6uq
	 j1whx8bQ2R28qAk8M43/Mvy4Tj2qtT3buzpfxoFZlsyitvi6AVWTtT2tVVOTQ8foNx
	 gaVT/VWFRCS8w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 921B0E668B8
	for <ddprobe@lists.linux.dev>; Sat, 20 Dec 2025 18:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176625443357.23278.7212917759716121145.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 539d4c6f547823d9749c35c97da75a3f9987b31f6abfa97db2956a5f0bb18392
Date: Sat, 20 Dec 2025 18:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766254433
