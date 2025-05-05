Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C1D014AA9
	for <ddprobe@lists.linux.dev>; Mon,  5 May 2025 07:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746428995; cv=none; b=qwRT57K5U/iWbkdG7RI7nxZTmFSaZphEOsOXN+ja4kN3+J5/N4G7QCjtt8SrQW+wjqBc6NRvLOLX+uRFdtElbYPZEnM0UkAZLD+zQC9d2xNslMtmjJ5lKgLTqgKQLME7fg+2FJD+iWcffr8reFhkWoBOgD5w1w4vevJyWgoMXEE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746428995; c=relaxed/simple;
	bh=096k2DlguzPr9VABkfU1n7B+eYu8EAj9NWu1/F19MZU=;
	h=To:Subject:From:Message-Id:Date; b=NsfwvukvT8gw/uQ/wQhL3YKA5mIIXGjN6S1loysGxEIMHxHP17t+BIXqPu4NUGnX92oCcwd+V56gbl9fJWynhMI4zI8UHx9y1Lr7/7wV8Z93hd1X197z5uL/KXJDtMnOtGU9RphPR/WFA7QYNMmQZMESdyL87fzca7e+5CkWSzM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=H2D3eZCA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="H2D3eZCA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D7EAC4CEE4
	for <ddprobe@lists.linux.dev>; Mon,  5 May 2025 07:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746428993;
	bh=096k2DlguzPr9VABkfU1n7B+eYu8EAj9NWu1/F19MZU=;
	h=To:Subject:From:Date:From;
	b=H2D3eZCA46yRBZzUULQ/ZZDvHyv8G/HwvTh6ZMr1cK38eKo2to2pNAQ4rTFTq7UxU
	 NKhwENHaqWxQonHLPi71Zf952Q3+uLpHh1MJV0llf2vGhUjOWRuAdU8gbul0EEsizf
	 UZMPHdY+F6KUok9ofG79w0qGy7ikQ0AEuo2Lrc1N9pYT3pEZVQC+JB6ozTfZW/PkWX
	 wE5GnypvVzIiOtWpBy5z1nIgvkLWFQgjeXT+rZgqLmk81d6GOpUDtyPAD/zLLtIOWl
	 TvVVpg9F4H3HnUW+WNfg5t27eQa7C7JYRefhuLVV8kiUf3Bwj6K68SD4c+KePQVQjF
	 hoTFZdgEbp9WA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EC41C369C2
	for <ddprobe@lists.linux.dev>; Mon,  5 May 2025 07:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174642899357.21075.1784742583546363526.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 14a10acefffea78a770685cb3bbb247fbb8b7c76ad9493a85477d25caa042225
Date: Mon, 05 May 2025 07:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746428993
