Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 280CE1F8ADD
	for <ddprobe@lists.linux.dev>; Sat, 16 Aug 2025 14:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755354594; cv=none; b=Ou8MpjRczFDJu+MS3/egEnyzqh17gqkTM3a4HFGmxUIVI3W7q22OLpbu75R+YAwQSs1TrLWIsPxbPMjInLrl1aazK7+nZzHJwRBbCz8BST5vusg4PNov7MZlLNjSkpyQYiLR+GxZSUcR7ZUXFCkmyRc/jiYBnM20NgMNeGqNS/o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755354594; c=relaxed/simple;
	bh=L69JOqNdpprJSQTd6+CDWqzEnyW65pTRTaKobnrihzQ=;
	h=To:Subject:From:Message-Id:Date; b=i4TJdCQ2y+sIoxrsCip+WdovmJyz3U2UJ51413nwP2NXMxjyubtpmCUcjuPkplbRg55fFXViza7pjI6CfWEIuW4Bbt8u1FyRX7KIPXZ6sXffm7/XTnlJJjG3IuvKNuyKlAX5Woa9McyX19xJ1oz1H2a2EUDOUY+wrde/aRhwe7A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CJ9cyMnz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CJ9cyMnz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A51A8C4CEEF
	for <ddprobe@lists.linux.dev>; Sat, 16 Aug 2025 14:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755354593;
	bh=L69JOqNdpprJSQTd6+CDWqzEnyW65pTRTaKobnrihzQ=;
	h=To:Subject:From:Date:From;
	b=CJ9cyMnzBx7x/LjHFnB7BrfZXEgrivsosu9TomWq7PtdLnZPqSMR7mYZRvE8lxxEf
	 979ZU+bm0RyQEzIeealYE1KmRPATmF7Evk0DoXZtauRNA8Q+5nLoViq29wWMteUoGX
	 X8k+lbQKQE6aUoWlt+uRichGkTk58FfQ822TsaPQia64Cql9E0T2q3dUNYP051Djly
	 e+21hGIWO21Vq2A4eAV0ntM+vA+mXyjDTuy+QIB21HrYWVSJypxusyzTsgyf3GQr8y
	 R7BKMuXsRTrSjM1Di9mHrQ51kQjSlIiPG3aco7aZ3A5zmbOHq8CrPpNa0uoblf3yBe
	 MMes2tA94Picw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91A79CA0EE6
	for <ddprobe@lists.linux.dev>; Sat, 16 Aug 2025 14:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175535459357.17952.14118180154421464308.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5b7facbd784f9785410498f0468ca2ccc3b4d62fb757eb3c1b51203f1892e0c5
Date: Sat, 16 Aug 2025 14:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755354593
