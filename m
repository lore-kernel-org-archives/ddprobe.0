Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B49110E4
	for <ddprobe@lists.linux.dev>; Mon,  4 Aug 2025 23:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754351394; cv=none; b=AJs+3uWdldBOtoPh3CvUNawxi89WDGALFmlcuVvMDTUuHflMXsS11Pe23B3tfLxMtRRwbZtBCmVHU9U+DKqCVougxHQwSkDaf88IEJsCei5Rxa2jjKySq1Ja9cQuy3iu1q94Amupc3S5qpBqFYirkk2jTAjoS2Ryupf+Vryq7Uw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754351394; c=relaxed/simple;
	bh=G782JGRsigEAjjwddVPppqf4iTZMuBavwS0iGg7y6QM=;
	h=To:Subject:From:Message-Id:Date; b=iQVjhsoVTCH/Jc6yf38L7Z3rn3fDM7xm7LioA5IxMwNj1qBwW1zSldx015Q+mYfEt04UrUHH/s3xYt88oz/oQoEPWeKpvDHSRJyk1DTsL3ec7kaZ8A6QiivueRpxeJmG3jvt/Q0L1BYu9ao5C1+p2443qWaIahn5wyRZ+ZddGoQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CP/ihP0W; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CP/ihP0W"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5D33C4CEE7
	for <ddprobe@lists.linux.dev>; Mon,  4 Aug 2025 23:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754351393;
	bh=G782JGRsigEAjjwddVPppqf4iTZMuBavwS0iGg7y6QM=;
	h=To:Subject:From:Date:From;
	b=CP/ihP0WflZKGJrGwSbHb+dmWy/FZ0xXlyxRTYEMaHn9Wd/QaZP9lwywVdmDcUONn
	 ZalYM5rP3LyEWn646OpmhxU1g1nXAlxwpXafOpjhH+hx7SOHx3X/LuTnHGY3Vb/DLH
	 FqhFa+UvHB+mf/NTg0gCMM/sSz8MwqtbiN5dF1VhHmrcwi3xOTqlg/fiHpsBkq9/vW
	 adT1XmdizJAvQVSFIlL5TB8eqqW2XQ4nWH3qMNNcEz4eYv/UO57fHsb1I0J3XKkvAH
	 YXABF1ip7ir36EXAywmotKyt2C8LPHtVmr4paf+HDuHMGijH3bMEQ/LvUUFq5D82PF
	 VhywnDqtAeVTA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92FD1C87FCF
	for <ddprobe@lists.linux.dev>; Mon,  4 Aug 2025 23:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175435139359.519.17902507947884860673.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1268e0eaf64f171b6a3abd75ad4ae7bcbdead99475038cdffdd5898e072a33e2
Date: Mon, 04 Aug 2025 23:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754351393
