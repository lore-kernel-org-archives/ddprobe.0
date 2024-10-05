Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BCF0125D5
	for <ddprobe@lists.linux.dev>; Sat,  5 Oct 2024 07:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728112554; cv=none; b=iKZEH072Wnvtqu+ok8yOKPtnhIoP6wDkzBDCEhYkmvtFIwMQncscNjNjCiF3FqZTErK5ZECmzerEpHYzNfPmQrD75EZ3ctfRTn+kMME6t/q1OweGMalYGbXblxYl71NApHsGNZfxx++zbcA3ChInYhkbRvyV93ZDx9+bn26+BAE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728112554; c=relaxed/simple;
	bh=cv56cBpEXdo01k+6Le1FhUaI50+0lCnREd8WLAI7T44=;
	h=To:Subject:From:Message-Id:Date; b=bVS+ObUmYmaQyynBwD35khZxS+reOEaOotcejndTWSms98rAytAB6kslUAX3SUDflz/Gm5bFc9nXG4vsl03WjQCZksk8L5rWNV7R7W/CuDV+EGmfRB2/Cf69nOtrIKrytuvBytYxnxfyvw1ET7dW0uY3NPsATtxu/TGAHoWF69A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pUE3pfpe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pUE3pfpe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE013C4CEC2
	for <ddprobe@lists.linux.dev>; Sat,  5 Oct 2024 07:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728112553;
	bh=cv56cBpEXdo01k+6Le1FhUaI50+0lCnREd8WLAI7T44=;
	h=To:Subject:From:Date:From;
	b=pUE3pfpe9j/xNxqC6e95AWHP3RmkM+BmCw2NYznERMbQZzf+TMzzAYYEOhfCxBjne
	 sMhckcIdlVOZ3aORCJ2y/PG2wt9EVeLW9+gKyH2uE2VaA6VAsrQU3GmjttcbeBjGBt
	 y+P8XnFkfDwWj+F1tNBKH2xW4WALRMfM2B7RcJj0NLduxktazdpzDsPx2UBBTcE+en
	 MiDU9NS6jFwqDmCtqm9EpjIV9IDEzP6jwg1dQfWKhdMH8p7jxTZ/dEtNTGF2aB/kgb
	 GGB05HmRPhxipsHZpn1PgQlm7RGiKi+vDO9wKa+JRe8omGrGsijreikHcA+N1QdHge
	 /3wO0JOvyLx4w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9841BCF8869
	for <ddprobe@lists.linux.dev>; Sat,  5 Oct 2024 07:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172811255360.22207.1874517243059916442.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6e4118d679f8c256a5493fc497949752cf5a796dd572dd293b6b996cfa7228bc
Date: Sat, 05 Oct 2024 07:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728112553
