Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36135161
	for <ddprobe@lists.linux.dev>; Sun, 28 Jul 2024 00:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722125154; cv=none; b=Xm76Mp59y758uOAHyc3cuhG6QAMuZ/+KprL+8K5Hp0X5LyVwCDce3HaqzwGU4V59JluDE+ABvtFRfedlZteStj5NlrjlEObELknQFqy6ME6gwyibaSpfusXMBJDwxmTbn8g3R34lsCexT+A4b+4gM16boLxH53IKmjL9QyGZ6fo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722125154; c=relaxed/simple;
	bh=Vc7zuQRXHfKU4rCCVtnAgjJPUxSNi64e1uPBZhWz9Dg=;
	h=To:Subject:From:Message-Id:Date; b=HDO83eHh/A5nUNU60CTwItZYIZrmP1ufGuyg5NK/6kLKrhKUO00Zj/b1dtgM7hrbc6if2hm+ymqUEEG/XchwJg0Nwtl61n3LF4uQEJvwPhE2j0Gw+8yhytKYMXcZOa15KF/zrkQ5GNFnLFlbDY/UWSY9bKkl9b5QQczG95u2Q34=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=r6t12Ods; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="r6t12Ods"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADBFCC32781
	for <ddprobe@lists.linux.dev>; Sun, 28 Jul 2024 00:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722125153;
	bh=Vc7zuQRXHfKU4rCCVtnAgjJPUxSNi64e1uPBZhWz9Dg=;
	h=To:Subject:From:Date:From;
	b=r6t12OdsTCjq07QF+guZOXXwq818prLQUdn1cZvM43bqSLYI3sRZo51MBGcP18LoG
	 oTEBazug8PgQ/1oZfnFGjfYq02ZHXLyRjvuKVce4ICW54qb8xWyTpPbpowhSPQbvbe
	 k2H0quRLqemAp1rk2HvDjDjfNjSBD+Q9ySXFQNkDW/OkwQXrdVD74NPfyyJxuqaqCf
	 nKB76Prrerm4mV7LsbDLgXCAqRnvbXe+jDjNyO/I0dehf3ljiL0b6ndDWjqxLqsU1m
	 JXCQWEA+Lu/kXA3f3BEGq6gmVUuVlecNMVPEtmA/ZF/V5Yk9S1v2eyMyTbVoaZMVUq
	 G6QcBgt/OHj/w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A3EFC3DA4A
	for <ddprobe@lists.linux.dev>; Sun, 28 Jul 2024 00:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172212515358.6701.9674081340305916481.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 06cc537e719ac2062e0053ef7f6555d3523c08448df93b19ac1eae2978ebddbc
Date: Sun, 28 Jul 2024 00:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722125153
