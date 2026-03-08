Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 07BE436E484
	for <ddprobe@lists.linux.dev>; Sun,  8 Mar 2026 11:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772970294; cv=none; b=lg3Gifc86Mwp/I3ZrCo6G4417YSvzdaWm4vVVIcnPx1V9KKcc5CJJKsoyRsg2UezxFsXIY/K6bggx1qqja30HBzWdvzOeSMywkskwTj0VZVE2BHkVoMKDwqDeRN45mEzRL8MvlPf9wVY9JgGyN1n9Ru8Hq0I8r2gCfZyND/Ll4o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772970294; c=relaxed/simple;
	bh=nCei/cisPIJAE299/UBauI2+ljDHd1iVdu+SSmxw4aE=;
	h=To:Subject:From:Message-Id:Date; b=dkudnfFUm30l07cxaxvaZ0XPERnNqDq/AITDBCSVGh9Zzyw/+qkvVunNVEkMA4JNOx0ofITj0gHnH4kMgJu6wtog2vmFXGfThHJheQa6bSYkAZpvcNPU8Ywn5aGcc1JlxrQnJlAy3QBgcuKsmP55bowhgKMCMyGi1jMyiSQWBmQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TrY4i8WI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TrY4i8WI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D28AC19423
	for <ddprobe@lists.linux.dev>; Sun,  8 Mar 2026 11:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772970293;
	bh=nCei/cisPIJAE299/UBauI2+ljDHd1iVdu+SSmxw4aE=;
	h=To:Subject:From:Date:From;
	b=TrY4i8WIPO0wp9d5MQ+TpR2v/c8igPvw802IOddLoTiRd3W1XDrosgHSIGVcbdU4O
	 GNM0X9tc/C4yRrpi/oZZuXupLM74l/zVNCcUQwj7PgC811+1RBud9qpx0dWKE5FWQd
	 D4jcDXbgDEP9B7qzjSjKs9VyI3OypXFDJBV+pbSGCWJ48cWpC0SxvyrzitQrU0O8M9
	 kRTQMMJNCMXShq5x/D0eUIRZ+ebD5UmIC6vNX9RUYXW7IIOi/75WEYt+BCjjOpiXEg
	 qY5py8Hds7MjZi1mwqjd9hKA7zXLu8EXoX5L0IQQC3Hu4AVoQcPTiCee1aFlIsQJOG
	 uGbHzO/UmUlCA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 903A5F55102
	for <ddprobe@lists.linux.dev>; Sun,  8 Mar 2026 11:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177297029358.7037.9961603751285893609.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 481457dd6c433f73ea802fa2366b94b20986abd16a2eabf96f1775c2cf724d0f
Date: Sun, 08 Mar 2026 11:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772970293
