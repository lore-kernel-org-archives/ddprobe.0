Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 105B250252
	for <ddprobe@lists.linux.dev>; Thu,  8 Feb 2024 22:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707433097; cv=none; b=FQU17ObA4NsO5Q744a4Qh27QxkaBdmBN8cV7GfdLPEzd4wqeDoDi5LOUMJ3MQgsYmqssopXJd/NGejefoOE8q5Vq07xBxA15xppApRFO7Sskb5TDSdlTtZ3veLxxE4qeEz2YoeFnNCbprioj8xehvkpbjzXZ2trl+4d4TxbCGTo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707433097; c=relaxed/simple;
	bh=zWhFgQOVps0Gz1mfE4dAJCckVmipm5FuqTVrSQ2g+yc=;
	h=To:Subject:From:Message-Id:Date; b=hP3YnIsK00pN8U5OjfGH2HzAoPcZmUjFevQhghAYxN20u2c968CTO/1THIKFscPtVRWdT/U+kGacKLUlQsnZnQpQjomSYPTPbUgVU6w4XcbuaBlpqCRvQ6OCuJ4ga0Pf2tGABnNTGSB6XOojTa3ZB7OkSNfcOZVoClcB2YF22CM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bWF+97L+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bWF+97L+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8698FC433C7
	for <ddprobe@lists.linux.dev>; Thu,  8 Feb 2024 22:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1707433096;
	bh=zWhFgQOVps0Gz1mfE4dAJCckVmipm5FuqTVrSQ2g+yc=;
	h=To:Subject:From:Date:From;
	b=bWF+97L+n8Etf1QlLvUuX2a8bWox19Sc5U6CBxUllWleof1c1q8yVj0MKegOcFiuF
	 BPuovkYVcJbFf+hh/ccqdMeXqszKvR1r3CzPGZontG0cP/5VulUctfN6BCUvc58IC9
	 i2jNAwjX2oUc+sUQ2RE7rbODaXTy9tD7m1HdPW+s6Xo5zNN67EehhblvkQ/zIjGok+
	 b9bQBIgOglTPNE8c8wIMXcsrCBWmBAhHZ764wXS0f+CN9AQQxX28Jfg82CpJCwX+08
	 CzPIpO8BOedCbJIsEkj9DV7BsdRjBaZ++NENuGKry1S5BwtRJ/AMRBhSzL+2wiycwE
	 L4SV1JVXFfnvA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6E384C4828F
	for <ddprobe@lists.linux.dev>; Thu,  8 Feb 2024 22:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170743309643.25004.821178440978046523.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1628b25f29c9ea49b87f853fcdbf7e8ca62515f5340886f0f38df17878e82bcf
Date: Thu, 08 Feb 2024 22:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1707433096
