Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2107B1865FA
	for <ddprobe@lists.linux.dev>; Wed,  1 Oct 2025 02:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759286994; cv=none; b=RMUZJOHOIKFxfpmrihTo20/X9mQLed1K9HoHkM1eERCOq2zDsf/9dASf9Zaa+EVJq2EfXgSznSXat+7Rlae40Alb4745Gy2P1WNdZ0HyZwfaW6igkRq+QSBYMqQtv+nFPkXbvXLKPvwA6Qq4EwElTdnmSgZrzdB2+H9TYLMsf7I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759286994; c=relaxed/simple;
	bh=I1eUkGCTsPm4STetY/nIfoUIeAfp9wGZq5iXZP96xxs=;
	h=To:Subject:From:Message-Id:Date; b=RqS20xUzDblcWmffSV9ngpcZrMZWP0E8hl1x6ZFyVl5j0s58Uu3cAHW3s3boZ7m5FAnEfFN6YmzQeo3AAsWOEyKAhuKHgXfGRKPk7boFmhqQVY9P1WgyvT8kCgR8vSO2/EIvQ/vGgJIQHgMYvnLCVTK7qRr20V+pI5bvFpwNNZ8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TKWF69du; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TKWF69du"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABDA2C113D0
	for <ddprobe@lists.linux.dev>; Wed,  1 Oct 2025 02:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759286993;
	bh=I1eUkGCTsPm4STetY/nIfoUIeAfp9wGZq5iXZP96xxs=;
	h=To:Subject:From:Date:From;
	b=TKWF69duTxlMKxUlilYerz8kA2gwfh+OH1WG1mzUAMAxq3kiMrtmP8Fwdnoi8GZpr
	 pmAWrcE0rFYXpihUvYRPwJRcfAEX1C7qknYV4HTzcW0zVirnanyxk+XqujlHmKjDFL
	 qWGH30CFUU9IgXJgI9ym5l/kMHGSbbDcF9DfVgQDYBVjkt3YtXBgrj7T3hpyiZ5fKX
	 Q7gKkmkoN6Id1WiVCVuMvwkt8qI8ZgHVuhEAo9AlVNda08XIOudowf4uyRmvRJj5H1
	 szg0bB1BZTXxZC/0yD5iSw/lx3Gm5nLdDDzGzMcJmmxZrIMj1sGpuDaoxbvohE327O
	 ZGQhMzEdjN0Qg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95558CCA470
	for <ddprobe@lists.linux.dev>; Wed,  1 Oct 2025 02:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175928699358.9513.7679494421678955737.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e091c4f1cfd64bbab6860482983327787b1c9a5c7989f3de86cd2fe3de0d6379
Date: Wed, 01 Oct 2025 02:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759286993
