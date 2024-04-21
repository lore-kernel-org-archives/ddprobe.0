Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8083F17E9
	for <ddprobe@lists.linux.dev>; Sun, 21 Apr 2024 03:00:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713668423; cv=none; b=pzJDyNvwE8mxX5UbCHAFU39ii95z2oD/mDJTXR1+kNV/9xchU8wAvaV4snH9Q0ATGrOF4oQqDkYixlTiXgPeIE5P1vl8IB50Y7+G/5HvrKVJhXbt48QXL1r8qKqmCc7xSxxR2mQWclHSbOv17G++LBS+c6Ekym/3zaLn0gTzKP0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713668423; c=relaxed/simple;
	bh=f0oWaJOTkX/KWpNJAnCnt1BQCtd08DD/zidvhdvitoo=;
	h=To:Subject:From:Message-Id:Date; b=JOIQyVtULVXOLCNqiwtKP7URkx17fOX1krQrxpnu+AhWH2ytaZZNQSr5lWydk9uQYdNnMsGtXAE5UEXvg5ab8GbKsgHxUlU/ar5I17XK91Uc1ju2S50qqyFV9iru7eaDNbgNdLAE/gCHdBt3NfT2nCL7aHVjGp9RXBSObfuBotw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=INA6HLmu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="INA6HLmu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id F0935C113CC
	for <ddprobe@lists.linux.dev>; Sun, 21 Apr 2024 03:00:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713668423;
	bh=f0oWaJOTkX/KWpNJAnCnt1BQCtd08DD/zidvhdvitoo=;
	h=To:Subject:From:Date:From;
	b=INA6HLmuq+z+WcS1DvpFRcgrZ6VrX4zgSIonov3hXW7MtG8OIk14WCxkj4O4U5JTX
	 7vNzOFydfUUpsKwsXn2ZWUCT2mt+hQ6lIthW9iZUsZaLpsXsIvowCsnJ70teq8iUdn
	 sn9cJQuUAZ+im0ojrFvVwlrvREZHiMDGiRkWr9HBg0EBfEjNXI+jfLKWI+KZe9yUUa
	 EcasViUbol1PcrrEwqByzMxrxKNn+HvwjBQH/FSWm1U6aOcb1FzQnrW9o3NRifMdxO
	 rxPi/s/eXFEufV9rPo34g08qK+OJOJKGzG3VO9gZeKXR3i4T4oXtrvgFvDvz6pbMSP
	 VJXNDaD/3iiXQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CD980C4345F
	for <ddprobe@lists.linux.dev>; Sun, 21 Apr 2024 03:00:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171366842281.17136.15703970171261225279.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e21428ce6a021501004cb3157189a96c980706be4c92657cbbb9c79893920a44
Date: Sun, 21 Apr 2024 03:00:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713668422
