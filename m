Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D572931E824
	for <ddprobe@lists.linux.dev>; Tue,  3 Mar 2026 02:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772503493; cv=none; b=XVSRbn/RLqkNDH7M/sjvpybLX/IO01orH1qj6Hkc8IcAEttTsiYnNJODZTR9zxF/gROAerCcbfMPhyfE0QgBNH5PjoNbGbqC3LrZN9+5p+b6sQpVRWB1ougdu+2H1k7vvwSmIotHJ/8iMK27m6kez+dEkFuDBaTB41/8oyWeJag=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772503493; c=relaxed/simple;
	bh=NAx5zRDc1zDX+BixzhCaWes9AQSItdJE2pYWHKk429c=;
	h=To:Subject:From:Message-Id:Date; b=E8QG/Xapt8k45X8GBjV1h/v7uH69H7Xw/KanLydZfztFzTOPwyckC8pc8tmzZHptiT2jVvD3JAnpWc5RiHdgNd31hkTYhFizC3d7mHwHWojf9THVxwOCXr/S4qVGn/IqqgfwHMbBEDa04yiToJoMpnuAqxahRMAlAolkLcMUQqE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KrgIw5hE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KrgIw5hE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B65F1C19423
	for <ddprobe@lists.linux.dev>; Tue,  3 Mar 2026 02:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772503493;
	bh=NAx5zRDc1zDX+BixzhCaWes9AQSItdJE2pYWHKk429c=;
	h=To:Subject:From:Date:From;
	b=KrgIw5hEIUp/Ebhaxd9zvug6GTkUds42IIuRiHI9ZW/xHw1wgta+H+S1ZhQsecmqn
	 0/gVbYXCl7Ht0u777uY1NShJ8W4dZBk9f4Dn+9iZ/YykPCG5l1mSfVLxHAotcnBKQ1
	 eHGXPXF0Jl/367hqRzEm7rjjRFe7umLrp2CBw6jEUlnWIRYLaKTukU5/0oOBLJId5J
	 uV4YR07IaxvsDAZNVy2Ah834w6NreDtwS48tg7R9cto6N+Hzd/CZDVwmLfPf5oQHVZ
	 HdkhAImeevHb8Fk8uCufo1bLbRysP9YeBH/B4TnIUKSabvRuWksSpRa4V/Fuoektob
	 nVhUCZHVEss/A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A0D61EB364A
	for <ddprobe@lists.linux.dev>; Tue,  3 Mar 2026 02:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177250349364.5345.7401886748003076573.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: df35ff0eaaec3dad7fc03f7677c3831a3b8062a2a4fe3afcdf694f993e8c9500
Date: Tue, 03 Mar 2026 02:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772503493
