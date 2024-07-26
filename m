Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 107A321364
	for <ddprobe@lists.linux.dev>; Fri, 26 Jul 2024 19:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722023154; cv=none; b=Vd3lIiegUvMk1dwQ5wPHswJcbDo76hi40MuDR/B2nIrgeC5eAH18NNEpCeJQfkQKc4OkvAyiScyTQGxtefXo/kxh2dCbeOSMnwHR7IrpMmKjXvPnoPYr3ZdetcGXaLlIC1l20uDe/zB0fvqhxcfmHXxqcRN7xBsZjnUTZAqRvfc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722023154; c=relaxed/simple;
	bh=Eso/LGxQSZV1Y62kCTLi4LbLr5U9kwlmKS0yKtyod2M=;
	h=To:Subject:From:Message-Id:Date; b=jb1BBmz/yzewhKF+Dc+gmvijuToe129bgh6lfb1+EIgrkAWj8uRn86PTI1LLL0y2t4NTD+YYiRiiA4OtCCbKeMXWpEoC9h1UCb1V2suqeIuUykbHh8S8i4zw8Ql3BAD9Ml7TccB0qKmcvTWeeOgY02oK1JJ19ArybFfcDk5Gt3w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tpTCPrFi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tpTCPrFi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8150C32782
	for <ddprobe@lists.linux.dev>; Fri, 26 Jul 2024 19:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722023153;
	bh=Eso/LGxQSZV1Y62kCTLi4LbLr5U9kwlmKS0yKtyod2M=;
	h=To:Subject:From:Date:From;
	b=tpTCPrFiz0Kw4AX9mdbHNLSxwhpKsdFjH7m/CoBwCmS/1tn52AtQWSVTaoPNOafEe
	 lOFUe7xfiWMlHpzeE0O6VcwRjy3Y5NQEjAt2rWpK4N55jT7WPW7F0UHmE4DhXGq9Aq
	 MJ7xU042eACgoIExjoPHBEIYnR7NiTVNb+M2irGbUpm8I7suOl6K9s+iUInS/M86Od
	 NVA2mqkzm5p6wRgUJqFs0jejWfMlJAU/OFE71swdvya6T9TJbrY4f8GsU88b1Vzpec
	 5eAdZweB1zye3JwOkgFCMaC7kZ+V9VmqysKvN3qTpYGF515JhyAr6NNfqDQle2qfPs
	 Gks4VsdLOfpRw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 914BCC3DA49
	for <ddprobe@lists.linux.dev>; Fri, 26 Jul 2024 19:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172202315358.2068.618622630408537110.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6da405ad9a3a51080140f109358aa7d5014642696088a7604b06ccb31437519f
Date: Fri, 26 Jul 2024 19:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722023153
