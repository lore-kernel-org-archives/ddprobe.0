Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C763198E6F
	for <ddprobe@lists.linux.dev>; Sun, 25 May 2025 23:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748216996; cv=none; b=XIbFMXey2moFMQ9/HdUKrnM9n4TDUpf15snmAxaYMkl/JKX/dwpAC4gNCTKfwsGX24HW4O9UZRY6b9jPIO/8zuOwwh2uXGNaZnahcrVsMJcqrbAW2mTQImTalTTW0TK1pEIb/TMMvn5qdhc8iUwP98u7SDJoEm7jhzj6/PsuEhM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748216996; c=relaxed/simple;
	bh=sPkld7sxliO/WtcAWuo42WTsbgAqW69fPazc9BnwTyE=;
	h=To:Subject:From:Message-Id:Date; b=BbyNHncoC5MthBPK6a9NbSMguL7HNOG8UaE9UbOUODexgiGhVvLFTdKQi2CI9aaGrd7cjACXrtrwrgg/flmra4Aogm4D7P4AVMx8qjNucMWanVNTwC3UtmIOXhDUJOAPKsrHg8PMR7uQVP0pIdq82s3cuKP8f2yFNmer9H7WOfw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NUTJjTfp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NUTJjTfp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2C60C4CEEA
	for <ddprobe@lists.linux.dev>; Sun, 25 May 2025 23:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748216993;
	bh=sPkld7sxliO/WtcAWuo42WTsbgAqW69fPazc9BnwTyE=;
	h=To:Subject:From:Date:From;
	b=NUTJjTfprjhadYKyafJ22QMP5iisvIphmCsr/iUPfn3dfKMFAcA3LBF34AuFw6gd2
	 ZfXezTo8OiW06xwvAHEUufn2CdxG+81NtlwTlDLxaKloCzLAB7D518AdSO+IVmvz/E
	 hLyr5Xcs9eZAFBSftNumZtMUNB/uK2NlhM2TgBTLTCG8lGiBk0hkIXzeUKq7rEbHo8
	 mv6XNuGbxzZDtqG43NZXHY78P5vvDKI964GeeewJiIXW6RjyYCndMOfJE8cgtkaVPl
	 U/fGlPQWkwunM5rHb+5raGQ16YOFfWw0BjPpN7m20zKO7VW3THNQfteUFeC7ZsDJQf
	 QavvrL0UjMW4A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90FBEC54F30
	for <ddprobe@lists.linux.dev>; Sun, 25 May 2025 23:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174821699357.26216.9292198207012690813.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a32f8bc40bd2def9bb8f9716c54747daf043283b537d09664a0f4c2418943edb
Date: Sun, 25 May 2025 23:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748216993
