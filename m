Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24CCB2F3C27
	for <ddprobe@lists.linux.dev>; Sat,  6 Dec 2025 13:12:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765026774; cv=none; b=bfQnJ1VP/jwLCn3IN+TexsjZ0NlsIZGOETqwSlWDd5u2C6Dkh8BjVEzuew6f8XUBvO9UMiX2JqujSVQO/9d1S4gINZhndX537CAXbHcBiQ1BGTwqscAmgXsKEFcKYPeeiAHGKsjgcYBpENSSJfFYH6l2W3OlkGpm5xUwq8/77DM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765026774; c=relaxed/simple;
	bh=HnkZQM+apnA/pkkLRsk4yAdM5TddwgMssJMBZIQCNmw=;
	h=To:Subject:From:Message-Id:Date; b=T5gGfZ4dNAsIMqhsGKiOu01P8bpMWcRzEQuR1r0hQ2zRE8t73NQlWb16djyOerN48Di/gOuYH2Wd6qb4sA2aIFCPEdMW5qti/3oLm1+nRGN+ntIkYFVqNXqpseUUThub0pfLtutE9RcfDk2r3Tj/WV2P5kvTPwXGpsLRSZU7Cno=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZTZFE6ZW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZTZFE6ZW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A92D6C4CEF5
	for <ddprobe@lists.linux.dev>; Sat,  6 Dec 2025 13:12:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765026773;
	bh=HnkZQM+apnA/pkkLRsk4yAdM5TddwgMssJMBZIQCNmw=;
	h=To:Subject:From:Date:From;
	b=ZTZFE6ZWIDvbZ/XU2wvKtkVXDEqBn+3xRMfhDkt6Cwh9Z0uCYE0KjXhxTESRh7RvF
	 SF/WxJshGaEM2D1Bj8OnO/Nm7ztv4CneBvgXz5xokNo/3NGITqLn5dG033AupPTHfH
	 HaayJfB1+PsgYE1w56vddLYqziXbjRhLSEb2yHXn8BFWFfmdXwbbsv7BH835nJoBxN
	 xo/ANnIRDMnEwNehw4k9B5BVdL6Y4TDWP7KpatkEiB5QozSgXRPmdIz8lwMH7YczOL
	 K0A4qKFTEaU4aeA6z7RNadO3gIgZvGSE//3b57ue79QtT2TkTYcVxCWOcSBVUdDZfl
	 l0n0TJ2vHXosQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 950BED3B7D2
	for <ddprobe@lists.linux.dev>; Sat,  6 Dec 2025 13:12:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176502677358.21552.11232642274924889187.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 055a0a01cd52718cac656ca9fbcff710a0ebfc1c51b2fc0dc7675c28f3d46472
Date: Sat, 06 Dec 2025 13:12:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765026773
