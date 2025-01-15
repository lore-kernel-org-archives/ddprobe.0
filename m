Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E6C535944
	for <ddprobe@lists.linux.dev>; Wed, 15 Jan 2025 22:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736979954; cv=none; b=EPdsgXqU7qjVtfPpVCcaJnJs4vYDi1AN3WeZWe0WFbHJtgJJ+oHntJQa+xOV/HGH/ZtE2RAlS9awdB5Ugcs4QF5uVIlQAXvR4p6l15iLoespziLNOET0G8tL9YbeuHBqukQjb/4+WKzWlHTD9+d+2DB9WN0aJnNJaw7NoTgFWiw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736979954; c=relaxed/simple;
	bh=Idv6KA+O2kIQR2wblDWZNv4jf5vBxHYy6dNx/dCastQ=;
	h=To:Subject:From:Message-Id:Date; b=VcRs+A3nWhEKl4+Z50TyHAbR/unC192SnaLK/88HXCU0kIdCA3cjYXWqrp4jv8i547z1GC6+eIrqYDxBOPGkuAI55mHcgskr/6gyoFfYK+o5nDhNO1jpfZ/ewQhzJg7pzCMZkYz4C28vzTf1LFFfOWSLKo3l30TlwWQRzz0vFWI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=chyAq2Xj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="chyAq2Xj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B901BC4CED1
	for <ddprobe@lists.linux.dev>; Wed, 15 Jan 2025 22:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736979953;
	bh=Idv6KA+O2kIQR2wblDWZNv4jf5vBxHYy6dNx/dCastQ=;
	h=To:Subject:From:Date:From;
	b=chyAq2XjhVy2KrUk00NFtMg5OryCq5KkAxdvgfzuDYBZmwN9CB6+BfIxZtbt1yoz8
	 nPxMDwND0Ri1E2UV/m9kAIxYG3qkBtWUEwHxYdq7G2fCrZvtjvYxjD3sgGan3kLJMC
	 xPZpOyx+61V03aUyDMBiarWnkcbASG/L/5O7AahUQtAloOZLzdtnzwP0ZYjb1qCXAO
	 hI0opZtcD6rkbjKZCElbNAGtI1G2AivJlhSEwEavEfVhyclFmuco4rDJg4VVTrdisl
	 HLLYCJE7IVZL5IbHEyDoLSeFMVe6frmEvBq6/a8KaCDFual9UoBDFHu+uIcRo0Xz31
	 EUKszdgehUmtw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A7E59C02180
	for <ddprobe@lists.linux.dev>; Wed, 15 Jan 2025 22:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173697995367.330.15698146501949040894.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 292cf0ce15cfc59204c95d7a5be8bb431189628540b3397de3f03ddb82083853
Date: Wed, 15 Jan 2025 22:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736979953
