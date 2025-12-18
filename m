Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28A39287247
	for <ddprobe@lists.linux.dev>; Thu, 18 Dec 2025 06:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766038434; cv=none; b=f/8hrKWPm+cs4bN25wsPbbzrOiluAM6QsIbvlO69l7v16kQhBdsJUzbQqzWNYLqT/xcg2FrKJvggFK5VgiC4jr0Wz18Wd3e1qdF10/Pcy8NCl1yQRjdMDLs5SRSFUT5IRTd6Dc7wUDYfCooSJVyjkb8Ww+qzlQQ0szUO/95EW9Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766038434; c=relaxed/simple;
	bh=i1bhFn1cag3xelTj7DKp4CEh6//ZBPmSf5x4LZgbK6I=;
	h=To:Subject:From:Message-Id:Date; b=sD2CIvbO3EVFIqlXN+ghosbY6LC1E1593u4koMPJElQhaZADVfz69T/7tFihMIRtRiw/f+LL/+FriNaEyNCqGgbJQTdKMjxifQiUjztOgyn00PIAV6hbxSjc3sYNUtrJxjLBkjd72Sn4Qenf1W62aKeEMeiwxNxxyGJQxllFSkU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=srxNz4bH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="srxNz4bH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2E11C4CEFB
	for <ddprobe@lists.linux.dev>; Thu, 18 Dec 2025 06:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766038433;
	bh=i1bhFn1cag3xelTj7DKp4CEh6//ZBPmSf5x4LZgbK6I=;
	h=To:Subject:From:Date:From;
	b=srxNz4bHn1IXjO+aVOtmN2ujKBwvJ/nrMxDbdBxJ6mJ8e6KgEYK2f7EhFJA8ZA3YF
	 ho7yPpIpdIoAAThoyuorZQTMwzWibcjvZhF2OG2Jc2C4iUowQfyYp0meZi3rSYsKVj
	 MTnh6BGD4TvZqzD+9snrBE91G/HjXTMCK4VGln88yvcStOdKhF3ftQU3Gs0g2XUHjF
	 jywo5hvM/2E2pL7VMrBjtpHFS8DnnKTY/FKz9s44wuBqiR87W01TiX3jYJ2I1XbLKa
	 xUxK6lu//sWsNszqbdmZAZ9rikEI7HPIeXapUfDpta3t517fWPLW3n0JwnEtV9ddVY
	 6f1yyY7o4/yvA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 909D3D68BE2
	for <ddprobe@lists.linux.dev>; Thu, 18 Dec 2025 06:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176603843358.2163.2867546547176973331.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f888e88067df152280eda69ce8ee310af19361fb6fb794437d4fcdb9e42dd585
Date: Thu, 18 Dec 2025 06:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766038433
