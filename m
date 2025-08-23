Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CC9871EBA0D
	for <ddprobe@lists.linux.dev>; Sat, 23 Aug 2025 03:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755920393; cv=none; b=QKKBIx26fb075SIcIBAmfach/6nnO4gtl1DLW4OYuBnVZZjW1vd/xxVYV2ZqI7YBBLNhMgiXLba1lBPXMN2Q2NS71RWusaaHR5AvHA1Akk8zfMoqVWLxKYy9mo+N4HcZjea7DyaoMl22kE+suYWHf22EADbWynp1yBZguGZ2SzI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755920393; c=relaxed/simple;
	bh=2E2UDPrp3tOd8obnc0kEI9Zo2DOb9dAr3DdT307WefA=;
	h=To:Subject:From:Message-Id:Date; b=SPR7p23ToESBmVKNJZ/rKghhpa5uwFUWys5xfFVEDK/CiX5ulKzm7qPIFyTAuQj9onLZ80go2GMllhrD0St3EfM078UQVjwAlq2qpsED4rBnyaAdG4ZvlSD9eMl+ID0ei/dqI15jGuKyMfqUrImdUQfq9VkCaS+6QXdyr/ah//k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pRukewuw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pRukewuw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1DBEC4CEED
	for <ddprobe@lists.linux.dev>; Sat, 23 Aug 2025 03:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755920393;
	bh=2E2UDPrp3tOd8obnc0kEI9Zo2DOb9dAr3DdT307WefA=;
	h=To:Subject:From:Date:From;
	b=pRukewuwh+5Ee6UEdDaW8RGcfqI8r6ZxHcQzyHRfLq70iZJdRigSmTFuHQ7SEhEG6
	 E2LrRasWhgoBz5Sme35jWcd4YJPq4ZLxQZQk+W0FZqxvxx9LRi8Acpr6KUm2732k4B
	 UaS/RoLtRF+HE2ZLTVufaVk9yvCzEbWGBKV5I0tfmTTxYPujFIYxnvAVBT0O2pK3d5
	 XUmFwEB0rB+W2kCOYplhYqTqEF8+Ci6J0183USa8dMCxgMNay1ghFL2Hz6ZCY+dRsm
	 uJbQ3Sue9CkWnK9YCZ5TGQEZ/dM9iVkDS3Ret4mbkL3xkFUnBEvu6air260gdHhtVQ
	 LsspIGOGtOJiA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F370CA0EFA
	for <ddprobe@lists.linux.dev>; Sat, 23 Aug 2025 03:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175592039357.2299.18257353119753480878.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cb0f9e73a5f331eba3b7330ea634ece3f07cd978004f3bc6675219559a4731c9
Date: Sat, 23 Aug 2025 03:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755920393
