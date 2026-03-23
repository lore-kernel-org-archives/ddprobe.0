Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ED4F63AB277
	for <ddprobe@lists.linux.dev>; Mon, 23 Mar 2026 13:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774272894; cv=none; b=G6ehzMHFWt6dUFS8RWpqOrZ+rVa5HKkQCxZKyJbECsSQwtFBpodtL7InxdDCKjiVtyRfLQ1vHmsGcfIKKb6j5oJkAw8UC7fCzJSJvKqMKp7aCPLqQRVyXVOrxxBzcaPm4sKUmz6UBavfpHTwc2GLnb+hlKBYj45rq/tG8wMqdfg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774272894; c=relaxed/simple;
	bh=4orTBXqv4MaGrktAdgpqyWM3hKZMeSLLIrJZARbhnLw=;
	h=To:Subject:From:Message-Id:Date; b=VbHpMa1JpiZnQ9D9quYUtoFhTYHLmntj0JbGPzEtoNtWOg9zCD+E7uK2QMQKociPBPtxHVQ8Jyn5HXTLaKmk7ps5cD/DhWIa1QUyYwlqc8q6PA/s3yZQCELpznDh2CCHnWWkFY9ss5J4QIoZkwiLTFOE6WKcdYnUHvrhwhDnxNs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=m8niEquM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="m8niEquM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EF3EC4CEF7
	for <ddprobe@lists.linux.dev>; Mon, 23 Mar 2026 13:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774272893;
	bh=4orTBXqv4MaGrktAdgpqyWM3hKZMeSLLIrJZARbhnLw=;
	h=To:Subject:From:Date:From;
	b=m8niEquM17Cz6WUR3jKUcDinZ+KuADf+tSFQEIoJNhWFPi3GPpWxp9d290yG1FLgK
	 yv9QBUbyNbTzHvfLI/8KTxLqAo3rBYs62EUN66F8Wr0XH73estproJYNfXG27nh0sA
	 JYMzoJA88JZdl8AYwyzqXO6eF0wzwkuCEIpuc/jjVYHsyPr+pnAEP7gsjhIArrqnsp
	 8XBcVJdFnfNzCorLnk23P+y+EA8WtvV3hvluLJmjzvespXaXahjqhT57QxPKk7B89k
	 jtZ0eszWkGL8r29/1m/Tp2+m8UpmgnhnfGaXY2QchTRbi2KHoPpC3ahakqIz2P02KF
	 E3x33be8x1ejQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 916F2F4610F
	for <ddprobe@lists.linux.dev>; Mon, 23 Mar 2026 13:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177427289358.6920.5890164453342075433.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 976ed961a5287150dc8196f096cf8e2fb240bdb4bfb6bfa47bcd2266e85143e5
Date: Mon, 23 Mar 2026 13:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774272893
