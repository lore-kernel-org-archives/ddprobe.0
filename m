Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C09A71773F
	for <ddprobe@lists.linux.dev>; Mon,  5 Feb 2024 10:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707130096; cv=none; b=JA9/IqUx+sqK3fa+A2gv8h8FHccz9jNmy/U7Kq1ZfrBNgtPBItP2rmhJJNA1cmEaoy+jNbP6lpjPPVu0cFy9117/8uXN9K0JHp0Uf7WQ500H/2PcI6RBP3t2gByJWZn7av3qZzXv2asaOZa5wjiLHx7fIbbIgYEWtVs0fuqAIXY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707130096; c=relaxed/simple;
	bh=B7e5BjMeO/8APnYXHVxedv2xXOgII+RiK84urN+XCJ0=;
	h=To:Subject:From:Message-Id:Date; b=DJfELwiH9wSgKlcy7zvBCAwB1x4k9K2AEmasMwV8p+ABoaIvWNQuX+12ES8XsfmhhCNnu+IfhWQhdPWVXA/QvrjD9OELeL5pL0VQW23YIyjqjnXs96Aa5Hi2d+Cj2DX2g6CHUiHn+RufruxL66PwUjEwxhPQB2bjkWyY1J40t8M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HgnzYlE1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HgnzYlE1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 85869C433C7
	for <ddprobe@lists.linux.dev>; Mon,  5 Feb 2024 10:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1707130096;
	bh=B7e5BjMeO/8APnYXHVxedv2xXOgII+RiK84urN+XCJ0=;
	h=To:Subject:From:Date:From;
	b=HgnzYlE1gyyH2gewWGA9lxlj3L/KEBCPKnfY4NbbbwTUN6l1M0lfPUZureTE/hHT1
	 zFw6wmECv6zznpKpp7iGxBabwTcuCAYd3v8yCOMV8wKfb3Dq+i+Yt1w4Xv0qEeQ5hz
	 4EJG3tbmDpfPWf+7Q0J+78RCdrBhL5+OOxhjpmJEwItgFGEmbCjsb2WcgXOuyFQGuw
	 LmatRALitLG0bK/80EFWGj3ZKvfjRruedjcQ2R5oVwq5SXL1OWFYrHVxnFMnnBIh20
	 aXXJddcvgUImnKIE4kiUafCYQownaBYO2ydduCWd37EKCC0gLbKlyhDlwt4MCGVrGM
	 CG+Y2fzzk0awA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 69132C48295
	for <ddprobe@lists.linux.dev>; Mon,  5 Feb 2024 10:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170713009642.2191.3579825905936293637.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 04e7a2243a729ce47f843e5f03a963af20c5f9eaee17465d456f680e4b0bb49c
Date: Mon, 05 Feb 2024 10:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1707130096
