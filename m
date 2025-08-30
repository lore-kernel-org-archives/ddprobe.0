Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33F12277CB8
	for <ddprobe@lists.linux.dev>; Sat, 30 Aug 2025 07:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756539594; cv=none; b=bnc0KYdU92eV3bK3g+bn8PU8SnR+wqmrNzPxIwGYA6ZjDdZSGmHIVELB29mjJKgv4UZQhWSbOP8ZJp/Iytr8zmYIpQd5L/VBAufjRA/tGYPvh/jqs8x056cpbrUbQdtfwP1ZFASDTVdQbPwboQVU6EWxJZ0q+RX9lJOd4GhCS1o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756539594; c=relaxed/simple;
	bh=TnuAsv7BT6LRhaTXbjBaphTnsqJ30QbsmO+xirYFWMM=;
	h=To:Subject:From:Message-Id:Date; b=tRbfqrvf6+wRU1wVur60pIoqBC71W9T9GInWnaoJzZtJHK5oXRZjxEet7bd3F2Zzch5rtWtrrfhC0h6gfh5I6s1RntuzVyKK4vHcecWhluquZox+q+gBdTsvoUsuu2rO5wPY4TACS15EuNvRbTSmnbF47h+zlVcPRfAl2O5bqg8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WsLgiZe1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WsLgiZe1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0504C4CEEB
	for <ddprobe@lists.linux.dev>; Sat, 30 Aug 2025 07:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756539593;
	bh=TnuAsv7BT6LRhaTXbjBaphTnsqJ30QbsmO+xirYFWMM=;
	h=To:Subject:From:Date:From;
	b=WsLgiZe1THN08qKvXZ+BdBOZx35VC9e1jB/s679ZDAOGkRh0HqQboDUBDS6Edp5bT
	 ctQIQr3TgM3a+f5+luyHgImfHsZgwldZB6W2E0PbpByVimMRT2zZluwo9BlU45cFmp
	 5NBHq/SPtBH2iNO0av7I+M4LpgKxBOOEU1eZjXkhIoCXyU710tEmsdsr6pvFhtVOAW
	 eJBpule6dn1yH5LK+ASkLWEfl9bcZH4PQ6Y6vtVtH2RZOGBEmp9I9lpwqRg6E/ewPL
	 2R3EEXlvIyqKCcZ+4Oo7Hcvq15piSQwH08q7Dd5zpzDm5CHV4OAUfaqCo8nCI+h3nA
	 nQFgMobC2uMsA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EFC8CA0EFF
	for <ddprobe@lists.linux.dev>; Sat, 30 Aug 2025 07:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175653959357.12877.1217165291701220347.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 53ee4e3d9059dec4d4ac5c599c673e16da3f3291d88184ca52fc393360ff332e
Date: Sat, 30 Aug 2025 07:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756539593
