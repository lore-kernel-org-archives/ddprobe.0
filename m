Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F32F1ACECC
	for <ddprobe@lists.linux.dev>; Wed,  8 Jan 2025 08:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736325354; cv=none; b=EVJfkyZPZrm128n/meOWZuMr56hdMMeWvn/hqKopI8uxwq0Dkf1mE3cfzAfU8BNtoG7a7SOicOhI8cJKAWQvmbhS5ZWZz7RwMNMf2Yx5EJRiSJWDT72VKNDQeH/jAUsItRJE6N77VNaev7nGwd//LP6554wKOlOPvL1vvLR4r+s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736325354; c=relaxed/simple;
	bh=w/gTTq1BXxYxvd/3OauOVd1UypL0bqxeOfpVw4Ckms0=;
	h=To:Subject:From:Message-Id:Date; b=UY+94XaDclOq7Ji6MWa7KyM9ljP46KJPg+ym+XgScgkVP89nXnesl6YPJHBjeiCwiyq4Fz1Kn8Z7fogjmEm7O00udPDvFzr3fDnOO4Y47KrPhlat3Wsk9iS0weQUMjCIuRo/WE5SddM/GqYG+YnVdsU3hJAqtmMIdfcE9j7M3yc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JBL5+CGE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JBL5+CGE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA6E9C4CEE0
	for <ddprobe@lists.linux.dev>; Wed,  8 Jan 2025 08:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736325353;
	bh=w/gTTq1BXxYxvd/3OauOVd1UypL0bqxeOfpVw4Ckms0=;
	h=To:Subject:From:Date:From;
	b=JBL5+CGE50KdOSIfTTB2DiWVDkbvY+xycBEQniYjCapIXWWaQQUj8f6kz+mfNVG43
	 tvw7DRFbqoRuEO+mXwcAMZFIdPzhxyZAJYpWfWRL8HdZwgOwG8HxkQ5ddCXuV0doF8
	 gNSsHNttL1412Vp+bd07hgMv/98oJLjg2yikKsUxtu5QCaptvhM6KTVOLGr5MIGicj
	 kesRI0OnHGMki5EF1Npw11/KbeOh+slSq0cwZpRWlDWbc3Iv5miW07oXWW4WcaqYr8
	 dFZrLgoI/7p8V47HxlFZWkWomjB5aG6cj1Mqs8FsmqduGsAzftanvSR+F+GL390Fnr
	 weOzCy+6umN1w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97B1EE77188
	for <ddprobe@lists.linux.dev>; Wed,  8 Jan 2025 08:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173632535361.18233.9785547481021359000.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 96b678184c7c9277d5081d0a420176673b105a920763198979447084d20bc343
Date: Wed, 08 Jan 2025 08:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736325353
