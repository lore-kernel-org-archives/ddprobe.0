Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36F483D81
	for <ddprobe@lists.linux.dev>; Thu, 29 May 2025 02:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748487594; cv=none; b=SoXHJ2J1n3B2mM/mwoRGIBt/JPPeMOhNkhiwPA1IZRu9v8gm+KEww5PhXK+sfIkEq2KX5aU4jMENwG1CNIlzyghldlEByToX9GJouG9TSOlFAQc3pwy7pxyYAfhNU9+vweLeAN2emtx2j6T3w21Yif90TMvPInUaaFf2ikCcf9w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748487594; c=relaxed/simple;
	bh=7sJFO6Lo7bWLDn/YKM0tsxafdmZRGxXZ2okYg915SPw=;
	h=To:Subject:From:Message-Id:Date; b=Rdm8PjYe/J6yfFuXiqZAKGEZJ7aKxIa8S7QaBAQoXmgdTuLRHukz/9yuPWfBQl9XfxNjyMPpYZ+IOWG2TD5bVOca5xfIzcITpGJgRtuHN17YUl/+hRoE1/mpdiAvCaAyEZTVU4w2p8dkL6V2CxH89/ZdZ57hEYJg9qLjF901JHk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SB9uOcjz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SB9uOcjz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A250AC4CEE3
	for <ddprobe@lists.linux.dev>; Thu, 29 May 2025 02:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748487593;
	bh=7sJFO6Lo7bWLDn/YKM0tsxafdmZRGxXZ2okYg915SPw=;
	h=To:Subject:From:Date:From;
	b=SB9uOcjzyFV7h3NxckgzFAkbVaK6iYaTzi+axcY+/MyIYPja/9q3B9bLvJyzFab0P
	 xJvbnK19o9KaQomw2M2FA3MQbqs6tdzpzWnN78Z0gJSUSaa8XezgH0XVbYxeYLMJcx
	 CJ+3l5sb01PhmA/76cQT8LGxVEVax/RbvElo5l3FQWaleIir8QvvN1PbreK9NJ5mRe
	 FueEPI1bAV+2cLfivLUUderL/pcaz2eiT78L64Qh6M0lnMakHSH+U9DcgQDKCioF5n
	 oCnpui5zjSh9JNhpS1SKZQMW5AgjL00FW3XNV5rHGZTsP/IR9Ki2OvjSD115hDAlfP
	 kZLaQ89nfgTew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E185C5B543
	for <ddprobe@lists.linux.dev>; Thu, 29 May 2025 02:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174848759357.19616.1965138897175651105.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 91ed6a5b4ec269e5dd09eb6263f378ba80e5bd3e821d7d0ef99cb0e7a4cb65d5
Date: Thu, 29 May 2025 02:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748487593
