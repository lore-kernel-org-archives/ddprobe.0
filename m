Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A1B9219E8
	for <ddprobe@lists.linux.dev>; Fri,  7 Mar 2025 23:18:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741389534; cv=none; b=sA3NrlvUXct147LlbHxGSONLnUFCeRBDdaDgRYJ329MLMT4a5LnTMWru3UNXxiYOySUXrpwUHS82lzcyE1Bd1+FFIWiVMPbs+KjhYBD/5eO/O6Sx324l9G4PiLkBntuiRUQm8NFzAa9MXUDyYsUr3DoRKTyFgh/gwZvHEIc2JEA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741389534; c=relaxed/simple;
	bh=eJiT8p1RZbuPoS4sddq28y+ZpIW8NC7QYEzR1zO3bM4=;
	h=To:Subject:From:Message-Id:Date; b=Y8Z5vnA17vsfRmcRIBT9w3cQKYuEzMuMeAwuzhM5ur5UXX1GA3TSOi0cXHQiI6la9BzWMQPMMbwUeHeCkT1KK80smixWWoVCEh17NEFAS1Mt4p/DDMYkkXghbDwaoDLiwQ3xLgXYI2UaQ/GOgI0t4cEZXViylUabOS6sBPIx4vE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Y+93YZ7e; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Y+93YZ7e"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3E23C4CEE3
	for <ddprobe@lists.linux.dev>; Fri,  7 Mar 2025 23:18:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741389533;
	bh=eJiT8p1RZbuPoS4sddq28y+ZpIW8NC7QYEzR1zO3bM4=;
	h=To:Subject:From:Date:From;
	b=Y+93YZ7e0aGtdZV4Hmke9f74RvSCTBK/O3Qdhg2SUslcXXHKA4wMB27JpwRQPMOEa
	 5DcE4Oc7ugaGE6/hl9XsL6/Y05vHJ3eRUWVp7MKYDPeeHveg37XTFRqDroqC4C8rH9
	 24u5O9MpdunoQ3lNKiHG0/ODrYcrvRXmPJGyxEfjO7ljhf51L5u9omHh0XlBSNoXRM
	 u3AFNbDK6HS5jA0p5qCy0tu9cFyDrO33NZEPdJjwFFgLQWey8qv64dbypw9LRPRbRV
	 rnveX8Z6J2ShtDno7fNU+ljiZb9pz0QL5SIftI3H76V+WTxXbE1kSGAvRYOhWw+Zna
	 cvhuMvWtzpOCw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9403EC282DE
	for <ddprobe@lists.linux.dev>; Fri,  7 Mar 2025 23:18:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174138953359.31889.4877877922132988076.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: affdba3da6afa35dda65f26e398476c0c158410d440ca7b7f0f5d4372fc28da4
Date: Fri, 07 Mar 2025 23:18:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741389533
