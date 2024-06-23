Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 08B5655C1A
	for <ddprobe@lists.linux.dev>; Sun, 23 Jun 2024 12:02:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719144143; cv=none; b=PvyjXadFJgNfo1UE09eE1RyaJU5ASfgQlkLH7hU7ztoEIX2c7iPXwUaQ08QvgtPpUoPg+BEY/IV0s/qPVwbBOersni51y8Ahhnw4eg5VhwkcjU6lheavizAQljvfJfcQx8ci3QtMz07YhOjTUj7UpGAJ5emZrRxpOcGXvqdZzek=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719144143; c=relaxed/simple;
	bh=7iyNKvIstlGKe7CDHRmx1C9gM4men7ie4zFsVUaVqI8=;
	h=To:Subject:From:Message-Id:Date; b=Lipwzi/t0i5WpA9QWyy/PikgL6nToAk2WJvZNXP0/vWUVnQCo6TKpvP8imiF+zWnde/9Ykb+fFdmXHZYdz9keamutba9cVJXWsZca/OT3swlkxx8No87bodDiHulTPDI++oNRj2Ou/FFvg3WpjFCkNHo33/3i0atVcvDT93vQ/4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Xdl+c1w2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Xdl+c1w2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9AF9C2BD10
	for <ddprobe@lists.linux.dev>; Sun, 23 Jun 2024 12:02:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719144142;
	bh=7iyNKvIstlGKe7CDHRmx1C9gM4men7ie4zFsVUaVqI8=;
	h=To:Subject:From:Date:From;
	b=Xdl+c1w268QCTrMS5jdngc5sb+xffj72Oe1/ZQht7HW9FHNkR6lJb4UgytEHIQWPq
	 kTcuG6YoM4vV+ajKBwi80aRI68IGPA0/me8kh90UA+lvVOZj3+bc94M8RTJrY5MBtE
	 xraUKXwidApEXSSs5lMWJ6AoMEAQcjNBZPYa3ElSqj+yhV1U+5L8Un4H+ZmX7TGOjg
	 5tkJdWHLHGnkCiohKTkf2q4LuZA5xkCq3IplkN3eI9qIcIrUqthkILTqxRyFJh0F8d
	 OzVTxO9ybcO1/kDEJXpAIIwpdLCO9Rd46ZAldu29tPo+KuLXWcT4hUqhqb2RuhjRXM
	 mBlHAyQd56Vsg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C4E16C27C4F
	for <ddprobe@lists.linux.dev>; Sun, 23 Jun 2024 12:02:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171914414278.24280.17586088347130615457.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1db14889e37a8394e6e9d60a0a510dd453cb5404a93f1d39f918945af91b8530
Date: Sun, 23 Jun 2024 12:02:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719144142
