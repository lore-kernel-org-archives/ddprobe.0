Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D40F1DFF7
	for <ddprobe@lists.linux.dev>; Sun, 13 Apr 2025 12:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744547394; cv=none; b=P5yhsHdyf5BZKnwYXEfxoebuuRi/vEqS6l0WRU0DCrEaaNHTuyCk4lVK5gb6Az7gx8WemfUVjz6NJm9qbeH8QLgwugUwI1JHbj0e1YHgFr5l/SQdMeiJceQGwXmobdzhZ+clPRZA07m8r2eji32Hm0HYO3bOjqasBYL0Ho3ren0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744547394; c=relaxed/simple;
	bh=jLLe2YVcMGG1+grz8J/4WFs4KcywAFFHBrAiv6Iu73s=;
	h=To:Subject:From:Message-Id:Date; b=Wdk6igDoYe/fFa0pF0bCH5OshhV66dOK8kaMjr7A48hcpVANKIfEyGqAFiSuszZq9rPdGvbs7e9LppZnUlqPychh2yT60FItpVt5rdfw+CaEfqalpuVbt3oVX0lKyDeCiv8mzCZ3oBQ6pikVaA1ETz0jpJX38dNNTUctf51f+JU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GDik4Ps4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GDik4Ps4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD625C4CEDD
	for <ddprobe@lists.linux.dev>; Sun, 13 Apr 2025 12:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744547393;
	bh=jLLe2YVcMGG1+grz8J/4WFs4KcywAFFHBrAiv6Iu73s=;
	h=To:Subject:From:Date:From;
	b=GDik4Ps49OX0eOPfvtwQ4RQwPkWD9ZfzCP3Ln+KUZ9zTjNB9xlKO5USMFamuIKoh8
	 rEZ2Ysl1SW5HPJVmxYIV4ANOCPxozf+hw7GsJkI+WM6bs7J5kLRr/tgv3r/ZA9/zOy
	 lTpLhm/FruNYRKsZyk/r6ddldDKHOte0I1AhtM3/r13LV3M0kdWH0sTVwue2oZEvAK
	 3cetWwmpxcUavZ+xkyoUuJBTZPKdyhdyIoR0IdoBoWkWV29Zhx3qTB6VkrrUpyPc1E
	 Grb25x74O0MEIxHuxAMp9XrMD5zRpyxJQ0AMVG75koPLvS3be0JDkDFko1nCEDqUlX
	 e0qap8OFO62Jw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98F23C3601E
	for <ddprobe@lists.linux.dev>; Sun, 13 Apr 2025 12:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174454739358.3804.9901776547643002105.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 879d0dac7e311c064277095665a28e01ead207ab9d4218ba4302bf5855467ee8
Date: Sun, 13 Apr 2025 12:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744547393
