Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18E0A38B15F
	for <ddprobe@lists.linux.dev>; Wed, 15 Apr 2026 06:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776233854; cv=none; b=LuUfe1qT+0paX+b5q6lhHHaFg7+14nE2PAlXCsZeor+WqGMQtGasTiRgXCqYFptt3fAoJER50K7d+o/JU/NRXPZe3+ILOXTJMSBWt63dHODma51sJB/TgZCfdXyCbv7XzuGBQm0J/AgS+ddgoqb14iYWv43QKOSGVIzMTUgYFKo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776233854; c=relaxed/simple;
	bh=5cb9CNfWxHNafun6rIYMQ/OAZm/ucH243+GGIzMoLcs=;
	h=To:Subject:From:Message-Id:Date; b=SNdEttizQv/yINqdbHHcOhzGZFLznR9iD+Jcder4ua/Tw30kjx13mU2nhcRTWDAkqxJgs/VTqgXpPjeE7nuslJSD/Yg7Ie024moZ6Bkkx1I/u7tQYHpTSnu+KH9ktQr123/7tZv1JLkaSD6KIq1CcbcEQKJx4zfX+VAzh5BfEqg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=r6XoGPzR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="r6XoGPzR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6A8EC2BCB4
	for <ddprobe@lists.linux.dev>; Wed, 15 Apr 2026 06:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776233853;
	bh=5cb9CNfWxHNafun6rIYMQ/OAZm/ucH243+GGIzMoLcs=;
	h=To:Subject:From:Date:From;
	b=r6XoGPzR9N+vbEUPYf8Q1RB1B3KCUJcaQxGdaB6cCUvOKrT0xAIT/rTreQ2FcEExM
	 tDnpTd1L/9fogb6ziORWNvO2Dl6W5auSacRHeRoqskBiu64DXMXUvzfSL46MPfP+9+
	 SHdw8S4L8wV4Hdb4VPEH7qXeab1645f4rEskfQCPWSzNLLxvDFEloL6adzRBn3d2z3
	 EbKdRZ24odmjf95AYqJhiAAVmkjPpVuaygd1ACtOnAJvMcNedwU0aY/VSUsxx/Rfw/
	 1rgxehuO4vp2efA2CqzumO1ySMh2oAJgEzhzxB0MxANoylZbwLz6C1aB0DvMaDQUw9
	 3TY31iRdBv0Ow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9C35FA0C35
	for <ddprobe@lists.linux.dev>; Wed, 15 Apr 2026 06:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177623385368.23054.5548442237381854801.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8f74c620f86a64591d0bff365f3b5dcc9a47d0022000ed63533351dd22ebf9f2
Date: Wed, 15 Apr 2026 06:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776233853
