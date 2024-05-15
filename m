Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 50E2E15A4B7
	for <ddprobe@lists.linux.dev>; Wed, 15 May 2024 18:52:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715799143; cv=none; b=nGIpRvQoEYoca21pQLgbzLCHuj2iThayt6opazYeNrX2eXIIgSIdmg7OwV205/uQckuUst91hdDzIwmX4/AqZbZqj+P3XlFxMHgm4Xzi1QnfHOPWPL6xbRRYyDgukiOvOQpHRzXog+Gek0xQkCWtPhld+yxnDswzGSw10jAljG0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715799143; c=relaxed/simple;
	bh=RxUxNqhPA57MH6tVcWdHs2zuAOOY/fY8c/pomwEatLk=;
	h=To:Subject:From:Message-Id:Date; b=NH+HTfQYFwARS/kFEGajcrgX/rb9yWQVc3Hnxfk1G2fvXqWedvvp39Hn3dGN0K9EUmcMjrnZvcyxgA/QR+UHQJulbLLTrUOpDFjC6L7ks4QHCKxYXpSSeGV12ByoI9E6e5flj2MhVd+C7K8gPWw9sXb26fm7SrG4JBtoUPIZVC0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BxqNo6aR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BxqNo6aR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6EBAC2BD11
	for <ddprobe@lists.linux.dev>; Wed, 15 May 2024 18:52:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715799142;
	bh=RxUxNqhPA57MH6tVcWdHs2zuAOOY/fY8c/pomwEatLk=;
	h=To:Subject:From:Date:From;
	b=BxqNo6aR89GqgicdiXTheg4Gp+GLydQEQWGl9ko4rhz5sFqGf0RO5De8X0HAVNrSw
	 cGzuzz3s/Z3Um25Cbd6fkKthz1r9I1Jl7gqWVy9jC4+BuJOkJtoJqn6rxOoaSDlc/P
	 FWiWSaZaf2cIxwRzEdQtnA/H6thWfKpX+I/iIr23oZk8YSau6WvFe/ZiJmXq7Qi/CB
	 MDMpf160rg5aoaaDzrZE3iwmZz9Q8PbYyuzttVnUISUD3g7j+nFMDQ2PApNFUaSfxP
	 BoWCI6H33P/yyVxML1pPbnai+2Cm4slcIabW1JGgpTFBidorFsbB2tGkeJ0w6EIVDb
	 dPXxYfwL6dmDA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C6F10C25B78
	for <ddprobe@lists.linux.dev>; Wed, 15 May 2024 18:52:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171579914280.21209.4634643074439054959.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c0fc4168983e7b428eae2f2541921f876e093d2a7febb90b4763549d2ecf394b
Date: Wed, 15 May 2024 18:52:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715799142
