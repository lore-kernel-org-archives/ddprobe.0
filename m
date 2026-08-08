Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4EDB22E737E
	for <ddprobe@lists.linux.dev>; Sat,  8 Aug 2026 11:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786189234; cv=none; b=RIvzGje7OdvJTOXqhW6qDlcZsMA2sj881iiytC9jW2zA+WvT9NB5c9x7Q2DdvYjpmFgvB42v0B3zP0oQ121rqN8Yyb/sarcSXpEAQCxBSUWA0fF/HRq8YMXPSWuBNdGF6y8QWOUIU8X3mFHwg7D9rlv85CixflCng7W9NUSpQ/M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786189234; c=relaxed/simple;
	bh=MqR2ogQbYsDHmO5vU+b2OJdJrOMpWWyYLkSfGo2W+Kc=;
	h=To:Subject:From:Message-Id:Date; b=jdKYDSo7zYbyfqR/iWpqADPM9Y5rMk8U0ZRsd2fXlOzzfxCj26DWynuYEB2NIEZLvRuKSSocI32QZR/QpSOWHx4pqCWqZlXh1NS9iBVWD6sD/rz85UZp8varwmTqGoEqHmxIjYsizOKs8EBd16QRlheZOC11Z/DaRpq8t5CfSHk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=r72SSuUK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="r72SSuUK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D33DEC2BCB8
	for <ddprobe@lists.linux.dev>; Sat,  8 Aug 2026 11:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786189233;
	bh=MqR2ogQbYsDHmO5vU+b2OJdJrOMpWWyYLkSfGo2W+Kc=;
	h=To:Subject:From:Date:From;
	b=r72SSuUKaXVkqd5kH8vZBr+WDzxkyS4HIrIio5hlX35gnKgzBSu1gmICtoE97EjNJ
	 IW0zwc5u//+QChOT4wNhBfNR+Mq0nlE2J3RF2WtzRhxn8yMxsMp2Ixy2nb3wIBiOXO
	 52BHdx4lgbYQE86BTWpr5Aljlrg3yUbRY/wK7JmE7Q0gZY9pYPCQQ4LsIeOUOIA9f5
	 RC5O6YZo/4Rl6JKjcBAML3wTJu7cFsO7S3EdIJwlKRzro8bW6mrpxBLHGhV/h5lOu5
	 OyIw2VOdC2sIZ+n5F/s3dn2UvgLbtunKUcl3i+1qhEKEiJye5SDDohOYuBNaGnRgno
	 P25+NbU18kL5A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFF10C55174
	for <ddprobe@lists.linux.dev>; Sat,  8 Aug 2026 11:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178618923368.17156.11048985236748544292.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 269dbe9481bd3623136968312d4ee214578d712869e4dfeb3b93d5f7ed9e5c47
Date: Sat, 08 Aug 2026 11:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786189233
