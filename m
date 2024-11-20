Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 331E31A0AE9
	for <ddprobe@lists.linux.dev>; Wed, 20 Nov 2024 12:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732104954; cv=none; b=kejwoc3PYE2FeqXD39T9U8O5Map2ScTq/bz1R1aV16G0DFzmfYOHjeCncDVcU4WY5WMD1IdWsy0CHi2g4nO4ohYruLBt1beycxwAmD1eEEKUg1Umeq7tpJNxmZyOKsx2fQNtN6sF80ZFiQLos7sqKyG2Bf0T4/HdL2JEJuypUXc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732104954; c=relaxed/simple;
	bh=8dUu6qD1tPH1zaPuphS86a0viDu30bGzotUy7TWLaDI=;
	h=To:Subject:From:Message-Id:Date; b=U20NRgGT7PO6+r3rDQ3oT9cSMsJlVzgegdJJ3BTQwrkXsoeDQcrMhnzfTddANcr9+O+H1Twox4wjhyjNwapuE/vu+ybFMwhkYobpOP7m8TV2UgiLmiXc3FgHGlD+/FOUBcgpxkr4qW3LD8jlzQEXUZF2F2t+5knLlwZJDPrGGGw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=au/nxbR7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="au/nxbR7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B20E5C4CED2
	for <ddprobe@lists.linux.dev>; Wed, 20 Nov 2024 12:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732104953;
	bh=8dUu6qD1tPH1zaPuphS86a0viDu30bGzotUy7TWLaDI=;
	h=To:Subject:From:Date:From;
	b=au/nxbR7QOaY3uZjxICcS0Mjae298eKPqkf0WA554/5N321K4gTyDl5bNdwRA2svL
	 OCJ7o4jjivgZY4uF3KHdTNP72WoM7Az79QFm6Xl3e2tZNtUCgApfKUdPDzAU5IHGcF
	 /rpSlTEx3P3slGqk/Llq0ZQ+RgLbMsuK28y12t99qeVN7+qtMhDSTb/TwS75/AcU/N
	 Xlj3WzToobXAruZSWr8HbtrlH7zcPg3T7vatifwbl7Q1pI6on4jpoi2hSot02j2h4U
	 j+Bjz33+gXxgZaHHoJP8OmgZhHzjMeMMkYX7holAm5TFOgKTw76s17QS9Vh3WbCdaa
	 xPe+4KXdPsChA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E028D63933
	for <ddprobe@lists.linux.dev>; Wed, 20 Nov 2024 12:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173210495360.29825.18254592069348641857.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9d055afb1d97a4f6a81e1b888e054419637b630fcc2726dd7e9afdcd0a60b084
Date: Wed, 20 Nov 2024 12:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732104953
