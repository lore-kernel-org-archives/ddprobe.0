Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F69C2C68B
	for <ddprobe@lists.linux.dev>; Sat, 27 Jan 2024 16:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706372297; cv=none; b=MZex5clmEmR37rlA1louiXbkDEAgX5ysOxI4xYooN581vbMdlNheNoqlQ2DqyZoolb6lw5LjH6GfFM/YPSVNybowSTl85MLlrbQkX2SjVT6iGMgTcIsUCAEpIDZVWvlyhXXdlUikfUp3UFoTWPFzM9DczkKge6G2OtTZETk4JTA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706372297; c=relaxed/simple;
	bh=6Q6PzudkHlcjd/VNJBpEpFr3tpSjXYwitmpQvly6Ms4=;
	h=To:Subject:From:Message-Id:Date; b=GzajLnlu5ZAyLovsbO9KgFwF3KCDWIWheOyAVg3YFyb5yupL1pPNxVY+WeGULC5HH97JBO5PW4pgctgmHoOzpMdUx93ace19HZFnicxuHL2BAGHhXiZPrGyUSpYBsjbhOo7T9s/4ScdNne8gNfE7ZEw5eoSkvXUqTYD51JUikC8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ULn/S+TA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ULn/S+TA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 79764C433C7
	for <ddprobe@lists.linux.dev>; Sat, 27 Jan 2024 16:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1706372296;
	bh=6Q6PzudkHlcjd/VNJBpEpFr3tpSjXYwitmpQvly6Ms4=;
	h=To:Subject:From:Date:From;
	b=ULn/S+TAaHR3tuVTfejTSmCuLgAB6FMvYzn1AxYTJ0zpKQOT4AHmY8OjJ4mL3uKRr
	 JSH6DVJEumu+TOy1uEfhKok/pxrdoyQH71eII8YrkmgPEWAf698mb+1xW5QQUYbsL9
	 GS3oW1JDWMOpbRrkzdDqjCqcgb+d+yItAnUBRN4SMpth6sE0CBWjFvdXFWE3s0ekVz
	 e/jfdC2n7D8IVEoppYCDcJfgOKXTp1+v2lsWsqND9KHR0ARKioYuV3gCbCc03n1kfI
	 6HoFMrX9TAnYYuv2cbO6Sp5D2D1tUmQUDdT0MFEhCvHvn+8piWxevbJasT1j3fWDP6
	 3T1RE00YwYO4A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 60BC5C46CD2
	for <ddprobe@lists.linux.dev>; Sat, 27 Jan 2024 16:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170637229638.30117.10544848869377996097.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 08d25ad7ed069a3baf8640c6e5b7fec69854388f8f8831515c62dd50b8d301a5
Date: Sat, 27 Jan 2024 16:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1706372296
