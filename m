Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5AF731E4A4
	for <ddprobe@lists.linux.dev>; Fri, 28 Jun 2024 13:14:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719580463; cv=none; b=XaAoXJrit6rnXM/vsDcODg8jJUzzs3CdBu/fnhqsMc0RPiZF/L63R1yryA5OTQCoRAPETdLV2jhBwVR7Cw9oju9Vjri+c8qC7IXaJROcgC5UR5Ohks5jiluEv8htC3r+TJ1AAB7kDa87Jy/Y5aoqUS72E/yc5/dMKE02sZHu7P8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719580463; c=relaxed/simple;
	bh=6a5ABZiG6a7YqmnKqLJmbaUMaX+7VgdFnXdzKSee870=;
	h=To:Subject:From:Message-Id:Date; b=AxYn7jle7oANuxSSM80xDVU9+CH0ofmHKb0ooYwqnpGTuhdcF86SwxMj5kl4ag09Ty+DnC23Z4b322JabNMmMnnX0b6odwlNOGeyWhcE/zTZw3ozr+9eDWM8358BXsmwJwDk0B/jtnjghkp4mq1WG6W7mchWzuAi/vHrxdKqTsA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=G7zUerV1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="G7zUerV1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DFC61C116B1
	for <ddprobe@lists.linux.dev>; Fri, 28 Jun 2024 13:14:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719580462;
	bh=6a5ABZiG6a7YqmnKqLJmbaUMaX+7VgdFnXdzKSee870=;
	h=To:Subject:From:Date:From;
	b=G7zUerV1M50nbAd5KnjWOlH9+fAV81rJoYmimU6L2Cu9c/DB/ZyzoIrLxXrkLSVSa
	 BoUPtnz8D+tjJPNC1v7TEmf3XzLfvbKteR/GW0JBzeXYijjkvD274Svlgjj6BZ1vtw
	 ZeQGGlT4JEcItQFx+1qION50ln6FP575mmTQ/f/x7BYRBuHufOtxpzU+UDPx5/YWwf
	 UWuN2VJNf25xp3FVGKX1UL3rxJFgAMGQZPkCCiW2IZF5evStKqZC75z+HEDYhI1ANF
	 VBBAHV83JMijTzk3LFsVXXPXjdARmJmF0tObF5VyNnJngpQda3J9NuMwISm+Calsjw
	 4jT24AXUz5cjw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C9F87C2BD09
	for <ddprobe@lists.linux.dev>; Fri, 28 Jun 2024 13:14:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171958046280.13705.2746678127606202672.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d696cc2b48567c2a27aa2fb1724f825a5d5c4794b704df3e45d7de63101df133
Date: Fri, 28 Jun 2024 13:14:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719580462
