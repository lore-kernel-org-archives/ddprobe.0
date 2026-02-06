Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 15DDA234994
	for <ddprobe@lists.linux.dev>; Fri,  6 Feb 2026 01:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770339834; cv=none; b=ES90O8d0G8ZFqk+8ZubgemjQi8B9HJ5SBZBrWik822iDRpJsTITRnDkaD4kZDx4iAG3EcYCC0mGuPtqihNnLSBcO2HGUpJjX1mEgihkTdKsqe23mBtg8Ueni1ivwDaorOqQSvN3g5LZM1/gR6h1Yp3XpihLFpqGCb4ILLgvDyrM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770339834; c=relaxed/simple;
	bh=wJjjBhQTkZdCnMRjrvKCcIkDtnO/e0Y8Lu4hQL/x40s=;
	h=To:Subject:From:Message-Id:Date; b=GbCcTwy/HXxnM+OA2gAFPikwWtZGfjfqEcz3ho6quXm8a+Y3f6ABhMZTnK6cz0FwhPvskxLyAwpAbFxVs9WzxrPg3zhIpH+jAzx8fxL3HIEgyTGIyKm+TuAA/2uWM4Vkx+TvY8NFMs7ymfC1sdRbe0b1EaoaGV0YzxE3xDVN6qM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qNtSUKGr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qNtSUKGr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B90CAC4CEF7
	for <ddprobe@lists.linux.dev>; Fri,  6 Feb 2026 01:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770339833;
	bh=wJjjBhQTkZdCnMRjrvKCcIkDtnO/e0Y8Lu4hQL/x40s=;
	h=To:Subject:From:Date:From;
	b=qNtSUKGr9gxI3C4UyJ89xaDFc1OL5ksbGVsNGx/B21W4G9NCu65rz0Quo15xLjxI8
	 jP9xC7eiGdlNMPO/mp2jAEeOk2xiYyQvITnqhWTSJWyk9ra7RcxiGXQfWuOC9FWzGE
	 Sd67KwiQ+KCMK56AJg/RP2u73AMIyeFiqT+WjMiLM3NR9WX+KGo3UQLm9fX0MMG4ZB
	 K18sE7FNerZcwaY1BbjdVfdHJD5pI4QWHVwl7NMJeQlIlupv6oq+ja/z5XR48I8+/E
	 3XAcu+Gl/b1fkK377rF8LsjolN6B9LyTPB4u0Q9UMCn5kvROBq9pM61LWeZQT7mifb
	 vqFidtDOk4SQw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A0DE6ECD9B0
	for <ddprobe@lists.linux.dev>; Fri,  6 Feb 2026 01:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177033983362.9860.6084970956554827034.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: be7c811574e6831eec626282c29ac41ead4b07bde9b8914f8f05808361c26f35
Date: Fri, 06 Feb 2026 01:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770339833
