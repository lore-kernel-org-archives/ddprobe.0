Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F48D2F2A
	for <ddprobe@lists.linux.dev>; Mon, 21 Jul 2025 01:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753062594; cv=none; b=kX98KxWgEMoBPpvXKLr6CD7ZBXpXisKsc8QIQSlF1TSS+eD0TJRfJqB79nwSQIDli+0WkhNBujeZl1pQkvSI2T1EC/dYtPZwHi+awWjxeHOjeLQYQzLEZYjOeUuHtahWJ+4wvTdzLSQ0IQU+jan1v4z57NegLkz5Ejwcw1JeqSs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753062594; c=relaxed/simple;
	bh=yIFuWxDU8TcSSiI3exVZA6JL1nXK97E42EuzmSQdTx8=;
	h=To:Subject:From:Message-Id:Date; b=AfJYQD/jfWgAJkX6N6U0lr6igIrWsupT2iar9quhdd+w9ovyyKwPo7+Ydt2xoLpDgVa1maSaTAcPwRnhs5U4vOOi8j0RomLZbXFwp5SH9f3hRmpNqg4nRHOk0v6YYSeWpgMZrQAjO/bypJQYuTazk/BMIYrXIhmvjQQbOn/Orgk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YInAiU/F; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YInAiU/F"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6D11C4CEE7
	for <ddprobe@lists.linux.dev>; Mon, 21 Jul 2025 01:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753062593;
	bh=yIFuWxDU8TcSSiI3exVZA6JL1nXK97E42EuzmSQdTx8=;
	h=To:Subject:From:Date:From;
	b=YInAiU/FqasYaxIMo3aNbgTsLbmNcVeX2VZfzsfozDhnvStdIQqP5Mm2ZUFtLQMQ6
	 Pc1A+lhk2OvVqU0MOos9H//ds4zRYlVnyXt4Lc+7N6G/JgFPkTVesdnjmEmXDAuiOu
	 vB0Y+pI5chQClCLxhEmBNtSknAXexJZjImqyOCzydCCdflGLX8MgIL8ub3GGvmjn86
	 l2kdMQFqH27X2vlvztvTTxUzkkzRoodY04E6jf+PHafcZ7OCpfkYdAXhAoVQe2+4sX
	 Kh4Fvwjc9PVJRatQWX3lqFTD2W7FEUq4xOdto9Fndewy0tgFiQ44FVgecU6ypotF9H
	 +mdlZ59T2pQmw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 945ECC83F1A
	for <ddprobe@lists.linux.dev>; Mon, 21 Jul 2025 01:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175306259357.29458.2618280371116267052.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6e80ff72fa0dee42ab202ac6ed6c8bf86ba844efbf7c2d462b2956586d430135
Date: Mon, 21 Jul 2025 01:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753062593
