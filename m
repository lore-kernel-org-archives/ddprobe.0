Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FAD6246788
	for <ddprobe@lists.linux.dev>; Thu, 26 Mar 2026 03:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774494894; cv=none; b=ZtYRWVGL1lA90Um/H0G01c6uGPPpO0zliNfyzWaVK246wr5sIef3PdynMj+x6ZCNlsW6S3mjydNmBjGyM4V/PNel2YhE4jWs4HYY3VLFUNKPaxxIR0Pi1zG1WShbLj8K/9/TVeqfA+wONxnq5qe1c4QwNo031UiolLetQmt+xY4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774494894; c=relaxed/simple;
	bh=+g3ifw2CECkbh4IpZWB1bjgcD0/L/YrLp0MW/UmFB4w=;
	h=To:Subject:From:Message-Id:Date; b=ExOOccLu586s1oli0eM5+bBfJr8KEh66IO/j7FZ0626++agDEjRkKRjtS8keDgiJNiYUU6fyFYzJpF+rD3SE2MT8eLZaeMP0FT0jnr7UsT9LWASpwZYNFJaNh8FFLFQyzgeXd2WSmjjbjPikJyze0eoIvi3E/ifOTJwHFoJK6Ss=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BbVCXuXN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BbVCXuXN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADC83C4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 26 Mar 2026 03:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774494893;
	bh=+g3ifw2CECkbh4IpZWB1bjgcD0/L/YrLp0MW/UmFB4w=;
	h=To:Subject:From:Date:From;
	b=BbVCXuXNGsS1QmrmJnIX+1rB6Ib9mYPpC0VMqfiEGcsICiUo6rxJ979uTecZAG2es
	 tgzUwuJ75CaoJP4iP/ZxjGvfNdADtj3gWJRRflTZYGlXpjxivu/TCAIQGrl6yCSFXF
	 8FsANlc0zvlBhBbidaF0Jg39ATbS/JV8KE2lMsKGh7bNYnhINZVcP5qypHkqQ8o9Iv
	 aKVOHzOIhCayVBr48x3w46uyTxYp9N0c7T15f19WQj3A8UM1iCNoc20TWb4UtwhNyT
	 ZAGmjQaJsH+GlzUKKN5qXS/aUUr8JJMXnXS8uv65h5u/e+oEBZNofoFwTVpnZa18vl
	 oK87ocAFJyjxw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9AE46109E540
	for <ddprobe@lists.linux.dev>; Thu, 26 Mar 2026 03:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177449489360.6464.17832835777185842.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c162aa3e464db1951f3de634c8094b4f0c262a6245419c1f84486ee8a4a4d92e
Date: Thu, 26 Mar 2026 03:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774494893
