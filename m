Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A49C2147E5
	for <ddprobe@lists.linux.dev>; Sat,  9 Aug 2025 08:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754729994; cv=none; b=Cug6jgk88FzA6NQNYG7DHQWb6CzWhBlEURdiGYnmDrJRua8iuCi8NUDT70lg56B4lbxgqfLqjnTQOnpgJbFKlf6EU3jLADIU1XfeBt9CICmTklgzMF6OMM1uDEnVh5C/hKDdy3Y/wbg1Lund0hMA/SlTnk/5h0RISHrk9LkTMc0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754729994; c=relaxed/simple;
	bh=rH/MKOhaW0pvCd1oJvVFd7yEAVJaiFeyeNuDmlbCI+s=;
	h=To:Subject:From:Message-Id:Date; b=MK4cSu5KG4qMQowTDCCwR/UjnGZjjf7KSoahlhY/EthF/RedYGbw36kemS0jhSEMP6seu/bpXeT1k1N0j9WK6TOLOKuyw0FC1AIwTv0zPl5p+4bEGaC3biG351lcDBssSZoVFYBj4AW4yHdwH4HmWer2B95J5tNWkBWfeh3WZ1o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=o38tlM6X; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="o38tlM6X"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F701C4CEE7
	for <ddprobe@lists.linux.dev>; Sat,  9 Aug 2025 08:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754729993;
	bh=rH/MKOhaW0pvCd1oJvVFd7yEAVJaiFeyeNuDmlbCI+s=;
	h=To:Subject:From:Date:From;
	b=o38tlM6XXkbV8z8F49vuCjfCJNnznwpiwajOqyzT4zp3/CNaMpfX9t3nXPjEg98jC
	 3ptO6j7VvDaCpTTvYNSs5uhFAn18Tsc64N5iQr6egSE1BdQIcMrd3VoIYqc6t6Gzat
	 j/arMMjLmMsWYe1AAZgdeN/SS4ZyIcJ8B1NCRXp52TLU10GesSXQXmmSss3SJaskyX
	 WZYpSnqw5lUF2JSXxQLgWvAumSupE/tO39bwhd70w+Hyj5BHS6SHs6CpZDGrSg9UQ5
	 J+sW+pw4/FhXmUVkZbGrKzf4pKGdIDGCcanzaOKoKyxrxfy7AijCFzWmJWhONRB5Vc
	 V9XZmq7jhKT1Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91320C87FCF
	for <ddprobe@lists.linux.dev>; Sat,  9 Aug 2025 08:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175472999357.4730.13240317969658297750.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f6acfcdb0f12576bacfe1aad8c580fb49e09cc2b02fdeb7b7abd975dd3e20b43
Date: Sat, 09 Aug 2025 08:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754729993
