Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 476333C2E
	for <ddprobe@lists.linux.dev>; Sun, 15 Feb 2026 01:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771119894; cv=none; b=TXxnWbE28bs4uIIhKxzA0rUbbmD9V9HlgqVSC7/GGjxWGOOvMMpPtEYhb18zHQhIA5IoMY48eSoG6OWeWotnk4FqRSSlaC8NTexHTGyVl6MoyvWyqc686oxFnQVy5Ly0EGZXwoCt1tnm2MHb3wv4ma22TuDk4nsW2VnuVkXflkg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771119894; c=relaxed/simple;
	bh=tTZh4EhnaZAGAZJlXrFIdkXE5PdWrMDnv5DJiJgThvk=;
	h=To:Subject:From:Message-Id:Date; b=mjw8yjkdha2n++krYnb+pvfODWTlIAiPhCm/vEsXo8DiObJuY8A3ZGUFF3v6i+nNaJSp7L7/OFL8OOt45GOpkGOOrW5Lc9Yt+2uBAFm+rj7krpfh5N5ui3+lvO1D/qc5vZFWXlTPbgCeSfwOzycECaKU3XzJylh2AYAMgjWpI1w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=p439a9hT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="p439a9hT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C03CAC16AAE
	for <ddprobe@lists.linux.dev>; Sun, 15 Feb 2026 01:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771119893;
	bh=tTZh4EhnaZAGAZJlXrFIdkXE5PdWrMDnv5DJiJgThvk=;
	h=To:Subject:From:Date:From;
	b=p439a9hTN/gwsp+Tszfn8Oixa/mLDo4IoNkZ1lOjPGNRWiw6tw95PXF51QcIN4uEX
	 eVK4vEF9v/xVYa7TNtOsByhVMQ4GD1On7V1WPFVOD/ZPH5dq2nASPTLxmwpPpmex9v
	 epfqu/okb/BGvCEUlUPmhoweQumjpaRMpDKaIRkPJ3Prf3Kg9yMvE+BdkDT2QyPV4O
	 joyz0zeM9ecLI4zIAOR3KTzlS0Ni1GWX2OJZvpRTaGG35/YaLquLYeA6gDB7TDHTj6
	 CW6xIpHJeI9D30vUvnOGqZqDF1G6P/Tmr9W6X0KrBjyMoPo6Dr/UVZtshCCFbCkUdq
	 0pMctDq91zdsQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9A53EF585B
	for <ddprobe@lists.linux.dev>; Sun, 15 Feb 2026 01:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177111989364.10325.3712935449534677478.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2be593539267482e73d81ac48980ae03131ebd993f9ec3d5f0f8a02b38d6848b
Date: Sun, 15 Feb 2026 01:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771119893
