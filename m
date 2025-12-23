Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 130A6126BF7
	for <ddprobe@lists.linux.dev>; Tue, 23 Dec 2025 14:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766499234; cv=none; b=SRyJvlPW0pjgI1qUkOGj5hrRZcMK3gyfqBRnJpurGrZ3VxsAGbzOa1IxYjjO3cTYiNN+fGwly09OKmdJfCpiLGUKq6Majys0VXQCILTkccCH0k2CblCXrqbvXrM9/AX7++1uPj2FZUb4U7MLJeQEl2SrXm53pqgqfiMGfAMdv7Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766499234; c=relaxed/simple;
	bh=KmXXXzYs8u870U7xhqQD5VYieCar933BKPZl1Cs5Feg=;
	h=To:Subject:From:Message-Id:Date; b=WZhDrN2C630Ut7jJu8fYlOF2WEhTaYSSxUKk9kUpg9DbXsLorugDj5SoP4j1nQMMsN4yMx14lppRN6k2pvna81FVJGHJq8WJk1zUA4fhxy1FN1/L0GY+5vipdocEqkshm3IQwP9+lEh6qv767ivoA/ztWnufQeRzuf5GhzCOwCs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FDWtYiQT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FDWtYiQT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A156FC113D0
	for <ddprobe@lists.linux.dev>; Tue, 23 Dec 2025 14:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766499233;
	bh=KmXXXzYs8u870U7xhqQD5VYieCar933BKPZl1Cs5Feg=;
	h=To:Subject:From:Date:From;
	b=FDWtYiQTW88EEsA3NOqUUhdR0X1/T1fuytGGhbuqBadGhTo72y8ALGEqvgBlg46bU
	 LnbGmQmhIWxxPKS+FTOerH7VMC7+CtWdv5ynZljdLBKMadI95P9lXLB6bJAECh6kqA
	 vDLHJfNMTFMuqixPc/oklrfEvOtpqHDPI5yUa4G4qJ7CHm4ljRVeW96IqKmTgGLUsK
	 6Scs0B0UpGkz0ii5P1//XFvKKIk98AKscpoHtANZLCujeqqi49uCI7FY0OJdLiu80a
	 8hO+YmogTVhpLgsPQmd06UTBl5DokmwCkxkJqWti+uV/zrvePTx3o0mMWE3iUX0FzR
	 7MhDtVkItwvdA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90102E6F090
	for <ddprobe@lists.linux.dev>; Tue, 23 Dec 2025 14:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176649923358.26278.11396556465741262163.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 03e5be432430f8ccc68edd845f4d0469a54e3f8d59a50e1c639090363bab8ab2
Date: Tue, 23 Dec 2025 14:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766499233
