Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E4DC2BAF7
	for <ddprobe@lists.linux.dev>; Wed, 25 Feb 2026 14:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772028294; cv=none; b=LnD8RyR7JhghLdZBsJ1Lfremn9QHL3cQofWc9MBRT1MZCrfV/UqjrIVbhtlmng3YV+rbHlkNrnGXKeTfbW7at0XjEAPdn1Q0G3NimEqTs2YIYUT5x8RAdsDyfMRG99BP15ZaWNUMEJXmB3uOG59VjKEwAGMvhYqcLdQDCsDnPCE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772028294; c=relaxed/simple;
	bh=B2TgnHXqzcvdOYGYo4R2cklL0ze8h4ln/2vSiDrULns=;
	h=To:Subject:From:Message-Id:Date; b=EtmEoVNmm9JprQCxlY/3V2UuqB4Rgmfr72bDKZrF7JB2on/vayh83AFwK5sqJqrHw2OFd6Q0JUPPEs9ExOVeE18xxIxLCRAnaE+bkMWeRCurfA+Q3awvVs7Wd4B0d59AUxN2V3iYSR2ajF5of7VBfJnvMYgntdeV9Ld5dLUq8d4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cHxbjtd/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cHxbjtd/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A651BC116D0
	for <ddprobe@lists.linux.dev>; Wed, 25 Feb 2026 14:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772028293;
	bh=B2TgnHXqzcvdOYGYo4R2cklL0ze8h4ln/2vSiDrULns=;
	h=To:Subject:From:Date:From;
	b=cHxbjtd/Eg0MlTn9lIF/OsP29ej5XAI15TrVnutIGqRcMXvcNZ8Ae5OZB2kKytPtn
	 bO/Yy8GGitw8YCLTMuzqteKIcDFqcmvVxypUbaI6UaPiUJF0msY+ihjYOGR+xIdR7T
	 US0eo0VpE555QhDF1dJ/562M69iCtrdfoKNQ+K4SZg7Hi4T0KVsrw3/xG1MqIVChSH
	 CUuNuObq3mvnMhTZJqmdTtH4XMM7kSfxfGzQWxVll4irtQ4P0BnsMByxoty5ir+khl
	 DjFtK6dCRrSQsstCwiDP1MIJqhYeEjqZEDy7UIpKYkrdZ2QukjPPugUfVHHs/ktReO
	 FDQas1C69dchA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9468EFD3761
	for <ddprobe@lists.linux.dev>; Wed, 25 Feb 2026 14:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177202829359.8171.3448497686459939577.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d79fd41ed5d05e4346beee85c8a36b15a686c7ce6ab91aac47ac3b5b49a52c54
Date: Wed, 25 Feb 2026 14:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772028293
