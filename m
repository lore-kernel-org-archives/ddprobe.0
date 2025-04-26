Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39C2F4414
	for <ddprobe@lists.linux.dev>; Sat, 26 Apr 2025 23:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745709594; cv=none; b=U4L2OlOaSjeqOK81Elbuwi4sBijki2MLG/OefpLibXzr3KGNEQ58o5PnoaYt2hX2VEbu23f3Csjgg5D6HSjNnBQ9tLD5w50dRKkFbtEbDEf0vayBYA5eu7AFcAHHOSvIIHzpjNAqSC99bX/XxM6vMPSnyIkj1ft/Wb/Dy+r86RY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745709594; c=relaxed/simple;
	bh=uwJtqpqgstKMSdaG2l+L2iYDRsz2VM7ITkIEDK/J+pw=;
	h=To:Subject:From:Message-Id:Date; b=MIRAovJHGdnjeRKrZ9vqul/zKAYY/SEgh2rQH2c/RWj/maTIoLorRjUcjSIH+BRjMWwnDLcBOpzbTvEpYPJnv62K+ge3pfTxudPJWbnY1Kzb7GvT0fpMi9hBgse4w39eggVSdG2dCxeezFdxYYy7VjzYVQVLgY6xboIUrwNOyyE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MZIOcO8h; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MZIOcO8h"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA908C4CEE2
	for <ddprobe@lists.linux.dev>; Sat, 26 Apr 2025 23:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745709593;
	bh=uwJtqpqgstKMSdaG2l+L2iYDRsz2VM7ITkIEDK/J+pw=;
	h=To:Subject:From:Date:From;
	b=MZIOcO8hsyJUBKhrdqlIERLRJn+nSTdWpFzbGsmjBbvcjAnq6V3AxvJiTnmOBQz0Z
	 D8QpnJiK4aVEOcpI+O0dj5be7NMzmdd26iS8ymBVQPU6FS9Taw9f0us6S/Z1qAdPF3
	 YoUOIO6hMUlute15fYjiiALfqpXgREdvJmyEJ73kSYcHNO3TjLRa5xIAkONf9E8zes
	 6IbhAFGTXKgy+Lg1dQ9mS99A6XGkT7dkD8NJUdHzgTcrxhyVZDDtodVTz2KjR6HIsG
	 FCqSqL5EW9aMIizlNoOgRHbKY5X7yvjnMnhcfA/99vwZmyUussMKlbq6RYeP3XINJt
	 qElGJ4NpTHuFg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9583EC369CB
	for <ddprobe@lists.linux.dev>; Sat, 26 Apr 2025 23:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174570959358.11355.6036267243984613653.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4034c33cb58e1982fb604ee1545b71102f9c6efaaea21cd6d7c792f03ccc2d31
Date: Sat, 26 Apr 2025 23:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745709593
