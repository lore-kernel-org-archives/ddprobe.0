Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9982A4746D6
	for <ddprobe@lists.linux.dev>; Wed,  7 Oct 2026 09:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791366034; cv=none; b=mKvv4AtfrrWr9o1ABcRKPwSU1MubpWpPP8M9o4j9SssGE0z/uNaFfilA5YMf4d6RkycwQWU7wX+HzTGuGroQRy1+hoFqII67bGQkmtPcsrg36OQZLr1KFnz1e/zDdVDS0eSMC8R+NTdvntMJQAl2xPNbq4BnFgkvjeobu+nFJvQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791366034; c=relaxed/simple;
	bh=e86gf4Ap23Na/325syCXhWPMgl28OKq7wD+VIVGL6VM=;
	h=To:Subject:From:Message-Id:Date; b=PXhAGGdMjDBXgyu1A0P0ilVymuYKheARzlNxOX1vIGZ6569uzQ7OfxFrP1C8T4+e9nIqaxRq/Z0LD6NRjl8L1rDjH2/UR2rioFdvAeBCw7aG33IBOrojTJkUSWT13WTgMhrNg7XnWko5xAfI8KNkh8+iaSNdqGMc5ECSyzwZgJ0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=s402hawe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="s402hawe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CBF8BC2BCC7
	for <ddprobe@lists.linux.dev>; Wed,  7 Oct 2026 09:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791366033;
	bh=e86gf4Ap23Na/325syCXhWPMgl28OKq7wD+VIVGL6VM=;
	h=To:Subject:From:Date:From;
	b=s402haweIcMSBo8eZchSY662vc1P+QWwIs92x3VqKA5NwaynnUMqwFEUTKiVuppKf
	 Rl5OtcdhNofNFRorwwaLpWzK8+E6hmiw8nXhx/fNZwqZLOxG5ZZSLMnMELzDxFYU6k
	 Ed0Gc0y29e5xoy4xSnwwluLAcPWCJnCj63aBwsgNyaswVS9roAa05ykikduNyfH5fz
	 3tYSchs8r4Cv6Oa/xvlRWQ0eSsfzudVVsGmPxaoKEwWe5zFsga9p9Y1vD3H1FH3pGV
	 0ogN0n2e9V+tD6oHxe3G+agLDO2S245oH4iICy5rUSAGnPkBpxCZ1R6QAvkLz+db8o
	 ZEncyLjakDeZQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB55ACA5FFF
	for <ddprobe@lists.linux.dev>; Wed,  7 Oct 2026 09:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179136603369.26809.2315903011278509189.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 49949d6f65a4f5999d43eaaf87c5a56c9bb30a885319a0781d00c10d21c28343
Date: Wed, 07 Oct 2026 09:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791366033
