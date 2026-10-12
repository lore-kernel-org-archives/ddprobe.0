Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 551DC446C00
	for <ddprobe@lists.linux.dev>; Mon, 12 Oct 2026 08:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791793234; cv=none; b=DqyS0vaFc4/bv4xqylMxZp2RAQBg1qr3uPFWW1MYbCuIB5aiNAz6ihOsItQHM0JerLwdZ4SpIR7+Cb9cBVvJfv71atgWP4AWfKK8YjDWWdZlmoOcupgM2asZqQ5iEANIjfYsog7MCQsN0XzyjdusQA3KZ24l7KEsfm/r1WCYkQA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791793234; c=relaxed/simple;
	bh=9fsfCRALGJjbQl4nFYy1Kd2J1xe53OvuwbGRvGzm4zs=;
	h=To:Subject:From:Message-Id:Date; b=G25f04ivP4OPu6X05+6iKhi48pcTnhgqcRa1kYojfLba2RZeysLBbv/Ghn/vED9+jayzzGxC+WbS5iaJTJluFq1jkC0eixtru9VY5ckwyyWua9rfkqB/fwA7RknrMOmITzwUohCiruXy8PvNO92FLnMraO8+VKsj6btMXfW7Ng0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EEPtITjY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EEPtITjY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0809C2BCC7
	for <ddprobe@lists.linux.dev>; Mon, 12 Oct 2026 08:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791793233;
	bh=9fsfCRALGJjbQl4nFYy1Kd2J1xe53OvuwbGRvGzm4zs=;
	h=To:Subject:From:Date:From;
	b=EEPtITjYhvZZFtIvF36z3drKB+mYt54r3cgvxhAHd7FajgsUB4Wi578AkZ00Pcbje
	 z+6qSz/f0Enjab9mfMXs9sZjpNAgzIIXp3UaIM9AZ/ix0Ege3Zda00zH/U0OZtIwuF
	 aNOHEelSNGvBHUw4uxmX+sgC6QRlchbYgs85Le1HvE7b3yjF/5irFYvnEvE93ciXtj
	 2Gpd2dJ8cOAExDxLuKwSWMM1UFwUOsoKJdRy5yPKT2aJtiotX6ndx/C6T665JIzqNg
	 Sd9ILy9bxp0ZzNYA6snOXQ6L+hNH0DX2Gg961qVVgoNa+KhrcGBicEyG4w1kbZehDc
	 QO5GRaDwJLcCw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD1FBCA9EC5
	for <ddprobe@lists.linux.dev>; Mon, 12 Oct 2026 08:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179179323369.5756.17411134355877821674.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 232440c7fbd8b0947524754e7d44d6454d1241748b6868270cf246bc9a542a7e
Date: Mon, 12 Oct 2026 08:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791793233
