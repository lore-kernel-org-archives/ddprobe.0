Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BE48D19E96D
	for <ddprobe@lists.linux.dev>; Mon, 22 Sep 2025 14:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758550193; cv=none; b=MBCcWWeqVN7YXRaL6MMUWRUfIvvCskiu43we70HjeQSN0B4D9KIM/QZVyNeFh9394NjMR8veNwRRfWHZ9D/58CUCOyJRYSHUcS8eU4ywYfDbnmsYmKBQwBPnz7DDsfP7ivgTv3JvgWmTZ6Lb/bREEg0SSk80x2q26JMikRYw9AU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758550193; c=relaxed/simple;
	bh=drqseMdPc4KLpwF3Pm1j3Yib5101JoEcB1Aj5WfZRl4=;
	h=To:Subject:From:Message-Id:Date; b=kVvqIbP7GoCnuf/CPiz3jXEsO9rrL8pr5fp90rVT/jnyAwGfZX4ZQ6B+poUXSvAnzLgeWq7mYO2OkeicTZdI/IFfJbVepVrEmaqobM8Rs8LnCETLaumprzArez5SAnfv8wKreNpTMYx8Ddsl/46sYBJe+jasHOcx7y79OmwKvCs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=n6WnNPc6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="n6WnNPc6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FFCCC113D0
	for <ddprobe@lists.linux.dev>; Mon, 22 Sep 2025 14:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758550193;
	bh=drqseMdPc4KLpwF3Pm1j3Yib5101JoEcB1Aj5WfZRl4=;
	h=To:Subject:From:Date:From;
	b=n6WnNPc6kOku0obg3S/Vrm/bpl6LocVkaJofjARTjPRv/LVGf5hcyn2j966y0ZWc3
	 pN1GwIM+ahdVLA878OTh2S/fmq2a+WQaok/sSwmiF+JlUjAbU0u4pMGVTh9qp0LCuk
	 depCA4U7yFHwQDXK15xbRqtlRfrN5zi1TD5+xWkutA41nL+wcJ6kdyNT9dC7B4EOjW
	 80wuzAF8cU2R+bhrT9+5QGZYT/Ufy4vyx8a+6iwYjKEJe6mboxxK1vvH/rhAJQJqm/
	 CH0nXAKb88eR+3G4ndLl3M+UO5vuMi2zjxO59vUdgu/eugG3Ev1f8PaANIlsbQKRWl
	 g098U7tVrstbA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90AB8CAC5A8
	for <ddprobe@lists.linux.dev>; Mon, 22 Sep 2025 14:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175855019358.16344.10453939865877025498.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8bb42d4461e63404809d5f69b717c6f8744b52a7a550c793aadd354dd45d94ec
Date: Mon, 22 Sep 2025 14:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758550193
