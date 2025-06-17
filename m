Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35E5F288A2
	for <ddprobe@lists.linux.dev>; Tue, 17 Jun 2025 05:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750139394; cv=none; b=MbodVkOy7+EqD4dol9IRHVKh4cMZXrvpBdwAfSIi0gdFKbd4Ml5j7+CqnU9byCCFzSEkcEIx74vhGvcXfHir9CiSkF9Llk0Uj8dLDGtl+bgM+32/7562oGXU0eCO8QjXrOVQgpnbvcgEIEl6xD28tbRIZVBbilxIOcYcTtpLNzQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750139394; c=relaxed/simple;
	bh=Gymh9a0Iraj5addogDwo+LTPT2go7XkSSk87iEOs+eo=;
	h=To:Subject:From:Message-Id:Date; b=kv38J44lZMr1JFzrnxAd47/fACai2V59bvAG2ho7Ap/sz5N910ckB7aTf0TLTsdLedmHPrsLiwfz8Wwug5PCThRVy5BSHlMiTEkZMz8wek3MyD2ArlzQ9iImSLdvHhjdvZCOWH3XOKII/TEHHje+59pebaMYZlJF9BH27gAGwQY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IzaUhYwG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IzaUhYwG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD63AC4CEE7
	for <ddprobe@lists.linux.dev>; Tue, 17 Jun 2025 05:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750139393;
	bh=Gymh9a0Iraj5addogDwo+LTPT2go7XkSSk87iEOs+eo=;
	h=To:Subject:From:Date:From;
	b=IzaUhYwGo/+7hP27/OaFm5MF+Pra6zc4VElJWn0FvJ2cdA0w4LZhM/MqCioKR6ykH
	 8IBaziohPCeSxTcgexY8JV7FTwXyXuHtgeIEiz5aNLsYzaOv0c/PvbHk9S5JKs7zva
	 fbEJC1XVbLkUgJtJyvr4ggIDZbFHaxMkDNKvAyLpyVsk1SxpcH2ScatXXh/WsW8dpt
	 XJCYl7DwE2V2VAPNJRZw4ZpZ/c7XJ9HlqhAw6TDubvs5n5C2imnDVfuYyqALDP4C9e
	 TJMQE3wXBOrLwarCpdk7BDSTeCMdUut6SAfJZzjkNuZ3pqJX8y2CriwOOJZVPYXuyh
	 PuqeQ2tzgKAMA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98390C71155
	for <ddprobe@lists.linux.dev>; Tue, 17 Jun 2025 05:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175013939358.11192.11969741823301869361.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3e62351639413374230232035a73ac797a69590e748cac6847216f7fb8946381
Date: Tue, 17 Jun 2025 05:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750139393
