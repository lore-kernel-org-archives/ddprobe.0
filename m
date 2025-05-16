Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39A1521B9D8
	for <ddprobe@lists.linux.dev>; Fri, 16 May 2025 10:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747392594; cv=none; b=fgU19EW+zYqkY2mYnrkyR02YukdsU7UkRhzNvjzL4my6eA2xNULcYfwwvgJBd70wjTSt+tnWfsF8SgFV0NCPzUYf0JPCwKwmTCcHd3pfmvHU8nnAp0torye30rr6qLJjK5kAqHfZnQMarLGhSkIbIFyw3ovHAMeZsCSI2lvj/1Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747392594; c=relaxed/simple;
	bh=yVG6b65Ox7y5k7ojTDzoBbtLdiR2iMX1G/vjjhhRHAc=;
	h=To:Subject:From:Message-Id:Date; b=GE4Km/AOzJbqFACpW2qe2LhQyNNa6XGb2CUi2SQRU41/MR2VAqyU5bWn+K7N9DZ1AFesSy49mRpTbEbYvsW7UkNs0YHUmLBwDAtPrQGEmMKPqGJP3Fwy073WDc0X4Om/o3Rt/mFuAQkie5teCIJiSUubKVZyU8ZwlM9rU0/eb7Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Db2Ib8Ds; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Db2Ib8Ds"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A69C5C4CEE4
	for <ddprobe@lists.linux.dev>; Fri, 16 May 2025 10:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747392593;
	bh=yVG6b65Ox7y5k7ojTDzoBbtLdiR2iMX1G/vjjhhRHAc=;
	h=To:Subject:From:Date:From;
	b=Db2Ib8DskqHvG08KoLqE31dH3bPUcZKFdDfqjn/kIsJ51GGEwYiPCpeuLTfJvOLJP
	 KFAfWhl7k0yBPmJIZLVGGBx1NyGe182byf4KOmXcdF2UCtIpu8ocKbAXklY5I9kV+P
	 wNEwy7fU4sPTDHzZKj4NY9Qd2fJ9xBYPdl/bxTVmmDpqkmnFDC9LZOFqACYzn6CIpF
	 QDSxynvPgPj6ajhKaWWOPmo2eYFotfQso6uQ/SrCkQanvWdXJtkSG6x9OwZTlxPBDA
	 xH2O5Kqaq43jlxAFx5TCOAtVUwRZ5T3Yl4wFTOmDrNtX2Ue4AS88MTdvJ69pncw+xD
	 PzpDB7nmWPvxQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93BFAC3ABC9
	for <ddprobe@lists.linux.dev>; Fri, 16 May 2025 10:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174739259359.7879.5217426627111213513.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 330633b03f3a46d8be709c29ad2c54854ba1543917c754cd1f66f533386b9796
Date: Fri, 16 May 2025 10:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747392593
