Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D1491F94D
	for <ddprobe@lists.linux.dev>; Thu, 22 May 2025 13:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747922394; cv=none; b=PzsLOapD6RZhsWj6xxYm046p/Z+SXatMuCMZX6JfKhRkIw4YGzNcekjcvLYPmFc0dxuxyAhh3Kk4PtViS0vaZCLgJNTVhtIWfoJNfVVx8DcsCLrfoavKnVNlqvRM8ItR0IDESMdYjlRwIVKrZB+JdJwnqMnvseTG5OiZSFxyGD4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747922394; c=relaxed/simple;
	bh=lhxLC0xbm76xincEPxhq7u8d7g+XUm+O1tOu+InyUv8=;
	h=To:Subject:From:Message-Id:Date; b=MJyQIx75hsFmAX5njzKnOIqJFgT5s1aBK7C/FcJ+VfLTt/B9nd44US0H7XqyxIlBiqlwgqlFiCoxGmQwiL7yvt2s0UBTdcYTOmsSYPK9gq+yuqK2S+muxSNg2sG95cIIS5UbucEINUxI9mMcuQAWx/uFtkLHTrf1EnS1/rs1/6k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=b3WXkIO5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="b3WXkIO5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DBF1C4CEE4
	for <ddprobe@lists.linux.dev>; Thu, 22 May 2025 13:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747922393;
	bh=lhxLC0xbm76xincEPxhq7u8d7g+XUm+O1tOu+InyUv8=;
	h=To:Subject:From:Date:From;
	b=b3WXkIO54eNcrM8SMiL82IeW5HmlH+EGxcwSBynmaksspQB2FgpMwdygA9f9kmLM9
	 TR5F5yioN15V7UlMqDFWQN1aBteVGH38jFzT6Wk3ocxVFTNlLermwyKkbbM2B90Op/
	 Y0gl9m4kRf8bOlii9OMBWfQBG752qceoWIj1udQUkr4+0ZRjPdOnw0sQytUxLVQ6Pk
	 16dGPLNY8DzIb+CqnMqilDDypgi0XTNxdnZ/MPejopXqEFeKNhcBkyvmyacuLSxIm+
	 FEgd+6o669qIaK2xKcsS+XO2uiGKXMXIYBDTd8ROtd1tadE6+gdaF0PMrdkhEDyIfg
	 iCxEuKjBpLnug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E62BC54E90
	for <ddprobe@lists.linux.dev>; Thu, 22 May 2025 13:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174792239357.28396.13104252442791125094.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 408a4710a10768f3264302d939cb9e2e000f207375ea164b66ea0e7295d72053
Date: Thu, 22 May 2025 13:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747922393
