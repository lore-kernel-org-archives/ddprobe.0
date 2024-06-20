Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47D4C224CE
	for <ddprobe@lists.linux.dev>; Thu, 20 Jun 2024 09:00:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718874023; cv=none; b=FfFKNJL5MGHEdFIjZGoy21+nxxw9bfuY3seK8nT3WOd1bitp1A5DB2q0ULxxGgA8qxmQ0tQyIv02h2kMmB68IZqg0bMMpIgyviHa1NbtYobkMibArFlR/2AScIAFHZuge6AaT+rn0my/eu22nrJsWvNrPCOoBZqVshaFVePXAmk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718874023; c=relaxed/simple;
	bh=gLmmzrIm6b4ID4b2hpgul8bAPUFayrvGC74/v9QegZY=;
	h=To:Subject:From:Message-Id:Date; b=E3MrLkyiR3LpMcKG1HRPGnLqLZ5V2AGY60HJCo85lXvQ//VpPyh50eRFbYw1ZmqjzEESG4P2ZCyaS6RvSNJMjITlhzuTGdA59s4rbyf3yeK0DLIx9b4pQdWjxlqbVC3PHbChRhWSS2ZAEMX9iAQClUvbdPYTnyno6Mgc2AVjLpI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NyixQwA9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NyixQwA9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DDEF2C2BD10
	for <ddprobe@lists.linux.dev>; Thu, 20 Jun 2024 09:00:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718874022;
	bh=gLmmzrIm6b4ID4b2hpgul8bAPUFayrvGC74/v9QegZY=;
	h=To:Subject:From:Date:From;
	b=NyixQwA931togn3/5dMOFqRb4TXJCo0Or9NQf/Zi+wRV1522hxSMLuS8tiUmM8biF
	 Rbf4sVTIff+Q+W3WyKkusBmOKZ3qWYOycnXmc7nklWxZ+3tdQFu2XHyUwazkLtq0gL
	 4HGJMxzmUBnVELfDDH5kB2Cz62Oab0Q8FcTxrs9/6SAfLEVWyLGcsfYkzT5scBtM0w
	 ZFzZnMVLEloiF1KHshMEpezXTm4Ij2tQzKGP5h2mA/4o/NyEAv6jrjj1TB1pvxyhBj
	 USuGTFZz8z+VY6JfRAA2Op58ywZvRFPtogA4tXYR1LAO5M2vPlscgbzE1zpE/SIujA
	 VqY7doQvswRFw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CB1F6C2BA18
	for <ddprobe@lists.linux.dev>; Thu, 20 Jun 2024 09:00:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171887402281.11103.15572416383941512342.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 143157a6cc0af080546e76b097218dc04e5359587087d4351f48c89f592ad624
Date: Thu, 20 Jun 2024 09:00:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718874022
