Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D1E32C11C1
	for <ddprobe@lists.linux.dev>; Thu, 21 Aug 2025 04:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755751194; cv=none; b=Rl19meB1IPK7pQZR9DcNe6/BdboHh78aAbKYZPl5kFpBvNKJLBLf9AqmOXNJVlnJhJomEcc/8ijovGRQAcBWfg5KK/j/RSYaFEaxu+08/OhyrNpsPcQuMWvNNO3kiXt799KCiqzmR5qV0eB96dUyJi1aBWpbZZbllXvtwoCySIY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755751194; c=relaxed/simple;
	bh=V6xRpXpaGJJqhWpY2ShjxJDr3wJNoVTpPZyUswnr/1E=;
	h=To:Subject:From:Message-Id:Date; b=fnwLZIMFg2r/xMzxEBntANOxf72TfzrI8dfqe6+k9XAZNvbPxdok5M06No9CE/5Wkl8TKTaDRa94W3baNDXPU6PIaDatoU6bYopHI7YZOgN70CyFrCfMWIMHT8GIzEjF6ZNEEau6f4ZawF/eKj82/m7B0ruF8eW9vhPfe6SqypE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bef1GLVp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bef1GLVp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2AACC113CF
	for <ddprobe@lists.linux.dev>; Thu, 21 Aug 2025 04:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755751193;
	bh=V6xRpXpaGJJqhWpY2ShjxJDr3wJNoVTpPZyUswnr/1E=;
	h=To:Subject:From:Date:From;
	b=bef1GLVpck+9LIyTOk1c74osjDc+4yrTMdEI9Wp3BLRNafMepDzhqsiGsLMVhf4El
	 WxlueTAJGu22n7geMXz0av2JxvoTvMOX6ozdbGKAIQBZUnjhTrF2xOpxb8dhS9uWj5
	 fhsSM/rnY1gZPYhFWORupeWc93WzByM9cZxRfL1KZsLUtN9vjU812w5gOTbkTO75Md
	 Ia9SBgYJObVgTTmLcPapiduzllkrcAaXdPhT5f7E+nl0vjGyuqTUlOlZ0dfiHNb0/0
	 lhwxSh2Rm15xRf1jrKfmERojZ8JLRP4ATNWnJALynrPd3czyIS53hRY5n2Z2SFQDWA
	 to8mvvRbUfKug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92302CA0EEB
	for <ddprobe@lists.linux.dev>; Thu, 21 Aug 2025 04:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175575119357.24580.1993760988808765588.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e1c0a6c58ec89f07f5bc7f9505f5694b26de748fadb170f2e3a380514c5115a4
Date: Thu, 21 Aug 2025 04:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755751193
