Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 279448493
	for <ddprobe@lists.linux.dev>; Fri, 23 Aug 2024 05:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724389554; cv=none; b=LV7ti9dXfPhUnBBvOjic2vgJJkkI6Rm/GBse7npVwf388MCd8YH+0KEiVKToVzCex4EQv25nFtJiR2HNv1aN8iqNVHNh1mL/CElJWmNXA54fWvbvveO3z4rH9ji41kbdmvA/8u2nqhqcGRShELOk9iJ5TG1fD7xPRwAgoKQwGHI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724389554; c=relaxed/simple;
	bh=a/X/eEnZMe+rbTHbDqm/nxY9gBp7Ivm7luCW4XeaIx0=;
	h=To:Subject:From:Message-Id:Date; b=W2AwEwsy+GiT0lBUiYOIxB2vFET85xFNR3eY4fmoWVR9uWOXMDUSRK+ae0jAbDbNBO3CsSxZND6Arwf2YdKtFuZiQH3Ocs8z+tPp7zXlgm58TjXWpx13cOfiheMqrGYmbXATR2fZ+R0Xe+ioSHBcLfqhBJz/gbqvtw80Ep0BVDs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Sg2eOfz7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Sg2eOfz7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9DD3C32786
	for <ddprobe@lists.linux.dev>; Fri, 23 Aug 2024 05:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724389553;
	bh=a/X/eEnZMe+rbTHbDqm/nxY9gBp7Ivm7luCW4XeaIx0=;
	h=To:Subject:From:Date:From;
	b=Sg2eOfz7JUqE5Yi6gN52PHbP5P8tghRkIYZWVQUwTfjlwD4IovjyjAs3QxiSFISkk
	 mF5L3j4CAvMpeUTh27RL/6PpwkZ02c7eqyLPF1SLRtlbUnPSr8VyiAsELkfOShpBwM
	 mIKADP9Bik2A4QnqObmKNyv4Mg4wp74lnv5h4koCJuAl2oiqakiMWuO42Vak7nPSGe
	 EE8/N1566Af95ORM41IuW9rQhzraWlADGXpQ6/V8hUCFVKhjMG/3y/Bl0fEQjoW0QB
	 K+BFP37+xohauLViwuHVcRMHbhZDW0+fto1Y8ogmc5PIfgiwcBfLBw8WvTZYx6ocgo
	 3iXqJI6WTOo4Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95BE3C531DC
	for <ddprobe@lists.linux.dev>; Fri, 23 Aug 2024 05:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172438955360.30110.443666674402594665.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 63fbd61077855eb12ab05843421f79d67f539fd5be649e02ece8ff06ca917c1d
Date: Fri, 23 Aug 2024 05:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724389553
