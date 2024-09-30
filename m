Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FFEB13D539
	for <ddprobe@lists.linux.dev>; Mon, 30 Sep 2024 14:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727706354; cv=none; b=Zd/schwUHYHEfIXzvRTJUpaYqfXc1wG5bsTc2Nzqe33F9s35vqqkJfagEgoPIj0J3mibGQZ3L/m44xwhyayP8hrB1EumKCuRINWt3sDzen9Cj8Jbjo1qJCLZhbsd2rHgDaGAcKiLtKxAaPzBICzctk0chNh9UoDQUBEYNdHN8pE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727706354; c=relaxed/simple;
	bh=hv2zaEB/81qjU/olSV36yW7b+L32p3xIPeB5RQXpPcE=;
	h=To:Subject:From:Message-Id:Date; b=CwUb4JkN582OyFi3EauUXkc/Cz2ihQvR0De8uL5BvcIVr7QQWFfAX5cRLTN2ecCnci+Fn9p1ZbCDeyK3ELNaU58HQUOY2D3QlCOB/UbXudw6b4SqAol6XJnZ+HYbj8Eu0x3RSffy+WjrU/5JKUvsNI6LAiOKAhcRzPT0f7O55UY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ifKIc/OB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ifKIc/OB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2E44C4CEC7
	for <ddprobe@lists.linux.dev>; Mon, 30 Sep 2024 14:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727706353;
	bh=hv2zaEB/81qjU/olSV36yW7b+L32p3xIPeB5RQXpPcE=;
	h=To:Subject:From:Date:From;
	b=ifKIc/OBFukNq0ts2BtmE7edeKxR0XXS1ila6NEYCBYVomOUViHy/FuMoVphL2yZC
	 KO/6i66LzdQWiYXwQ7m6gmYfDu3UQ7Ha5/QiayxMNmeHKqaxGuIweXiCzPyGTzij9u
	 BAboc5IvAii0sEzIDj+LmpVQSagBCDBEY3vA1RG/TW0GGVnYwkVGMyuTcLnl/C19cR
	 rDyScLfznnbIaxgb6Lbp6Iy5m/oe7sTO0kvcvV4UX9i3R/oUHTvJhtCv1zhCGCHmvz
	 TkdH3thD1rMEaVi0CgYlDuNusPKRyAlXpFxIlNcfWnWjG0gFUbD2K/xjj4vB/f2uu4
	 XcAmSYPgoRvUw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 921B0CE8349
	for <ddprobe@lists.linux.dev>; Mon, 30 Sep 2024 14:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172770635358.11487.6568208786307941950.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b12927eceef877b4f18dbc509e9ce0ced8b1e09991794c536561e97fc3f2c54d
Date: Mon, 30 Sep 2024 14:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727706353
