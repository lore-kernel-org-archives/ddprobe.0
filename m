Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F34021ABD5
	for <ddprobe@lists.linux.dev>; Sat,  6 Sep 2025 06:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757140794; cv=none; b=CLN4XujmgY1PlCRQnECC/EvUwVxUQ/fthvG1zN6B6CBfsHVU6jATQ9C0mlND00lMQR265juqLT+2wgLHQ2fvIA2m29Kc2aGULu1Nm6ZR1dYRQrXP9V+FSxutTmI1dVWIZ+rB1RvRhlFUItttIP60UbiHBNMjld3jvWDbhassSkg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757140794; c=relaxed/simple;
	bh=Vh2Rh0PgEl6jpRVqfjVG8Hb+YOKv9GiZhEnUVwUfTLs=;
	h=To:Subject:From:Message-Id:Date; b=HYosBkJ5kO4yDSlFoC08CT2a3MqJYqcFJGOKvTZbTOatFDhY+5i6dy3vgedJhzqQASZdZEVOoR2bKS1Sm1H8VU751CoxKKgdy8BCiAxN9XBSo3jcpFr5zB19idu0PhcQkyD2I2iOS2G3CIwFut8//48CFbnwXlDydofUCV6F2Eo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hYHZnHo8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hYHZnHo8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2518C4CEE7
	for <ddprobe@lists.linux.dev>; Sat,  6 Sep 2025 06:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757140793;
	bh=Vh2Rh0PgEl6jpRVqfjVG8Hb+YOKv9GiZhEnUVwUfTLs=;
	h=To:Subject:From:Date:From;
	b=hYHZnHo8I3qLGb4FLFtRIwjIfMw5QtkQfwBj9Y79qb8SF9/B46qIxQnZrdZraESh/
	 J613jPGkYmRY06sk/uJdR+UejjIXPVROjjNdTq+yiv9DWYC4/6vttN1lTd2PfEUAnu
	 BuH3cyYeAAcmGWn6f9xRbs5YDvCjG9ShCgPQB7x6KNUotjPH2mzcF8E9pfYS4+6+7q
	 /zEVhG7W5uviJY3KwS31+SRdondgwT5GrchtnY/PG+Vvo2TYOaLKjJg1/rRW4XJEDr
	 mTAHeFsQQw6Peb9fQEoWEhcbODn+NAo8x2kDePS5whOPz+eKGIxtooLYvyXcQ932U8
	 HOYGVJotimxQA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F2D8CA1012
	for <ddprobe@lists.linux.dev>; Sat,  6 Sep 2025 06:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175714079357.24950.7243705367832360018.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1e46a4917499c67a970ebac8d8fc1d7f33aab1446c26603d9dc229d39fab8ef7
Date: Sat, 06 Sep 2025 06:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757140793
