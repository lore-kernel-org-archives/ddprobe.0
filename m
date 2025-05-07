Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D74019D891
	for <ddprobe@lists.linux.dev>; Wed,  7 May 2025 08:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746608394; cv=none; b=VSRmxqwfzv1ZNHwWh2sE5xPrfood9HM60IOcTmXEmNrSAqSnEAuo5w49Fouk4i0chFFIbBgqK2mnMaBk7hRf0spNJ07ct9iBTsEHbcQmDPJJu+l1C/CdTXOoy/nl301d8XiWpiKRljexE407+eaHOJ08IgOIc9XcIDXlcnY8wPI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746608394; c=relaxed/simple;
	bh=ry6NohjcIMNNykVB7qe+caqZ5ZMeuNCMQXFRDO3CXjI=;
	h=To:Subject:From:Message-Id:Date; b=Xigz4FFkRb+gwwOP8AtQ9cMpKfWOJsS2uDRTSpUUV0LHkqea6KwEsUamusiCutbqP5rWzrYcYhgwHFI7kghz5V71OZd5FEaYJPt7MSWGO3C01PUque4YzP1X8moyV79TAVgijIy9+zgRSsW31hv+LZpYumtQHfg4EemSIWxfQU8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Sg08ufaN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Sg08ufaN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9AC50C4CEE7
	for <ddprobe@lists.linux.dev>; Wed,  7 May 2025 08:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746608393;
	bh=ry6NohjcIMNNykVB7qe+caqZ5ZMeuNCMQXFRDO3CXjI=;
	h=To:Subject:From:Date:From;
	b=Sg08ufaNMCErz1vxMgsizuekIYBGDZ7P7fvhw+ny2GGmbfVrGDV6CJHaL6DND2Wm9
	 YXLqB7n3kfF81DRUfK/kAPh9J5km3ktpg3tLrRZdcbBFrRrUKnOjsvcndh+flXXHio
	 HHsr2ekTKquKx4//g783EsEctM/uMsxa9rOSyNS+3Lb2AKaZjw6gDeCmpoay/2jiEW
	 mZdIFY5AR8Xhj9iljZuWNbJ8229alGcXFR/6FCIJ8OjxW0gAqzeM70/lpeu7uBeIN3
	 mkP9OgeWM20MVIoF6yqlsNRkwSR7J2ZxX7mjRxz7ZTIGMg7MEf+fKVfIMKiGxxvgTG
	 tHq6ZDYTiYqkw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8D5B2C3ABC5
	for <ddprobe@lists.linux.dev>; Wed,  7 May 2025 08:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174660839357.4629.12220028526375762512.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 02b0db6c7c100d3d970b2fbc8b69991f96add0d88257fd791840d5aa130a9984
Date: Wed, 07 May 2025 08:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746608393
