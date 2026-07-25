Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 52440175A7C
	for <ddprobe@lists.linux.dev>; Sat, 25 Jul 2026 12:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784981434; cv=none; b=Pj8UUMjYmwmJAzcOrczd80/uyDM/UrkLu1/0HrqUg/A4LOKT9hMReBziJRjvxvi3k4aFN1P5calTA1vUoo9+q2LiH5goG+BEbzV7Yl6tDMRO0es373oFevD/vGcT0wxM739chfzNi5N9gCU++9u+/2Nc38a1inoAa+I+Xi40XUM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784981434; c=relaxed/simple;
	bh=/8kkh2clq+jEt8qJcbz1l+C5i8rH0akL14E1umiKp1w=;
	h=To:Subject:From:Message-Id:Date; b=n/zN0Er9ZjJbsJLpfRS50UKIkrDYePYSc5iMaQz9M6XCdK1ynZ5b2kO3lXdu3JX5Ka/leg1uIyRINYIJvL8ijA5W1nGovrGf7A/CARz5aS/TQ1lxjuUqHhLsgO6gnPhO5GT5CrWDagreas4wNjq2zBYknzQJqPZMbK+uNybHFhQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=baxlCCXp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="baxlCCXp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3D89C2BCB8
	for <ddprobe@lists.linux.dev>; Sat, 25 Jul 2026 12:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784981433;
	bh=/8kkh2clq+jEt8qJcbz1l+C5i8rH0akL14E1umiKp1w=;
	h=To:Subject:From:Date:From;
	b=baxlCCXpA9QUnK0xiDBF2yuasm8TcuHdALrM7HX5b3WBt/9gwHtdi//XW0pkLyiBD
	 JsPdaApHQHKWbBk6RUooXVaT+h/eqkAs7j1MEpDCpOQTVy2fS6cMcwwDe5RUlV05XL
	 sidY0fer8//nfS45qD2hG46OAyA43mw4cx07E9DUeJ7lsJBMXHs4ZYVAjSsRPk+TnF
	 xmFzKuUs1BarrR8Ytqgm0kLB9FyYsHAllzwwzOjfpiLAy02r/awYWn48ZKS+UjKAb3
	 0gjC14Bv5MN1QuVYWYUDKiumwjYhSAiK/8UXzxbbx9srSLXM3or7t4zhANWvklsmo3
	 AGuNgDOoPxwDg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD895C531D0
	for <ddprobe@lists.linux.dev>; Sat, 25 Jul 2026 12:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178498143368.2880.6668286672182191964.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4ca5e17cda549d2270c51f4f8da7807d27b34f04ee0c443986680343bffa3b2d
Date: Sat, 25 Jul 2026 12:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784981433
