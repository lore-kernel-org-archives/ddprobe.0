Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 556EE5477E
	for <ddprobe@lists.linux.dev>; Sun, 16 Aug 2026 17:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786901434; cv=none; b=huaGx+kg9Fs6sQlsWaakPqD4Im0ZdvV+JLt4mGpY9Dcr0oPCOX/J0kLy+XOVDULF1bWWOLItWc4DQiCxIRCvHsmb0pgj9A+5MBipgYrq399foHo+csWNa3FtXa1Ei/RtrQpq6W77FGmyK216YIzQAj9Mf06GTP8zS9YuQ7oeKfA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786901434; c=relaxed/simple;
	bh=B9Lv+Z30Z0PriOAwdttFSw3ngrh0AYwj66PgCPVnzNM=;
	h=To:Subject:From:Message-Id:Date; b=Kh/uI6zF98kg/1w+SrdzBPGZhVTtu3GAjLIy4yesTFYA+7QNBLi09rTTeBJ9lqX6Bx23P85pWKUEtuhZjDoBnxqN9p6bx3z2zJuP5RbakT5Ns7nNx/NGS+810ytnLDyTByMgPOgaB+8l1wDuivjHyPXj7RgwlYCl7aaRIQoyqrQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LT46L25x; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LT46L25x"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0344C2BCC7
	for <ddprobe@lists.linux.dev>; Sun, 16 Aug 2026 17:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786901433;
	bh=B9Lv+Z30Z0PriOAwdttFSw3ngrh0AYwj66PgCPVnzNM=;
	h=To:Subject:From:Date:From;
	b=LT46L25xKBpGfylOjkixWoGjGWjePaIioAJ3K7KyiI0DsysBu+oWKlgQgZPzqop05
	 l7khw53mdak+LagSR7LmRq+DpoPIhdF+n1UQvEWB+YOhjr2QfspsESg/Y8rljeoj0g
	 sp+meMOrj7YMysqREy0PIB38aILKHRQnjCeLpLhb0Ho1NVbyG7yDXvIopC7wm0JftW
	 2h/D7oYzBFoHiPUeY/c8nU0D1rPJmSsnEcwvqEQoDsIMyoD11Fj2Aqk1xL3OTyw/Sa
	 eYeAoaXbHp5+zyJTzGVhhSY4ampVQwjXnaaMAw/g5cige0BZ6tfXbQaKPVw0zDSiBL
	 +Ei5P8IJ3ZViw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB32AC5DF6D
	for <ddprobe@lists.linux.dev>; Sun, 16 Aug 2026 17:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178690143369.2682.16878647358473999909.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6edeb51e7e59a2938cc7badc90644cd9441adfc99039f2ba055f60329d2aa3e7
Date: Sun, 16 Aug 2026 17:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786901433
