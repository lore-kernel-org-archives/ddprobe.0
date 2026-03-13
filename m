Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0FA8A823DD
	for <ddprobe@lists.linux.dev>; Fri, 13 Mar 2026 04:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773377694; cv=none; b=GLjidfa/Uvg/4w13UajgNPm30MxOEcnBdgnKcLfLF9h3t8HlE0NkXavT0PvkwMtucWieirIeT43olgztzMP9HIoXh9wfK35t4nvLp3sHSZIi41poKOG1rPooAeKDPYT9lGfqWo0zPHQvE4wAIjAKJjZ0MIqEFnlH6e6TRsym2Io=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773377694; c=relaxed/simple;
	bh=UTNVPflrcX5Wj+bFAqlEaKcKoAIV0rIOhcTrWdxO/g0=;
	h=To:Subject:From:Message-Id:Date; b=cWJl0wbDJV7JN1rqah9hIaujbaM/rTwiWcUvya5tX1sElBut3yNKr8uStBf4X2diWWtfiCFEzJZv8JKKsAZrimWjQMf0Mq8oD5JMHkPzmV++VFyHAmHT7hXLMJekiIoiuaOX43Zdv7n9qxxXzgrGV1qmw9TzY2wDjUNERrN1WsU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=L4zjeAEe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="L4zjeAEe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0681C19421
	for <ddprobe@lists.linux.dev>; Fri, 13 Mar 2026 04:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773377693;
	bh=UTNVPflrcX5Wj+bFAqlEaKcKoAIV0rIOhcTrWdxO/g0=;
	h=To:Subject:From:Date:From;
	b=L4zjeAEeNhsiSmuQhaDJ1uIoXGbZ2RQJSExe5Algv6Zj4DsAU7gexxyZBFChNWojx
	 aQIVDsPfoZRaDXETA2VtAb4ebywexc6HQkJ//N2CkOwflsAJtyZlPlDTJctKlrcEyP
	 kJsRGK5Gh5YT00ZEBSN8f7uj/L9vymiHSGRgCZ5t3mHsiWLzv9UgdW7/CLZIgueE9o
	 OWY2DoyCBogsHcV3CR1OkmaiyTm7fYO7XKdJxDMEYjqlHMVafRwphTJyzKw5tVWn+L
	 vbPAlpn120r4+FCJunDA37stChYPzApOabZeZ+f4MjV46qNaatcIfyAHLjSKdm2k5+
	 17qp7CsLlnyTA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F719106FD7E
	for <ddprobe@lists.linux.dev>; Fri, 13 Mar 2026 04:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177337769357.4597.4309381001830944189.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e3e25f653e0315e8925728f99a393c5d0b72028697356fcf70a5318491673309
Date: Fri, 13 Mar 2026 04:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773377693
