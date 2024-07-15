Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 57D6350284
	for <ddprobe@lists.linux.dev>; Mon, 15 Jul 2024 17:55:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721066123; cv=none; b=OzyWgHO1sFN9hAfrlLGXEDy/Czl42mlYIEIQJ1Z2jDUb0xW3LcFbl0V4wno7fcjecAY9S6F/N4qcT6jF6/k7sAmarLQgrN1y2mhQw1JOGY+Zd9xGBpWDh8T9THRh+b3JpjmQPtn3Ea8qiSByul4slNOy6Jz4MLo50qtF1VbG6dI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721066123; c=relaxed/simple;
	bh=w7d9/Xpo41adtpkOv/qNpDaWJm7DusQ+piLOAg4exhM=;
	h=To:Subject:From:Message-Id:Date; b=lfOWJ60kWJRgbv757lMw0wJCxzFOwR/rWntwp5X8ApB1GKcqjbXtA6+JuMbZy9oM5QYZVpgQKWZve45SVBW6iqtV6UQYKxYZhVu7RsaKTDX8tRgk1c5QsqdslzPD2GRzKCvf8y1/qzVa4XO09vPgoHmzkTwIX2Im3aq+YcXPRmc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GczrooIK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GczrooIK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DCC1FC4AF0E
	for <ddprobe@lists.linux.dev>; Mon, 15 Jul 2024 17:55:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721066122;
	bh=w7d9/Xpo41adtpkOv/qNpDaWJm7DusQ+piLOAg4exhM=;
	h=To:Subject:From:Date:From;
	b=GczrooIKZASQ/XkR2HvjKlJSenggxNH4qUdTP0yxz/1MU7mJZjXnGVMoFAACFNyZ+
	 Ufal4oS+zpX6EUKjKhrnRECL3EWbZLK26lojJcF0B1LxOKSvckVIPhdxCsJ+3rcwXT
	 mg/idhFTwscISkbEQ4Ha8qwH7bNT+56mdk2AeP3cXCB5sXlsfdsfHTfZxPhh1sTMLb
	 MsjnkqgpNzgOHZJrvFT0yGZzjGiVGH6mzpAJ+49x8pvD4rc7B/ZEzPBzYDbfK9Y3wO
	 eXUrRoZ5RuQZ3s55l6MIgc1KwnLg7tNRvntIi7v7VBOpuDS5Ga0L9nyyZghrz8IxaR
	 /ZGf/84rebRpA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C1C99C3DA60
	for <ddprobe@lists.linux.dev>; Mon, 15 Jul 2024 17:55:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172106612278.5715.4215108725139448602.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c93bfc272a16df04057ebc2f0839e44485153daefbf7301f10e3e38bb560e6e2
Date: Mon, 15 Jul 2024 17:55:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721066122
