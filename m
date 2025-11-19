Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F117C31A810
	for <ddprobe@lists.linux.dev>; Wed, 19 Nov 2025 20:51:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763585514; cv=none; b=utbgc+HxAL0Ct/wLa1mIyjGkdQeUL5RZWA86eZByIW8ofAmZpwZ1y0G0qwcFPZKfcPLMku6R/Jn9ihOGRfhN53e7YM5OsqboMQ4BLaVO8Q51tBgjumRWMbnCPLQdjLojT62lHbPOk98X4R7bdL9zDK5W/oS9YFb9u8jXH3qORLc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763585514; c=relaxed/simple;
	bh=qciFGtt4LEV3owT/Jc9M4GLLRPhJQY4UO7ms0RTebD0=;
	h=To:Subject:From:Message-Id:Date; b=tfBSm45y9FZMByKRGwg3sRZ3wHIDHvAM+/cy1Z8HBs/U20tCQdCTAiAwwhfGTFHvZjg6LgHa/VHWcLLD9dzNKbLPx8/ZPrUiVd0UaSYQ3GOmGmKpSsROFSWM1icMr4BdK8nWjdh/YU88+n93hpvsW7S1jGW5Cj+NoJAmn+e10+o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WWbOUlvR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WWbOUlvR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2C70C4CEF5
	for <ddprobe@lists.linux.dev>; Wed, 19 Nov 2025 20:51:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763585513;
	bh=qciFGtt4LEV3owT/Jc9M4GLLRPhJQY4UO7ms0RTebD0=;
	h=To:Subject:From:Date:From;
	b=WWbOUlvRDt29G5MLXvLpYxoTa8FeTKgna3KyZaU51Q+yQjtdT4peHhoNwIo+qXhKd
	 Y26MGkUaeETLfPiaMRYzjlrZ3C4vC9ocojEL4QbIle5ep9uePTbIzqmfZ2i7NfgMDI
	 2wrw+ibMv2G2/E36Fr2cw4h3E7QB7qRsIx9i2uJU7vFs/dgzudTeBtFom4VOLleGfv
	 /jGmpXn80309eG5eNhIargnwIfDNuS+Ch+rZpUzRoMQchPGPXGhorxGbwj1LHvuqVj
	 hNuH945J/28/bPv4Ef39G18H37fv87kt0/cdMvoYMgfkP50AopYUOEim3HRtMu8tuc
	 UJzusACcbW4Gw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 939B8CF58E5
	for <ddprobe@lists.linux.dev>; Wed, 19 Nov 2025 20:51:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176358551359.17830.9045396468788593259.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3bac5d150a0cae314258b82c5619064e90c3fd9d769939aea78efce9a375a740
Date: Wed, 19 Nov 2025 20:51:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763585513
