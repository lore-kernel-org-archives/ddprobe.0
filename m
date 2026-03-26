Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CF3923845C9
	for <ddprobe@lists.linux.dev>; Thu, 26 Mar 2026 11:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774523093; cv=none; b=Uhars1t18rYsOVrXWRhu5jRUyPuTDZtQ09KGgLZjrn+EIJ38HVeytS0if0xF1SfLSyTyy9WmMjCWqbsTgACSxxTGF9xJ5TPPq/zav04e6fP78I2vA+zlXWFhrvdVODNLGn3HgghxyWbX3kw+cSRFaMNs3Y9XJiqTGE0HxTurSPI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774523093; c=relaxed/simple;
	bh=Vjed4Zzs2AmJyF2tefHA0JjzfPtmmWEevjOdT4zihzM=;
	h=To:Subject:From:Message-Id:Date; b=ArcpjQTaMYy48SrorV/KhSi+G0WgbIGetKnIk4YonyDU5k4r67IbG7Ti7U2TTSlxFDe+f3i40LyQeW2s3Gm7Mk0C8Aoj/gMCqAHQGq1U3+JU6YY7TqGXkI6UTyLvqhhKn1xEmgOdJR3GwUKFCJ1Ri4FF6gl33chlcNsbOZ7shPs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TU0xX+kP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TU0xX+kP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1BE6C116C6
	for <ddprobe@lists.linux.dev>; Thu, 26 Mar 2026 11:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774523093;
	bh=Vjed4Zzs2AmJyF2tefHA0JjzfPtmmWEevjOdT4zihzM=;
	h=To:Subject:From:Date:From;
	b=TU0xX+kPqqR+b66uYhXHL/8m98/8Iz5u2D5bIlYiVZbwHqxzuSPzzFGpBI88gKfKd
	 tioPxrqNH9TDzUeNekrMBkcpnQ9BmyUpon5nCmhNyvmf95/XSS4KOkMQkpmvsLOKhR
	 wf91j5alNgMeug45uoDehpAYyfVSnwJ97VF7KD8WFirWrDUAOenPO7d2qus+g0Jh/S
	 8OozSD+c4xaWmWpcQAXIrdbV9Sno090dBX0ArLipSUGmddlpUQu9M2CnumABGmTZde
	 8Ge4T3tku9usGTzpLTPu62Fzw+ib/PabxOe2hZTBKdVgg3un/7GnSXroiV55bSbPT7
	 QXhp1vnSAEcug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C0F910A1E74
	for <ddprobe@lists.linux.dev>; Thu, 26 Mar 2026 11:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177452309362.13221.15886239438082726154.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 592c33a5aa34028646fbe4bb02731022292d46f073e70170dcd131d47b69825b
Date: Thu, 26 Mar 2026 11:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774523093
