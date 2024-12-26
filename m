Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3135D2B9AA
	for <ddprobe@lists.linux.dev>; Thu, 26 Dec 2024 17:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735233354; cv=none; b=M+80vEVE8bwA5RUi1esEODVSWi6RjWk6TnvriMgNDVXNFA3jM1DGJvMlqk+xo5SQFTgsPF5QxB1RR1/dvQgMLcoWAPgjl0HL/OVzoFgUaycICRIJQe+stzFct7SuyHH9jwP9fCrq0Dqwp0J6sP/tvL8UeHx2PUphUYxulbKGgf0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735233354; c=relaxed/simple;
	bh=FYkUxxmIdEug+uwKzznnLnOMlgan+tEKdRqmbWRPusE=;
	h=To:Subject:From:Message-Id:Date; b=b5NHzlM7Zmj2DhEGq8CgcftgR4JgtgysR8jO3V27XetuW5M9ky9icel109rjCyRgnPmdbkkfQFkQXAg1VxdHCv2R+v4PGlX1AV79SK94oh4sjeK5LglCyfSwVzi0KJD+AG6DK0NRqosewWI969xYS4lVEqkZnwrFREpYzBduZKk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JAnRwO1q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JAnRwO1q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7D42C4CED4
	for <ddprobe@lists.linux.dev>; Thu, 26 Dec 2024 17:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735233353;
	bh=FYkUxxmIdEug+uwKzznnLnOMlgan+tEKdRqmbWRPusE=;
	h=To:Subject:From:Date:From;
	b=JAnRwO1qsjRpGAM2JIbUUMllfNAxQ4lH/ytE6+3nTSrai1U/RUuxSuGnuHkvyBupB
	 ijGIsjoam8boSd13Id7qD6vQcxj7H7/XglS1gy1ln5Xtarw/MrCAA8fv/EM0DZ+iav
	 tLXt0HS0tbFSyLpLpDBAL3BgJMQEnY94T0ggwacYTb7+6qJOmVK9cLqokt55yqralm
	 IIOQCE6ZHo6hz3M16D7YXx0iH+LD4imKgOSOPsqclEgmYWzmBJfP2OCz+d6cokvtoL
	 uAi+QZnpkgeQ4tj1CHCSNMzQbesMvPXXotTLIKd7oMEr0wS84lFFOxHo9k627BuBDh
	 zX6VOa5FpEXng==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 936A7E7718E
	for <ddprobe@lists.linux.dev>; Thu, 26 Dec 2024 17:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173523335359.18743.8393235249748441672.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8eee38d1ffb979b10b18f287e834bbbc3607314fa53a5fa318d5e7b2d9655238
Date: Thu, 26 Dec 2024 17:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735233353
