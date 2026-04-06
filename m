Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A9CB3803EB
	for <ddprobe@lists.linux.dev>; Mon,  6 Apr 2026 14:25:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775485534; cv=none; b=uT/AIvVNp0pTZNtXAM6TmEXd2WtGn5HG8YDvdId0x0jcD3M7EhXgiIEdjXqCuciCmIUJMqrWdvnTBIwvusUl60m4zhsLLEAaUnuMYTqEXBSHM+kfLpxZuC6y4+fGXIt+v/FTB0WGX/dMwvHGI83gZr/6cmm6hjl4O/e0PEzxnjU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775485534; c=relaxed/simple;
	bh=BmPvct6CADIr4pznj38ioHMjX0boFu+3VdhV2SGHcpk=;
	h=To:Subject:From:Message-Id:Date; b=kPAHu6a+ASnjM7BJWkq3sPN7wSubtm/hqRr25jFcVNnJmwToWOn3exipBJxzNr95v+JUzbrsNtvq78xHEG7G+rDLX0Q/b8Nlfif+UAKHfHpSQ4iRJ16/qmbRSe1cS8IkqgzYoqGU90b/7qIVB/jCuZSaYuhLpiigcTxj4QCch7k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tAPN1qZc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tAPN1qZc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BDB4BC4CEF7
	for <ddprobe@lists.linux.dev>; Mon,  6 Apr 2026 14:25:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775485533;
	bh=BmPvct6CADIr4pznj38ioHMjX0boFu+3VdhV2SGHcpk=;
	h=To:Subject:From:Date:From;
	b=tAPN1qZcS/l2hpHG3KI9pCyJD2MohsYN7lLPNEZe2sgqe0kHqJc9E/s5TA8RIZwl7
	 Ll21Ta3sVsibJ9i6uq/OZSfkZ3stzNZ3Wd/rmPi3hkxI+QK8nSzuUzh9Yqum2bVpOc
	 okR7XpQvX5f0WYZjsZ5F0GW21GyPlCeLifpwZWOif9qm8B1Tdw3swsvCMBfdfvTKII
	 Os+NhAcyTTcYcvtT8me0kFxNfX3i+CpK5ZVPu2a90Cj7UvTYMrLSy2t8JExo0Wc41v
	 8RTwx4Q6l6PaFzr+HHhEuNhEJMpRY74jZe5dmshXOfpa83wwIrp7Z8j0ambjs3n+Ne
	 288p6eIDL5Esg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAFDFF46C45
	for <ddprobe@lists.linux.dev>; Mon,  6 Apr 2026 14:25:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177548553369.15511.11409033132815236414.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 91604578f69c606ba3d0aee2cedf1e347e188ee0d5953392cb5096a7fe9de52a
Date: Mon, 06 Apr 2026 14:25:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775485533
