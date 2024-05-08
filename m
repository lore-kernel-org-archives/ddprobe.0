Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F3B6846B
	for <ddprobe@lists.linux.dev>; Wed,  8 May 2024 02:12:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715134343; cv=none; b=fz7+ox8o4ZafJ1D2XzE0ON6fMNl5X8rCOPDGJMuNQoL4XKTgt/GQvtQS3jeAW/PVnvzGy/L6BIIl+EBa9DSW/XX1El6O+As0pmphGxQiHMpcOSkFZIROy3Ybv8f9ZcD7sITnemItD/lHk5vaXcWgHYacs/O2SYvNabXVUPyazPk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715134343; c=relaxed/simple;
	bh=GslkfWShcl3byh24GNB1IUP77TU5WmRCDsqQDDePXCY=;
	h=To:Subject:From:Message-Id:Date; b=E4bASXvYusQ7bz5OBp9CQdv2dKWSKznsRsLi14Z/0moEeiRBqKdBoll3BdAd76DZ0KwG3vuvVzitJ7IPtMIWHAt6ukMozrtH+5qMMBMQ/mkgH98bBT9IYavr6XGrU+DLykHwMQYJE1QVErUlWAeRfo+b0DbBbnm/5rGs0pLfMOo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SZf+W0RA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SZf+W0RA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E48B5C2BBFC
	for <ddprobe@lists.linux.dev>; Wed,  8 May 2024 02:12:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715134342;
	bh=GslkfWShcl3byh24GNB1IUP77TU5WmRCDsqQDDePXCY=;
	h=To:Subject:From:Date:From;
	b=SZf+W0RA2srzWl8+si+Z4jWlVnHKxozKViEWDW6aMFbyjpqv6CreQaduzCGEyGQPX
	 6MGrEM/LB8+r8vnfTIM0LDX5Xfm3QU2XlIw1ur6XX3ofIBBU6E0EwrvqWR9zaj7iSs
	 65Km534t2/jAB58AQBtzexSqv8ghvrtXQkDgl6WzATWqHTsnc6TXqu9OvAyNrM2nH9
	 Pnr2qYpBxPGjngEGn+OanGGUoBwBX2jPr/B/vKm3IbgEndkeBDJZfSol8lxJk0aAGT
	 yf0zB3VGqEJ2FzfFxVd7J9lvXd7xfsooktMWR/Ck7sqgk1nzIfcolD5cvs84/McNhg
	 OXZHp1p94l1Zg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CD313C10F1A
	for <ddprobe@lists.linux.dev>; Wed,  8 May 2024 02:12:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171513434281.4295.13819380538386794103.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1e9838d5eb099030a612f5ad933d2c0f930fbe0de54b804b2059560d0a14a386
Date: Wed, 08 May 2024 02:12:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715134342
