Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19E8F1FF7C8
	for <ddprobe@lists.linux.dev>; Mon,  8 Dec 2025 23:22:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765236174; cv=none; b=R7LzVkQFn61KoNqurWCERz4fOQd0sc3VDO/uoEt0lDE/kbubZ28hl59DIk7ZBTOyaM0/L/jkDMcKDjNMpDe3yWFiY21Ej1nFYRZBEf8etskE0h9PE6HQwOSR4zemlOyfUdaIKVEyBw/4A1Tk3WUaFBDo4RpVASvOp2BhHnNf7XE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765236174; c=relaxed/simple;
	bh=Tgq+isn5fmLsqnexqrqesNz5sSg+24r4K7UsYYS/ZRk=;
	h=To:Subject:From:Message-Id:Date; b=hMUB5JSgI3VAPjzO3d1AD1CDf+MYOshaKD+ezk6d34aBZcnWm0X5D7Lt5aUtDlu6TFcsLK1aiYYbVDxnwpcb3n5oON0rIM0pX60DDlEFWAzt9+qeQ0K9bLFTvZEX1HgC5UzNHNwH/+epm9M05A8YrUbKr62St6WDZgUfwvtG9xU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sOj+AXs+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sOj+AXs+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB109C4CEF1
	for <ddprobe@lists.linux.dev>; Mon,  8 Dec 2025 23:22:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765236173;
	bh=Tgq+isn5fmLsqnexqrqesNz5sSg+24r4K7UsYYS/ZRk=;
	h=To:Subject:From:Date:From;
	b=sOj+AXs+d9DChoVcphDKQFASG2KDGDvkvLcx8RtLT2oOgfeceo5zcjLrChzLpLAri
	 gZvJy0nGcQOcA4iQC9rsxtR4Jjm+p10VuF+5tXm/VXAKh9UO3FVhfnmTqEszBEl1KJ
	 3VawdmocJqF+1u3M0j37/c0f9/WwCNeO0ja67ejTNN+/nOeuMaNhUirubs1ee3POh4
	 ikA3mNg70KxL+6kCEXa5Kp5LNyQPQHHV//gDWsqUb1VinrULcxP3SDAqLIemPVAJeK
	 qYWEzrDeHfZ1eSjze/PhBWC5fRtvsBvyeGDgRhAWH5XpHcHtlgP6e0wnR//8yI+eYI
	 CUBl6ssS9JfBA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9758CD3B7EA
	for <ddprobe@lists.linux.dev>; Mon,  8 Dec 2025 23:22:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176523617358.9911.17296082247613154825.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 41df51517d5c3892d6354f157993752ee6327d2caa47fdbc688f1376b8f57fcc
Date: Mon, 08 Dec 2025 23:22:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765236173
