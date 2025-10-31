Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17E222F6567
	for <ddprobe@lists.linux.dev>; Fri, 31 Oct 2025 17:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761931194; cv=none; b=gs8mJi9aHEsYshsp5R5oR7xQZSf3zXQehFJwx3jTHspo6RRcBj/4VIox0+O7EQS06is16w7olfwcNTVTWnxyLy+0xAVxnV5opTjHQkVZGG8vVA+onAK6G337gSFBOq54Or5JjBQyg6ROYCgPVQoa/y1M0xg0pLNVgE0x0u5omSo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761931194; c=relaxed/simple;
	bh=zApxpiyu0OKIZbGd4Be6QYKgh3khXh7vxXhMotHbTNs=;
	h=To:Subject:From:Message-Id:Date; b=odpfF+2YFdDQTpybgPKpwTOKgsYbzBo+Cn4a3ozbDP9SojlYX1Gh9Heee4fVJJaCjCqpHDqsr9ojCKqBKBXlN3h0cRYxleIIGs1lIh/Hz2H0MAVntJ4VPGzDsivahAd3Ue7eBZtLZyw2OZkZobqmpiOJiDYcVdXupD4vaAfmk/o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UFjQOaB+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UFjQOaB+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6AB8C4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 31 Oct 2025 17:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761931193;
	bh=zApxpiyu0OKIZbGd4Be6QYKgh3khXh7vxXhMotHbTNs=;
	h=To:Subject:From:Date:From;
	b=UFjQOaB+7rEEGskiCFZndpZZS0/0hDXIHQV7Ll0NIzePTtX6HavVA/7ylc/duniMW
	 sUONwFO18Cj4I7OICsyfxdrj0oF3nuh/N7JxmrZn65Fs2iyi3jEN1vYv6xdfhltltZ
	 ZrL/QBjmc9GOp9PL1QT9gclJPVaMouRy0Q1kwht8M5h2HwPtiRf1IYeuQ/QKVNDq+r
	 6/clZlPOwZCSnIVGMtekBDhJGOjtmbW2m4jN11c3yRHHTpeTaajRtmGOp5yuv+36y4
	 UeaoRW/nAq2q7+27iLWT5G2IGPwavErVQ/LNBcCpgiVBOSnefI313saceihM8O2TWl
	 ZOtDYN/5bA3gQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9134CCCFA00
	for <ddprobe@lists.linux.dev>; Fri, 31 Oct 2025 17:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176193119358.22348.9843461498308022703.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 251dc615bef5b584cf7e77fa5a91572d7aeb9b04367dfae4a64e9e814a63a836
Date: Fri, 31 Oct 2025 17:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761931193
