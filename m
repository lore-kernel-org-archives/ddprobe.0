Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4823F3CB8FC
	for <ddprobe@lists.linux.dev>; Mon, 20 Jul 2026 08:18:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784535514; cv=none; b=m4YKM8iHXV18p39ygju1FgS4xG5iF0HMM99cQD/kOn1pzwRJCWYLx69sjNhLHGpsCsrtEkSwjrj74JTS41SbuT3jGoG4eHboVZ1dnHwtI3lJjhWH1H8rV5OY0wrp30qHB/EuqXP9kpo/KqfOsAa83J+J/WLeVU6ni4ZdUyKEAgs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784535514; c=relaxed/simple;
	bh=y3dqwoYlSwCj5QO2mfndwwM8dgIr7xeleNXqKPGaitc=;
	h=To:Subject:From:Message-Id:Date; b=frKmVfda9Ofec8lbqznKc5+7PbVbotjnVT2R6+0Y9CKgfTIsS3PW2rYkU8FfmtWDuwKaUV6BDUpEdAQBayfGyjz3WS0UEfF6na2l/+qRNwaaiDffUwTjl5I13OLMPAXVcwiYTSuaDa8xdaXYklxYQ/TplKc/pXvV1JFYrXuxZ4c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ce06Jxfv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ce06Jxfv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E16EEC2BCFA
	for <ddprobe@lists.linux.dev>; Mon, 20 Jul 2026 08:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784535513;
	bh=y3dqwoYlSwCj5QO2mfndwwM8dgIr7xeleNXqKPGaitc=;
	h=To:Subject:From:Date:From;
	b=Ce06Jxfv1sM5HXYduHaOhE1nYMQ+AUO6EPn/zywJUyKTdAFEeboErjkntPsHo7ZfH
	 yJVaJE3hrLM8z+cfed0E9hfeQJGSbjOCx3qFjXQsANkPFTrKej+xhKXbbeOFPLsrgQ
	 aKLVX52fYsUf1oSuJFr/Cn5I+8hzEyr/AVQ/8qftXUZp0mb21yu1jiH2jKAI8XEZiT
	 aGK9hxdY4I+W3/VAAHsds33eDK96280skaLXhAErgvg2yo6hwJFBXFyM2b3915TDHt
	 yKq1n7Oi6542rv5zm+0sSJK+EZYxBQadUOewgI7Oxz/oSnGqBIhL32LGCTOwLg7oDG
	 u4S6Jybr1BQ8w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BD3F1C44515
	for <ddprobe@lists.linux.dev>; Mon, 20 Jul 2026 08:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178453551373.6902.7762301783676821845.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a2e3af1ce8bc1689a87ae72455fde50d1e6d0f94e7ca444b29e2aae5f86118f0
Date: Mon, 20 Jul 2026 08:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784535513
