Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C5BFE3CF58
	for <ddprobe@lists.linux.dev>; Thu, 22 May 2025 21:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747950593; cv=none; b=DhiAscBjIHjgNJ78Iq9aegEEdT3mwUh5nr1wXcHh3CTp8e0+hzpSffSd29/bIh9wN1l3D8etHwdY6ojcJQUBXBXnrMnDfLcDKWttNKdnTmoXmoRfy/sXbdHH7lJXq4SZE1UR0PJY2UnWhOU1N13p8DvIVMvd9u+sXqz8W9Lz3yY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747950593; c=relaxed/simple;
	bh=DZq32vlTwQDbWjVPASSWAHZ5yKyAVQ+cPOJFAUJwmhw=;
	h=To:Subject:From:Message-Id:Date; b=Iku4JX161SIwxJquGq7EpmL6aCircGWRSbXF8TR+3uL4F1Tb2cAQ10O88iHKIdZ8nUDkglVw8xSWUv2hWgU7PQnFBt4/S4tc7I71hR2PCeSyD+q+MrbYld17BxXQfTzNpdTED7WIahOwHGOA2ZgtakMjB++hvVW/RnAcZ+7G70Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bsVMeeap; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bsVMeeap"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F1E8C4CEE4
	for <ddprobe@lists.linux.dev>; Thu, 22 May 2025 21:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747950593;
	bh=DZq32vlTwQDbWjVPASSWAHZ5yKyAVQ+cPOJFAUJwmhw=;
	h=To:Subject:From:Date:From;
	b=bsVMeeapPPA38RNnJ7CZ8ZUnNWYYkQ+HgnUN5IhYZ3f0Wrx4IZWkIjn1SmDPCZoKr
	 Mp6rlEQj/eblrdTDd3STUg2HXA9LTn6huzvIwCXDHNufCXsATTRThx8zeI9cDfwSC2
	 67dS09jwCjA00VTHWjM/Fth4KbIPq41ekr0ejwJOSMVPvGObQDuQCZna+MLhh4qdfP
	 lvRek+1WHoppqYpGssIs7gX6d+JrZ1iyMqF75pw4IQhc4jSY4Pq5PHQlfDXjhZMPLz
	 c+ffMYcDIQhApMPYCuMxpj1WJLRKJAB4WVcBQS0wMGTZ5sZramY+/D69ZVrMb//bFh
	 fYy/DmtIQMzXQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F5A1C54EDA
	for <ddprobe@lists.linux.dev>; Thu, 22 May 2025 21:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174795059357.1734.8518744996187575146.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3fd9269137f4ee62c1dc0e12bdf97254225ea214db78f68978a8520d2e3abcfb
Date: Thu, 22 May 2025 21:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747950593
