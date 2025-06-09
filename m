Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2ED8A3A1DB
	for <ddprobe@lists.linux.dev>; Mon,  9 Jun 2025 04:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749442794; cv=none; b=Re7/kFp0wtaEVoj2Jf0DRM1zIF5Nmz1r0Lpg6tCt/1cTxuwD3TJNrOrQeroa4SJvdSvGTZYK1oYxo7DM+g54gq0n0VaAXcFscQOYhOlZ+UEdAGT+sfQdAPCsy3p+5lkNx255ItLL+ZDrB1pCdI5DaRKmZhlH5YjD4IzBEqLaPR8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749442794; c=relaxed/simple;
	bh=sLCD/rk9X9Tq/lusSC0x/+IKTDT/hS6R0YRTH+WbMBg=;
	h=To:Subject:From:Message-Id:Date; b=Txa/ESvOGeUyPJVOi+qT4CQnWcedph3Nk/Os/aqAlzFpYrfeX2SHvhVZwFKvLnk8Kcj7B5ctiwAcgvVC6Ndr+Gx2gsscF79WZmfILL9Pw5uXFxV1dFoC9FfDIucamGOI6ep3HLm87YNB1sUEB5GCM6lRXVaRiC2UxNmrZ744EiU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=K7Edczzz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="K7Edczzz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC1F0C4CEEB
	for <ddprobe@lists.linux.dev>; Mon,  9 Jun 2025 04:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749442793;
	bh=sLCD/rk9X9Tq/lusSC0x/+IKTDT/hS6R0YRTH+WbMBg=;
	h=To:Subject:From:Date:From;
	b=K7Edczzzp5C6qTS4TMN5MNgKo/OzG655PsLCO0zIUA/b0HIvK+aYJzQ5ZwFaHnS0p
	 /lqDWujV4C/BEXxY/0noO3/MGoHaeiOrdSXP0roJ3qllBS4nkSQFYolYw4qjIbJKt/
	 0Xp2B1Mvpyduk3TS0hkQcO5pnwZUsQiKv4gXQAJw/QxjGWMPLq4y7gNm0Yen1YNcQ8
	 NpJhDbDMVQlcQ125OJvTy0bO/xxqBMB+qGswz40WlYbB6uzN7ubs7Pj0NDP4MJh3Uk
	 +cE+4SqS1VlfYHUOqrTLWc5gi2IIgJ+r1FBxOyBg2tAi+ievh40BZhg/XN4Aft+J+H
	 RzhHnxK1ctqJA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97CCFC5AD49
	for <ddprobe@lists.linux.dev>; Mon,  9 Jun 2025 04:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174944279359.29564.14911604425362209277.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7b792cc0e951e27ade70c7f3f8734172a1830793f518ccdbef337b1281b65399
Date: Mon, 09 Jun 2025 04:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749442793
