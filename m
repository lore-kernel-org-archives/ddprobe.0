Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C7F9220F4C
	for <ddprobe@lists.linux.dev>; Tue,  8 Jul 2025 06:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751956794; cv=none; b=HY79XShv9a1jpyT/XoGYA+XqY8lXDciUfGVJaoNdrcm9NCq5jdn3vjsOuyvVZ5vWBmgOoy9b5Hry1QxxGuBcBlqJvws29pJvZCl9Jeek6l7p18OgNeVzNtZlAXnz1nxaL7tmj9LPdCNUpje5lTnBGJN4Q1tS9k1YunqYH9vtndg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751956794; c=relaxed/simple;
	bh=xC6Rp9Hvxhda/v2LrhzsUkuooFy2EP/qKjKqYMTDPTM=;
	h=To:Subject:From:Message-Id:Date; b=oMEN75Oqfip3QVwjME1iw64ICBA5SjZmBRemSt4fe1qF7bSImbfaEqD7sZ6EYcWIQRO0LIboy0Oz3jADwixbSPmuaCJMAqfMC8icji2YWqcH81Yxblm+bIdxpXt3ySJu8xeEs7IN/kGk6PEZN6U9LZkTK/w+ptIMkUi9/yBuZdM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DahBoqUd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DahBoqUd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A640BC4CEED
	for <ddprobe@lists.linux.dev>; Tue,  8 Jul 2025 06:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751956793;
	bh=xC6Rp9Hvxhda/v2LrhzsUkuooFy2EP/qKjKqYMTDPTM=;
	h=To:Subject:From:Date:From;
	b=DahBoqUdMqRt+Ela3ipjWGOO+4X1uM/0UcB6uIuLUEKYtsA+nbnvPzWGtJTn1hvZx
	 B0ntx6dTbj2HsG8viBePqqwc6eL2qBBmr9ePftMlu+RGHuGRechUJwE+5a8X+RY30y
	 pQClTQ9XgK7wasYXys0MaZLfoJX0t12viIqUesvy4aaM17EXp4j8hZv7VR3tTAtdPl
	 zPvzxIaoWOOWuql+uMbhS0vTcW1AEEN/AKtlEFoKsWB/w3M/E0KumbwQwgrtpsn7lO
	 8Amoy1LcxjWP+q12M4mfwP/TMsSID1iMgb/9i5o9fo+74RZfxgX5pUuVYaYfTv0Op9
	 MUNedTHWQ2ipQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92D59C71130
	for <ddprobe@lists.linux.dev>; Tue,  8 Jul 2025 06:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175195679359.17260.16523608746787868994.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 42bb82a6d5ad9ce36204f46fdbe3966e1ba7c788b8cc49b85442cbaf287854d7
Date: Tue, 08 Jul 2025 06:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751956793
