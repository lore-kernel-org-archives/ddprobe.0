Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F06B36D51B
	for <ddprobe@lists.linux.dev>; Sun, 18 Oct 2026 03:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792294234; cv=none; b=QR3d9WeRuw3y5E4ICvi8tqbW7x3zcHB42Bc2STOGXPgjA4YFNnpmOZV94scoq/aQHKou3ov7nqJ8jAzbOg0KRV//qEqRh/RUI/QWM51+TcNJKTrDVOGI5a6UWnaw0ANwiveq8B70D0byeCfaCg5ZrILTHikyxsk2HGXexO9WTro=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792294234; c=relaxed/simple;
	bh=Ndozy2NmxW6CV73PwJp/yEp6BKnFn/aHauq35mbi4XI=;
	h=To:Subject:From:Message-Id:Date; b=sT3pGiwYJpSOfPCGdXVXsW4yu3PeFA749u9ZkYYrSNRZmG/Fbya8nS6AKWIt1Ncxm3PIqanZJiHb5pfHZDkdED8s/z+9YSuq5PH4/OZgzX1mDpX7wYUnNhxtF9Wo1089XVHjvzUTwCnwogJTAClreuqPK2W4sQ2jpN0KIVVv2cA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZN6vF/IV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZN6vF/IV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF262C2BCFC
	for <ddprobe@lists.linux.dev>; Sun, 18 Oct 2026 03:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792294233;
	bh=Ndozy2NmxW6CV73PwJp/yEp6BKnFn/aHauq35mbi4XI=;
	h=To:Subject:From:Date:From;
	b=ZN6vF/IV8zAYETRinkhndyhjXvPFWXu+X2ClSZIbCJJ0Oue0U+PvwewvtSlsphMtg
	 rFINq6TaOI2eYaAA6g818f4u4Y5m2GnrWmx6FCc2OimpBvmV5EUuiGhNDe4vOBTQBI
	 EAJgMdn1ILtyAQcTXhhY4DXUpw30gvZ/wcDSj3n+V64fBRJPJdcxq/SE8xnsppgTQg
	 a86chVlt6sGKDGD14l+3SVSjbkFJEPivBtgbsuYvYBWtZLJHgIakn7xK1VeDzc6Is2
	 /OVbi31qqDmU8sGkc1jlUKDmJxWvnL/9uttLmy5kuIQpi2GDzp4QS5sJh9iGow8RXj
	 5NFcbNhASw73Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE210CCA490
	for <ddprobe@lists.linux.dev>; Sun, 18 Oct 2026 03:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179229423370.19027.2920518676797049601.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b14bf5b906fb446a251274a949fad7435c09cd0e8875712e34c5a51f21390b32
Date: Sun, 18 Oct 2026 03:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792294233
