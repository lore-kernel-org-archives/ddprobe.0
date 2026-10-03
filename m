Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 439FE344D91
	for <ddprobe@lists.linux.dev>; Sat,  3 Oct 2026 22:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791067834; cv=none; b=U3auvHaVrf37HqGs5O94kXWTa7ojtZlVy2jtjpvvsLgXEcQBftZLY0YQO9lP24ntI5SueWNLqzYzIRjG5CG2WGySVD9bYuwxssAGPsk5tjboVaZzkdN4x6mcpoAjGGnW1gTt9HKdhTXDNRcaKDhbk8t/dwlKQZ2MShmBDZk5cWY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791067834; c=relaxed/simple;
	bh=4BN9vhz+8/ku+BwTtiPLW0BT7ijO0nFpEDTknstI6yE=;
	h=To:Subject:From:Message-Id:Date; b=j8gn4mPyjdtqRuX7L+Anb0fmPkQxVsJreKIgypMwG7Col8fHrxPOuZoy9zlCew8HOvMgL4cYTLAw2Lqy83oNT5IaQ7eJRraor9ETTfKGrCCmHG3IbLESOPAKiPAV+beMdVjFKI9X8TwsmSlD1IRofoTrIyVNULjKmomDFlS8gxg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=K/wKvafE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="K/wKvafE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2BD0C4AF12
	for <ddprobe@lists.linux.dev>; Sat,  3 Oct 2026 22:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791067833;
	bh=4BN9vhz+8/ku+BwTtiPLW0BT7ijO0nFpEDTknstI6yE=;
	h=To:Subject:From:Date:From;
	b=K/wKvafEYVDuYcoMaU0CgNhAGk7CsnouI/LmlSuq5f5EGmZTgiOLZDecJ43IG8wp3
	 PUjLdf2HG9tbBESq+umH4lxsZ8o6cokPf/OvwrQi16HNyuREgyQ098o30ROKl0CbRl
	 iLTaSO7oG5mtcirx4zJ1heVFNexzKuvBh4noVlycjUpv+jcfs42MFO0ciIC1svAyPd
	 a7bwRs77YrwjHq8m4adRv4YJXVYHMW3Z8arKv4pa1VLwrsrhV1wzz4V/zE3+kwttpj
	 MqoyWOVcuvJz31ruPc62Cn8Vw/MAt1n3fhasQ7k8+SHRtyQRrGCQrkM/nOAnndMLGO
	 vsg0cLoTon/5w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B03DCCA5FE4
	for <ddprobe@lists.linux.dev>; Sat,  3 Oct 2026 22:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179106783368.23602.12763968066565850784.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5ee615c0a6322f066c9ca87579ce247d38e696443b46873ba482906044fdc61c
Date: Sat, 03 Oct 2026 22:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791067833
