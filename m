Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32710277C8E
	for <ddprobe@lists.linux.dev>; Thu, 14 Aug 2025 07:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755157794; cv=none; b=tuVg81+fmJzwj3cdK0oQba43NCXpcBIJj0UW2Hd6sMRpMEZ1LwOK80o0dQvpUmHQva3IN+veauFy66K1Uq+DLGme+29eYrfRP2j8Bj4xOZRctioGBuw/W3FbJr50aXAneIG4BWWQq4w7zAtWTSoEdcpxxlaoqg31Mb6fnkk0L2s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755157794; c=relaxed/simple;
	bh=G61ClXT362fbN6uFTaP5PKNvvbxum38oSwL+Izg7cB0=;
	h=To:Subject:From:Message-Id:Date; b=A1QGEiEbsJHg8EPbXX94igxtN4vh4rxYn67JI+K+Hh7v2AubTge5zITAHdaaAIXtTCsudptfadDkbj8uX1GlTFWG3oiYWH2XhDIf6rGGFPoBP2CJdFECycwLjUu2xo/tP5w7fllApzEPSRaiuOnehP5YIeXqSKvF0Sd7MFyVYtg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eg9D8Pje; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eg9D8Pje"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0F35C4CEF4
	for <ddprobe@lists.linux.dev>; Thu, 14 Aug 2025 07:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755157793;
	bh=G61ClXT362fbN6uFTaP5PKNvvbxum38oSwL+Izg7cB0=;
	h=To:Subject:From:Date:From;
	b=eg9D8Pje1VAw7BwuXhafuI0TJqE1WoEojKWf8HI4iqux4n09FiEJsE30dnIWM1c5M
	 UTW17dBdQlUdQHv3QAefqHWXeyWLVW/jQLCKHJhzHA/RQUZ884Y8woYkC+ivIy/xQ5
	 J9UIYB8W17vlvaOaPY4QejVSkwY7vYFV9wT0xoYD8CnHkLP0XrohU+3CvlV98s7/5l
	 OnZp48jDTZM7J++XlQA2Uup5WLvv7dF+R58tJKtjafml3+EAbtMOp7USOMMyDukbhO
	 c+/hJeXC0kC440cuCM+HaeOu6etJI8qBDBakf4wpXGmNZ5RfuU6Buj+/z0AWRvrU/e
	 ALHObW0OF1x1w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F3B0CA0EE3
	for <ddprobe@lists.linux.dev>; Thu, 14 Aug 2025 07:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175515779357.7124.16141767971468607036.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2273513e3fd873fcc1d603c5995502d11e0c85af99c30b754c34838c21db280a
Date: Thu, 14 Aug 2025 07:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755157793
