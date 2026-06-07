Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 408ED281503
	for <ddprobe@lists.linux.dev>; Sun,  7 Jun 2026 18:44:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780857874; cv=none; b=WWWOhlwnJg0Fjmwm7viGF3i20+7LDGtfsLubrpffLJ47E0uzgxWFRCpKpcBtFB4cwwQSwgPyftgJU+TB3NK9r4XnTHGpXAk/SfTVErTfMf7GAitpas/MxPz4Gb1kr2Faxdr7cyX/OAyd78Ps/VY/SpjuFKE2WF4btixveQLVA7c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780857874; c=relaxed/simple;
	bh=BTVKqiRz2Uqt0kjsk/TUutuTHSSARdSvwAD6YrBYErw=;
	h=To:Subject:From:Message-Id:Date; b=pHPSv4TLA1OO4W2LQsapAOUnt9cMVzGCb3UM0rufpNNXRsP+MATG4rU9iHEyYF7J8erK9yNMPFkj96+buAUiJ4OKaiqHi5YuiSyJeoo88mdnkiW/hRl9+c3rzWweIc+HhpacH96KZDqeEoSkKXJG+3g+YhU3Z0eOYb0Wd0NHm4s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SUAzH3ZU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SUAzH3ZU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC766C2BCB4
	for <ddprobe@lists.linux.dev>; Sun,  7 Jun 2026 18:44:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780857873;
	bh=BTVKqiRz2Uqt0kjsk/TUutuTHSSARdSvwAD6YrBYErw=;
	h=To:Subject:From:Date:From;
	b=SUAzH3ZUu/6/CIp2yzt8+yi0dPfoKp79gcd4CSaH2NaEZ1bhuIShJXQh+yp7jqGIk
	 xpWVk7/zf/QGLVQO+UBlXNxjOEXuGON3+iOx8uxwYIZ1+IbPMpDbeYV2lgpvaHHZaV
	 pGfyc/zxGiY22eLYwxVC9kEAxo2ELg4OEEkH/RXMIrnbjuKVhCtZP1r3vT4A1RrEAO
	 pSn0z347aErdOkrWKGSL8S79OekG2OppVB3A/o+PKin8j7lYFe5RyAub8tEgba4HaG
	 VuJdFuDfIjyAS8y47QlRIW7ukfsuvGod4Qz545nLqhtylRpm1XJCqcWOS5Ij+VAoLA
	 385+jAH6yKgnQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B312CCD8C89
	for <ddprobe@lists.linux.dev>; Sun,  7 Jun 2026 18:44:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178085787372.14443.2715425847318969320.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7a1bf54deccf4b3574119c6b09921af082586350873ff69f1081063821ef540b
Date: Sun, 07 Jun 2026 18:44:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780857873
