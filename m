Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1327E77F34
	for <ddprobe@lists.linux.dev>; Fri, 16 Feb 2024 11:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708084697; cv=none; b=WpNqZSMvaYjzFeFSofqAxti0Wx/PhlgOU+MLsx1lih0Suw7+T50YVf0U+iDNNexJwMANFgG64s/tC+ptxxWwDz+o/AdUpczsJ8fygttRFA9v5ZxnQHTviIBOMHN7cowy0RCQYtLh9buiYG2TIaKpeNZmB/aFYR8w6wIW3zgbbkI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708084697; c=relaxed/simple;
	bh=132PIFpe8Vj1eVBtm2zV78VJEZtJa5taZxOCCliwTGk=;
	h=To:Subject:From:Message-Id:Date; b=IHpgfdvjOMSErJdbQ5xml/nXkHKexA1sfoU92P0BB5TuXTNnZzYYcIpWprXimzsLdvqPZkQJZtoINIrW8RByyodWJIRJPjCX/2irxQZYyebLwJ2xuvhtPFDsETyuHlLZdoqcXWedzodr2i0BukdTMBCqvPjoZfFwkQE7UXTl0vs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=I1eBv7qa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="I1eBv7qa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7BA98C433F1
	for <ddprobe@lists.linux.dev>; Fri, 16 Feb 2024 11:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1708084696;
	bh=132PIFpe8Vj1eVBtm2zV78VJEZtJa5taZxOCCliwTGk=;
	h=To:Subject:From:Date:From;
	b=I1eBv7qaRksTvPc9JVOZ/rR39FMUHMGyVjSEde4E/jHtHJd0cETd6sQeLHFVqwtCH
	 ZV1LuN1VNTpnW3P/TxSgIj1wHhobBF6ab69Mu6z0JzmEXIw8t5HV3dM9Y3b6cO+eEI
	 cdl0oHHHwHshjsCcwZJNfYcCjhEYhuqvmApPm31eHFVMzNBGjFhQ/xSORmdgVynnBd
	 ACEoBFobG28pL6K2g5FBpdaExVSKRXGMtlreBNV2eJJ/A/YVw378LjcN4RGAN4Hkb/
	 p4ZEz4eCwowyTwqVcT1lJgyHYRuS2VxDEDQnk4g0E+WAeTQEOZIftEdXhcDarvfSoG
	 VyR4EAS8wzbcw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 62610C48BF3
	for <ddprobe@lists.linux.dev>; Fri, 16 Feb 2024 11:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170808469639.32452.8705018352507333516.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f5d678534e8710073784b311b585f957f7a3b96b851c87d4d859696cf4a5b342
Date: Fri, 16 Feb 2024 11:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1708084696
