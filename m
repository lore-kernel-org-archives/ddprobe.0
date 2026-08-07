Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 60844395D8C
	for <ddprobe@lists.linux.dev>; Fri,  7 Aug 2026 17:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786122034; cv=none; b=rTb/1Fnoem9lKw/oQoIcuX+GSi7pvYfh1H8DJ+3MTJPP/85hFLokLZXbpLLpWe9j9XrrmF+Jg3N5/A6jMG9hVoEse1vzw5dD0LByIahWP2fQG63dlhSfY7zofeVjQ87ytiUH6HD/pFAnsMyMXhjlrpiSb+u0ft0q2ukc7NhNhcI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786122034; c=relaxed/simple;
	bh=qCUgwjlJ7JmQjNGEiX3JPiCzgnxSVaE8QQzyx+ShBLw=;
	h=To:Subject:From:Message-Id:Date; b=M2rRIW+ggog6lOec/WkSHrsscGky2/BN6KCaeUXym6iPPzZe44u/PrXUPMllZ82TCRzchLOBI7FGh5V1ScARdMQbu0UAIiQH4d3TGU4iFafgtISBgbojjmzOCmAtUIUNfGNMwSW77SRrDGLMcDgMspthq27kJdFn6XxevgUxfOE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jfeoHWsj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jfeoHWsj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DF9C7C19425
	for <ddprobe@lists.linux.dev>; Fri,  7 Aug 2026 17:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786122033;
	bh=qCUgwjlJ7JmQjNGEiX3JPiCzgnxSVaE8QQzyx+ShBLw=;
	h=To:Subject:From:Date:From;
	b=jfeoHWsjbg6A02HNfnlWAd4j9rD7jLKgNJoDk/c1+6l9Q0TS/UOTIKsFdqnSXksg5
	 yf3ZrrLURr4EuDybcRBW+pQWXvW0JI2rGXLePZgff8aobbQZPOoNyBECQPD/EERNoF
	 oygs5ZOHQKDJGxMaVq1HsGvBMP4RTNFeTOzLKI3qvu5hH1d/qYKCfOgQj0s7XWoHo6
	 QzyCxxzUStzu8+EuZjt3x/PkJK8HDPhSxoxft9RrtVqa48aUVmQ8Hqp+FitR6gXlr6
	 XUxj0TMnO5GedIydViwXyPX6RFrs5d6lQybTd7Snj2g+8knJfuepaUW/2wee2IcDUE
	 iBkt17kpuga3g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BA3B2C5AC7A
	for <ddprobe@lists.linux.dev>; Fri,  7 Aug 2026 17:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178612203372.11339.442029817622950767.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fec68a300c80a52b099c6d09f9ade1f823054b86f97c348a1de692c148fb663b
Date: Fri, 07 Aug 2026 17:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786122033
