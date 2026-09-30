Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A833375F69
	for <ddprobe@lists.linux.dev>; Wed, 30 Sep 2026 03:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790740234; cv=none; b=AX+XoNju0RskP1X3EMnzoq6y8uCiLOzngNI2Ar5YkzsYnL2j+d/tPS0lX/5U+joYe41NSM3TRDdCtA3Hl3hFdc+AVl7Zcs6oWbgqUfm9AJy0Z1p9SzvrHMY8psosAnUs4afdAIO7XVmTptcnAmeKw0E5lQnmGdUq5ju5ZZK7Q6w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790740234; c=relaxed/simple;
	bh=dEaEdUgfvz4e/YRW03TbzzQjxD60jaooGJjAmw/dzZc=;
	h=To:Subject:From:Message-Id:Date; b=ehRwxk32J87wQxre+FxGB/j6l0jIUbuwTaXZODzsr9NrtWsVd0FCbE4VfJ0JR/V4aeBJi3p/3rnlb9SdWdg75RQ5x1nTEKG2R0mRgP7TRlDs1uP+LRGv5Gj70Cp2bBHT9Tju1ONvoB3qfWhQJGDLFubtrR99JpEZmB6LRG5KboY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eZxTNFjK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eZxTNFjK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D638CC4AF12
	for <ddprobe@lists.linux.dev>; Wed, 30 Sep 2026 03:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790740233;
	bh=dEaEdUgfvz4e/YRW03TbzzQjxD60jaooGJjAmw/dzZc=;
	h=To:Subject:From:Date:From;
	b=eZxTNFjKgC8sVBYPigeGXpE/BNHaPedF/1NzC8pHLnIemHHU45ToCloT5zuyfttxB
	 yp0/mzorGfWJ5AnNFRqbSSqzJ8oCoNlKtfKivJ3SmKqY0y9nUBA+kyXzLilPd6vNZn
	 Y7nHRXrxRDAouEty5p/GBQLGkV4vmbYhXZXJD741HMnaN2c+A+/rXDAJK05uvSfPo4
	 bDS3T+9vRI7018XGFtYyfY3o0lQNHfxtO6jD0h044RZbHKbkeFJXIHxcY9MBiNT2rN
	 444Yl6PdGhl+1BZaClDm7FPhZyDdkEJv6pP2qjuUJLFewg86tZcg/0npr29gOjKl8c
	 GyIIYMpI2Zbbw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADB56C9830E
	for <ddprobe@lists.linux.dev>; Wed, 30 Sep 2026 03:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179074023370.15208.18399652936938935433.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 136f9138abba4191f4ad012bf89eadcf6af9000aff8b4b7af0a33429d374c8da
Date: Wed, 30 Sep 2026 03:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790740233
