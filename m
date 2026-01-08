Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DE4F7238C36
	for <ddprobe@lists.linux.dev>; Thu,  8 Jan 2026 15:43:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767887034; cv=none; b=oFAB4SQyknizbLCsZgonLWzfp7V7SZM0QlEWSG0U0sl149p3WgE+ge9cemRBd2CsyBVnoHVEuI842R2wcmXPl0xbKj93dABR3P4HvRBetdbUsgY18DZRoLmh5pitWZ0z0ahYUQAkC5106hiPP8KAnsbISeS1b900AYlIDmEENMU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767887034; c=relaxed/simple;
	bh=WRAEvq51hzSBGatTEl4UptPYOlrGEBmGiBBbIwCfNPY=;
	h=To:Subject:From:Message-Id:Date; b=K6Xb5IKvLYNwIy0SPLwKrG50epSD/ibSgJwH0itMWgqxXanWzut7voXBX1seLIsPjVDPgy2RYZlDq18cmEhEJ0jcKRi9RpF0X51XpdkA6f9FzXqim0Ch8NlisbmwIs6NbLX+OtdCBl8ThfI2BPYPp/4kZzBh09bHuax9IAuI0TU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=A2yzap1A; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="A2yzap1A"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E963C16AAE
	for <ddprobe@lists.linux.dev>; Thu,  8 Jan 2026 15:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767887033;
	bh=WRAEvq51hzSBGatTEl4UptPYOlrGEBmGiBBbIwCfNPY=;
	h=To:Subject:From:Date:From;
	b=A2yzap1AYyVdGT6CTCm8OPl+8Hrxig6nXB9vwn615HRxTY6j2G7cBybwzZyLvjLrv
	 ckoZ3FmSDg/0IORkOyngSfHEVYJLiXjeabtE/P8ZHaE4EOcd/NSMVFodjK8h19d+8b
	 3o2bit/egNq79gZlZ4F0VL0st+i/5n0NeGfBGN5zs5bCBcDuOWeAGWg4ZLopHBkgeS
	 2mvSkdvv3rJ5haE8aRdu8iVys88iq1uzhSyH4eAiZK/aR6OICiTZSpLFg8V8eBvNnY
	 ckrJCatm0hQ7IYGpRpohC6ofOfjpfu7s1VFa1GC1RMNVr6ajpVOvjfwJj6HH4pAjdS
	 gWN/Jmp78HFHw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90D21D1D47E
	for <ddprobe@lists.linux.dev>; Thu,  8 Jan 2026 15:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176788703358.17638.10669733647542986282.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f3a51c727127b3fbe7007a392810d825a34c9859cb943f497dc93336e9014330
Date: Thu, 08 Jan 2026 15:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767887033
