Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35E0C3128A2
	for <ddprobe@lists.linux.dev>; Sun, 10 May 2026 20:10:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778443834; cv=none; b=a/49kATR16Uvys2JK4nlQFhKAgoEx8b1xARU1A/wwylHfVATVfourb6/mEjtCbK2BO2JtHQlUM7bRtNMF/hi/7i1sw0b0/b1KI/XVODAUkaI2U74oj/Se7JbpYwWiXTziQbzEDRYhAYB4cK3E6b2Aw+VNUE+BE73/GEZ88c3aa4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778443834; c=relaxed/simple;
	bh=r5WbG5tVkFlzX4DscDY5uoKzeueHuKCz9mjwccdgS/w=;
	h=To:Subject:From:Message-Id:Date; b=ALZg+PJ+7YN6Dk8PV+ZYXm+0qjUTJnU7GuFDaurG3Kmc6Wybe9+D0uqxp+jqzm8gLxAFZA56To18fDEbkMF4H8SjTCtnD+mQH2ht43x+00fwGsblBcw9KNgMjGtbiCuDv+IXpyfSrMglipc6BRC1Yv6veA0icbhA/rQKlos8grY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oHMomXWq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oHMomXWq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BD1C1C2BCB8
	for <ddprobe@lists.linux.dev>; Sun, 10 May 2026 20:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778443833;
	bh=r5WbG5tVkFlzX4DscDY5uoKzeueHuKCz9mjwccdgS/w=;
	h=To:Subject:From:Date:From;
	b=oHMomXWq3CccoMJOLdTiARwLlblP0tg9iz3zLVBKnJXLJugIdO+k9wb9fuXae1Eth
	 HM66sfrrCnroS4iMm59WBRbUjHQLfqaBF+khZQ6YqfxBhLZASNuyhdkVYGn8wcxR6y
	 s6Ayt8B+kHMIN/Qi7N+61j1ljS0I/jO5OtmVnFcj4euufnVEmz5LIjjHBC8YhbTc5o
	 E8OcYqenFkvkr4oiWP1lE1FGmYzwD0nTFylM8FobSkr5WVemOCP+9rY9wDNEhSNNuB
	 ae6sc4HU41dQH4w38xFYE5Sr0kaFJuYHXpFbChcecYzonju45MUhnKgOqX5jevIUjg
	 nHNkPLjl04oBw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA473CD3427
	for <ddprobe@lists.linux.dev>; Sun, 10 May 2026 20:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177844383368.12189.10721152622400561909.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0b9c7451a53049ffe9fe4b817f0a0950cbb785c22a309331c5e75a4c77878f77
Date: Sun, 10 May 2026 20:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778443833
