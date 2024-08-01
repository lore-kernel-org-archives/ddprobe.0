Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3FF04157476
	for <ddprobe@lists.linux.dev>; Thu,  1 Aug 2024 06:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722494754; cv=none; b=t8e8M8qPbmW95QkyvZwhmoDA1Lil325KMcIp80U1+R+pi0Omsvnj4i/q20bOTYZjU5UNPpI+QyGG+CKtqMcCsE27z/N1caCW/ZlgoK2/KoKo8NHbhyEtP5oLhBfAQLRPEenCeZd726Bjxxg+GcOk58RmD4PSMcumuNJCfexiNlQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722494754; c=relaxed/simple;
	bh=3O+e+fNw7o4TwEUgkNU6BieL+fnfBwz18MYtsKeT5uk=;
	h=To:Subject:From:Message-Id:Date; b=g0Kg4opSuRj8B4XMAUqvWv9s49PWOzmSwQpUmkQjT+TuvxkyARslsj0g7lf5ftyb926H/ZCPLmLFvlWXDjb6SMfWId88hy6CFALF0ILSQACHzMWYePjboly3UpJFOEng/Qfk1bFalICDoDyZzoO0gLXyKQPj8Eq+Ddshg81IxzE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=o1BJFUiG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="o1BJFUiG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D145FC4AF0A
	for <ddprobe@lists.linux.dev>; Thu,  1 Aug 2024 06:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722494753;
	bh=3O+e+fNw7o4TwEUgkNU6BieL+fnfBwz18MYtsKeT5uk=;
	h=To:Subject:From:Date:From;
	b=o1BJFUiGZC78p+MnkN/f7WDDSJHa4abeLKm50h9EhsPoNTDkUEqkVUjQVsEVOj7PK
	 ICD8TbqrJeIc+kqkeYulbW7Z7RqCQNdr4xtb13JThYWFsnEpzawn3AOfJQviM6LvJ/
	 YhomefBK2xcWNAZQijIpW7Htp9cF3lCLDWZA/YM5lpAjtYG1nNZoVWrz9hLYfvGFFz
	 QrHS+vrXCg92jS9SO5DDw/uKctuUmAEMZoBCSM3Mw+h5JzpuJRt8LZfmoEjH6MY9qS
	 aEQOvIx104IsywDbGEeI2WFd1g1VPuOVCbpR3z48DggZn0rrJgM6bZyqIeGvnBGztS
	 QDYeXr57u4frw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B6175C3DA64
	for <ddprobe@lists.linux.dev>; Thu,  1 Aug 2024 06:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172249475371.22238.15957219428010927150.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 08c7465d57748866df8a378de3445245bd29343fc411564450e2dc0e309c2475
Date: Thu, 01 Aug 2024 06:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722494753
