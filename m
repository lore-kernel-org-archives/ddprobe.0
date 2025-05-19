Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34804154BE2
	for <ddprobe@lists.linux.dev>; Mon, 19 May 2025 13:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747661994; cv=none; b=pg5u+3sFPx4CZImS1u8tbopBNKxXsDaO85VfL7pZ/rWDCoZ/sh3fpCmVJFugJ2TnNi/B4AJiJfiG/jkDUe/MF5y+emaZ2yw5bE2IXfNaKmygEQ2EUbEtT23L5B1YDSw7f1yPCT3Q4vNpsVRWtrO0El+Tz5x5SoBFL04tqJ0D6nQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747661994; c=relaxed/simple;
	bh=gpQGGCwILufA/ent4rRWDuN1r1M/noR9fRiETrOLfiE=;
	h=To:Subject:From:Message-Id:Date; b=k16gcH+dU4iD36btNgcTKYtijiLfMb3q/N7j8Ii3JkcV8ZVXtFP1y5AZzMVSORyjviiLqki3RU94zr226SSywSqLxLeeRtHiqvIAFeW3ylb2VjP2q4Oo4zJLgw/GBtcUm/0Jn93mUBg9pmYd23vGNtMF45Ybgv8gOalQVQqiMds=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=irmWDJNM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="irmWDJNM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EA8DC4CEE4
	for <ddprobe@lists.linux.dev>; Mon, 19 May 2025 13:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747661993;
	bh=gpQGGCwILufA/ent4rRWDuN1r1M/noR9fRiETrOLfiE=;
	h=To:Subject:From:Date:From;
	b=irmWDJNMZ9VVC7iozTlsq0EQNXccRbIQuFls742ksO2rnLgCzzzwWGwbWd2MJbNAN
	 jt2WMrhrhLcwzvz1IjpkVGHryAAzj9RilHyZ3Hmm4nxrYL038NYFA+KZ0w9YRvUjzA
	 CuBrqlo7g3m71xNUUHXv169PI42xdrDt+WBuuSu2HCD7Zr9+I6YMYf+rl/e0muvtRO
	 mokaKvQGqhgJSkBunp7kEUExRVxTqFCs6jy+DIvHP1TgFW9r3X4JO7G5sLc/f/uTPf
	 o44xw/IoCgcJTqeXPU13mHLZC+7LcTQY1zXKvMMtCvtm9jDsjggxWaaEd3VBYHY5xD
	 co4pKNDJP3A9A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EDF1C2D0CD
	for <ddprobe@lists.linux.dev>; Mon, 19 May 2025 13:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174766199357.18349.427614626233222654.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 246454b6dd6a4faa27903c69ec469b7ba73177f61113d965e918602aa09962f6
Date: Mon, 19 May 2025 13:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747661993
