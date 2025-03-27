Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DFD4215F6E
	for <ddprobe@lists.linux.dev>; Thu, 27 Mar 2025 14:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743085194; cv=none; b=jx4FEN0oo8iOop9llvZyJZmNFXbNBP3aQpG1/5ZL/fFubFcgwhch51mXoZhgvT5i2Bx1xoO6QSADgEhP0/VFHrCZLWD70UQWfDTK1SJgSMMYtO8/JbWVU92Qf05apqlgT03nSe/Ee60v7+jhSw/mmHqVWZBSeIxjdTuEdZpzSlU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743085194; c=relaxed/simple;
	bh=2DEW/l7emFaob52O0LYRtRVMpIAV7/UhUVqmLVIrYwk=;
	h=To:Subject:From:Message-Id:Date; b=m923t3TopLNkhx2kSGf7IznzuhvV3wHOX+o8Jjh2k9PiF50ZRzR/43ugKtPpCyMX81bB368pbVJeynlVNC+BLykEIKtHpBzpg/VljCgS5cKWeZGGJaG7y1QGsjrF3ts2GeTwIDs7LLFrSP2Kfib+Pe0V49tH/8fUwMZq6ggUUMI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tH7574KN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tH7574KN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACBA1C4CEDD
	for <ddprobe@lists.linux.dev>; Thu, 27 Mar 2025 14:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743085193;
	bh=2DEW/l7emFaob52O0LYRtRVMpIAV7/UhUVqmLVIrYwk=;
	h=To:Subject:From:Date:From;
	b=tH7574KN4JlpObqfheWFZdy2ybNrPOODkB6fGyaxv3YNM0IotQJv8C6//vn6IEbMS
	 eRcEWEOUdb+819CivzXICq8wpgLtN/NqHgyTxkP4gKrGl3+d4/bGKm7odm0Nk2wr/H
	 Oq+6qDJX+C6xmHTVeLteYv4w8gj+aVZOccTd5wuMQbyu99o9g4Yym9I60wxx8cDiOi
	 rPp6KLOfT5nzw0pzRYQXe6UFTnkwjaghlvNIYchNBuLX5TG9f7YU2jL2DP3kNbs98Q
	 RrBDPH1/RxeReFfYwTlI8BW35YpqqsjCamPf26uFdJTteJrgmo4CCbxFnrvRWAW4m8
	 yGY+zP9U3stBg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9250EC3600B
	for <ddprobe@lists.linux.dev>; Thu, 27 Mar 2025 14:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174308519358.27731.6735452588129929999.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 04f712de78ebf9eebf196b55390d8e0711e181ec42ad1bb23bb309876c8a4b58
Date: Thu, 27 Mar 2025 14:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743085193
