Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33EAF30F81A
	for <ddprobe@lists.linux.dev>; Wed,  3 Jun 2026 04:34:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780461274; cv=none; b=Y/QclxO6XvEf0rQPw/Tw4nPvWeYxhRlOZqcjK7oIkveoxQc+LStYgieZ6x5IGrgT52GBRU4lDhmkycvuBM521zEyptH4D5NOn2YkzDpzzqiWU90I0MNCAmFFzvlgZ/oLEwJKjBwmD/iKoZx5fB4feVJYnPI7FmBMGXblEwNPb9w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780461274; c=relaxed/simple;
	bh=li+DS8YW0J7Ba/TGbFBVJWOtNxRc08AYJos/Dshdtg0=;
	h=To:Subject:From:Message-Id:Date; b=kvhGSSpb8Jz5QM2pbaRLqMf5sNS+MPArLUwrfhHIIZRzcNfZqhpBTa0KGGMZRJNYWBZkNyvPY+xKGqGNxnMp6+TkwBqh6ScHCXhKzAzKpW0g79hD/EONtUSjMl/JS5McYP1KQC4eApLosIX/AsssIGj+YiKhe2IM8UDZdl61Roo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hTlilVra; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hTlilVra"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C9B08C2BCC4
	for <ddprobe@lists.linux.dev>; Wed,  3 Jun 2026 04:34:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780461273;
	bh=li+DS8YW0J7Ba/TGbFBVJWOtNxRc08AYJos/Dshdtg0=;
	h=To:Subject:From:Date:From;
	b=hTlilVracsDq5b7DG7J91uvA9l2j+7KW4JAjD3ezZIxA7GLU443KmffPcg60HYrkL
	 kn1QvOaMbxY/J764Be7wJ4KlrMUjm3Mul8kdpjRkcWTnFr3bY1GyXKP71o3pVXHdEL
	 3izaje8jqmsmsB611YJRPoRV7YxaHzQdoZUbsOkfFvFSZi05icOxl37Hic/UoKCxLh
	 d1CmswjoL0Jza38VtlylwDTwSH+HlG4OB9DPnFUQMEhwCNybkVS0m2b8Co25taZr/n
	 4MIsct9XXBvJlM6/xeJaBrHmkfh//DVubqQ2SY9pTYX4zYHhD931SKSbc1eMwPjCis
	 KKkzfi/lRj+rg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF419CD6E55
	for <ddprobe@lists.linux.dev>; Wed,  3 Jun 2026 04:34:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178046127369.30544.6777984049553539886.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8d59ba33f7c395d6cf835f3aafcf9fa05aa89a8ece6c5d75fa4a646f68244a17
Date: Wed, 03 Jun 2026 04:34:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780461273
