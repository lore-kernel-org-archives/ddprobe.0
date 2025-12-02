Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D4C33F9C5
	for <ddprobe@lists.linux.dev>; Tue,  2 Dec 2025 14:42:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764686574; cv=none; b=qTJeKxHBR61D1fFTHYVovlfKGYm8uVpQ1J5iLfN+m4O48osm5lcIaMc39EqoMJmOpr0tGnRwYo6jfhNMPgyiQH8C7H2g8IM9qMJVULtJPWhm6FfIb3Q9jOE0DZnXcEvUUpSEe+CrypFMwz0RZvIZULeFG1wqbg9r8rARQuxgAIg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764686574; c=relaxed/simple;
	bh=3G2dDT2BQJBj8tw4nvNPafh0DAmPjx87OLVJV5J6Q0c=;
	h=To:Subject:From:Message-Id:Date; b=LzZAtsnm2rd7E/Tc4jjn2oVmuoVgCWvRdgtbBNl4HxCnyp9MuILoafJD0ByIo8mLqp1AK27aWvKmERV02mSWr61db0XW2ueENHuIqadjq7/8v1I4zSAsh7qmO10bFzxcgz5d8vkI2+TRnVkDJ0VbONnqOCAIfq2DiZTypF4MXWU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YqTD5Hsz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YqTD5Hsz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A50CBC116D0
	for <ddprobe@lists.linux.dev>; Tue,  2 Dec 2025 14:42:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764686573;
	bh=3G2dDT2BQJBj8tw4nvNPafh0DAmPjx87OLVJV5J6Q0c=;
	h=To:Subject:From:Date:From;
	b=YqTD5HszKh7gsTuyI5niNHgqg5gN5J2NMHXsC/PvEtbWXXrqrNMyZKCzAmFhSU42V
	 b78d6Tp4kWrQGB2adpu9es1nrCqZc3GoJqvjgp2HMRaW7W0r09FB85fNcNepr2xe9p
	 n4001j0RBibB95+X6gShn1V0vpfMEeyXbYGvmYUmMZAceXW9BK8kHrEbhLsL8ZZDmr
	 E3QOAja3HFdJ5lDslcchjyMUUAnBL5KkZxsSXDiNL5SEThG13iIBFTRYAUVofreWNs
	 XyzoYhnq2LNltJf7C5bdBBqaflMMwyNj49x/Mca16fBJ7LcMmAnJtEa9+C/mIOqdZI
	 ZTj0V4FRqXFaA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91FB8CFD2F6
	for <ddprobe@lists.linux.dev>; Tue,  2 Dec 2025 14:42:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176468657358.10109.6276395508292003518.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3ee4a8b6a8f292112d10415a21b5072db32a1093ef0822faf14b3ef6b3e8751a
Date: Tue, 02 Dec 2025 14:42:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764686573
