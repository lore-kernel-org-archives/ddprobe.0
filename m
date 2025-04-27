Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3408F4A35
	for <ddprobe@lists.linux.dev>; Sun, 27 Apr 2025 15:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745766594; cv=none; b=o1j4mj62xRrT4CFnY7PUoKW+PYRX5KGuiqdSsooHF4vAi2BiuZ8rieEexQVYhiwECU2OTZe8CyI7vEizz5dX9giWWyrN8HIEli6jndGxD9kI9Cpvs2dfIi4ZQy+zJUbXfik116nGnckYER0/V5ueXeoNVPFTx1lhvBVyI64+jyE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745766594; c=relaxed/simple;
	bh=TsLid7HoIohXl5/mXE5HETZKriroTL2RFUHskef22Ho=;
	h=To:Subject:From:Message-Id:Date; b=mkwnyo15L8qX99K2JE1eDMbgtbQiHDWXBuxkpRl8zpRhekLWGw/wXdClX+yxSpabQ/duTtTzm0ky1Yy+poLnmJVgnZLKY0rfLhLaHIls8CsEXEYH8KRpV7GrSt6ILHjXJgIS60bfhB/GN92+x3nuN8ZVi53kOJnIW+Mo3ECWaPk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DgcJ/Jxi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DgcJ/Jxi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5414C4CEE3
	for <ddprobe@lists.linux.dev>; Sun, 27 Apr 2025 15:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745766593;
	bh=TsLid7HoIohXl5/mXE5HETZKriroTL2RFUHskef22Ho=;
	h=To:Subject:From:Date:From;
	b=DgcJ/JxiEZ/ndF9CjiuvPjh0TAcC2iHfBLKJ65W1YfVR2c2PNprxwcNWzsfEA/nBz
	 ulT3HfL5P+WonKUPFAoIPvliFEzTTJj3ZRxeLxmxgI4eBFtmZxn+xbWdhQ0UWm3yea
	 7DU8P1ao2DHVvyJRv/5hh9CyeO+wG2jF4kHWmaekkpF71z9J9ouo8w/tKUcFHSx/XR
	 mllbsJhv82FqIdre+GJHIBWNiSxeVW0Hv1ghvXXshbHy3l//TEjon06iugx/H6Ghd3
	 3+GUO4Ep9h73TfM+eLzBXIY8MMS5HuXsyPBKU2iqdCIV2RUz7a18UJYVFQL6VSp4O9
	 BtEISdKKaQkJw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91275C369D1
	for <ddprobe@lists.linux.dev>; Sun, 27 Apr 2025 15:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174576659357.6770.3766094756462130698.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7cb111ae0f8c25375290e6eef5ba7beb6f1c5776c017bd15df0a738e345bfb47
Date: Sun, 27 Apr 2025 15:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745766593
