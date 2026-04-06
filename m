Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3434C35C1B6
	for <ddprobe@lists.linux.dev>; Mon,  6 Apr 2026 12:45:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775479534; cv=none; b=DI2y2rgq4EFl+WHIXMjny6v2jsqI6sOpiNAmgKYJXOgOMRuqOM6R1Nk9EaBuo0uilBROn6eGj8eUazFVOWuuI23aGRHJzqmvDls+Kz7cANCDVzE4AaUBZ9BrBE8q8b9vDJtuRNBsCtd+EYEbYDTFMrrvACUKQfFT7xwxEQBWIvA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775479534; c=relaxed/simple;
	bh=2OshshasmiNa2Lsm/e9EVPDUmFjPrLa7kF+yoSFhKTo=;
	h=To:Subject:From:Message-Id:Date; b=qSHym5fvF7ZBBY1mr/y+Ouk9RejR1lssJ6ifda2/1MwxhvRrRWf/YfOMeUvqynp5c8AEK95sOFMpXINnQJwhyGny3NLD9bbqyh9vMW9JBh7Dm77MBEvniEtk7jG3h5MzsUrhNVgjhQT+L0BtBEYjnI9nGxCnMvjEmBxbpd//+V4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ogEeYdlu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ogEeYdlu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BEB12C4CEF7
	for <ddprobe@lists.linux.dev>; Mon,  6 Apr 2026 12:45:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775479533;
	bh=2OshshasmiNa2Lsm/e9EVPDUmFjPrLa7kF+yoSFhKTo=;
	h=To:Subject:From:Date:From;
	b=ogEeYdlunobfexr7n+0C38mlGc/9Ja3xmokxjXMef/rGil+KfIuInnQ70bpa1mSCL
	 MylzxhYo78s7cMI15vU6AJWl1KW0TnequldOc7AY72JDg608MpJXbJ0jtjEf7mcoJa
	 y/hrEb3i+1stFgBPdoWFo6H0aIwE4J3GNZVOiCGOGo6LhFEPGJDi4nU+uvD5S231sn
	 pTXyMTxcPuf89k0koKnK2fsP1IHe+W5eUB3P7Ttg/oTGKwwGjEGU0r7sHzbHJqfUpN
	 p+CP2lYmd9Z7MS+a6XBQR1+uQIj3UfyN2+YEJvK7vvTYTnXo4RaS5jZ4S0F3ygJseS
	 5D8LcAql2xLGA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA979EF4EDE
	for <ddprobe@lists.linux.dev>; Mon,  6 Apr 2026 12:45:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177547953369.22831.12118486030250607447.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ac081a1ff7f3cf446869da20cc4b9e775f200ac408c596bc87b9e4a5392f1e25
Date: Mon, 06 Apr 2026 12:45:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775479533
