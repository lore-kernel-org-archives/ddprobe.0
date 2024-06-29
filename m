Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 527B02570
	for <ddprobe@lists.linux.dev>; Sat, 29 Jun 2024 08:14:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719648863; cv=none; b=CbpJrGNCabMg14vIDKTyfkwlu2BhCUaD7aUyuEZyurTgjzbQhSn7ix+HDJs/pd386Vl0xk3tLidwPDPLK14HUP1DuUdq1mAz5cahALGDhL79DOK20z9C3vnp/FeorLlEQ/Od8qGegHXl5pyiWqQDriJmM8qh7M8Lv2iM7ubmSgU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719648863; c=relaxed/simple;
	bh=0rF+HxaSQQZKjoM6YzmS0xDfuou5jB/ywj1JElFN1hc=;
	h=To:Subject:From:Message-Id:Date; b=SPRlf6G2p7njsG4wsk91lztFk7hJbx42KkezI3yFzUKur2XOKs3oQPt8KLduN33zBOytbHVMDAW50Jl1i55R70yRlF5mE2ULa+WXWjo2q323vD99THYBz7tSvlrVQ5W3yhVu6rdnQHEab7xsc+fvr06Y19OZAHZWpW2srHW4mgo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FpMFbQ82; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FpMFbQ82"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1CFBC2BBFC
	for <ddprobe@lists.linux.dev>; Sat, 29 Jun 2024 08:14:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719648862;
	bh=0rF+HxaSQQZKjoM6YzmS0xDfuou5jB/ywj1JElFN1hc=;
	h=To:Subject:From:Date:From;
	b=FpMFbQ82t5TrWUCZPjelvs0DFL22AF8czvAs9dTlcEywJ2xmc3II7FSlzcW+PA8X/
	 oLf6cUxqdF6lcKEKYNtX+cOwUQGogAqGjwSdUUh2x0c3F7WplOSzufhf0/O7wAlnmf
	 SlUgsGSOhXMPCpFi1Fsgqs82kwWfwggaM2yV8ubih2Gh8SnP0phWd+IxDJrds9LELZ
	 IAptSYYX9OyOeWkwTWDRELy52EuSsyJhy7GtoVOR1h1BWRRX394yHuZJtC83QHQwDc
	 4NnxDj44IrbScS52f3nE9PpCahTHBIPEbkpB/L3Tlw6FfaqLXv0jXogDoX4UCrmGqM
	 qVXhI52jJP7kQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BE963C27C4F
	for <ddprobe@lists.linux.dev>; Sat, 29 Jun 2024 08:14:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171964886275.28820.4659885461931237269.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ed47cc4bc0ec8ef7ff55b1867f4d8acfca66d77540a94404d4d6b73dd0b45dfb
Date: Sat, 29 Jun 2024 08:14:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719648862
