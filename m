Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 66ED0233958
	for <ddprobe@lists.linux.dev>; Wed, 14 Oct 2026 08:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791967234; cv=none; b=WLf+DdttkNszT38e9jvbqpVhzQTJPkc4EdAaEsRKZnrzHUh1ASGZ2SVQ8eT4znb5v3mZtnuV9JioS5YaJVtXEiLEXyKHa76xKeeo0Yj4W8YTiZFtyCdtkqB71AOUOLWZHbx6WO3PdSA1o+adNyG+yT3/aOsJwfxIg2NTTaT0+NE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791967234; c=relaxed/simple;
	bh=X/83LXDSweIHsGY6fns5l1Tq9pgTugzdPoXpD/yaxuk=;
	h=To:Subject:From:Message-Id:Date; b=HKDqTTdtxMJ/pDf+KjBBJ8DrbqdcZ2iD9VUV9ffLqQc8NqDa959v8lSi7HdcaFaTrnTQJVrHsd5Ug5m2SzJ2vcfv9sphmlmABnXjI9aKgHu9M7kQSiCMigjtIOZGGG+0aBV4T0bU3kyao+i1SDcYU3XFgOGNTUZCDPpIVGsbXGc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BezlvayI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BezlvayI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1C38C2BCFA
	for <ddprobe@lists.linux.dev>; Wed, 14 Oct 2026 08:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791967233;
	bh=X/83LXDSweIHsGY6fns5l1Tq9pgTugzdPoXpD/yaxuk=;
	h=To:Subject:From:Date:From;
	b=BezlvayIVpJExNC1gJz/by9mCICJhBBNu3C5VGDv/bpLWS2vdfyz3s8A7gqGte8Eg
	 Uvn0uwcPX/qoDnWNxLuYuSWrw5yK+aAQAkUmRuY1GisIIhhJdVNB2k5QYKao+lywvA
	 0I8WsW6bs8dJXVZ8BahKQJaFbDq8oF1DZubQ0QqKHTt1X3oJUiAa3l/QLdwxe3XPjd
	 qsyqtqb02oolEG/uVOMevIdENzbP+ziqIGGEU9MIjClRERsQ/YnwxYF001JwlDhuF5
	 7ytJuW1bgEHJHAZf6A8TTmNUoJvgSP/FJRWfSaWvcCDag1P/bObskzIC6A4YZdojLp
	 Cy4afFeDOXJ0w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF0DCCC6B27
	for <ddprobe@lists.linux.dev>; Wed, 14 Oct 2026 08:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179196723370.32431.1374846892792401564.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 913a0d61b25b36593a2ab80cd428476962b8cbbfb2ec7423d4fd61916a7b954d
Date: Wed, 14 Oct 2026 08:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791967233
