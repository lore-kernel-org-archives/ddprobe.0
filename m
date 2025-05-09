Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B19D17A310
	for <ddprobe@lists.linux.dev>; Fri,  9 May 2025 16:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746809994; cv=none; b=Ea6Bc7Y2M5EtgJjCna3g4g2atyUztD/4/c9IPjlLsBfJfNqv5lHX5gND3y0shhkDlbrVjxJCvAGKG2u59y+7ESOchgCjwYPckRpHz7jGytgCyZnypjSFNiMMSCCAlWTSGXTOOktrVzuh5xxTJV+iLqqhkB2hp8R/X6h6Q+1gSfs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746809994; c=relaxed/simple;
	bh=zWOD4ctmT1nDwPLR18PWrtSofch31d4/HvcMsmLPpo4=;
	h=To:Subject:From:Message-Id:Date; b=LcqAtk8qIKBzfejyg4w+PWD7RlssU4g+Nn5CAuiO6QUI+WVqeCbpwy/JMDNNiIfH2dto4NaXKz36Gpk2xywSI77JxczgjgYhl3F1utdB7JdLc+MktbdRtQDfhzb4HFv1llJ/40ip/DNAMacLI/AK3fg3ZaW98AyyeG+B1iLtRoI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DKfHheuu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DKfHheuu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F397C4CEE4
	for <ddprobe@lists.linux.dev>; Fri,  9 May 2025 16:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746809993;
	bh=zWOD4ctmT1nDwPLR18PWrtSofch31d4/HvcMsmLPpo4=;
	h=To:Subject:From:Date:From;
	b=DKfHheuulx8I0i97L0RvbHUSauUCyi8v12act4tOZqKz7cPaXw/gNUB5Lr8u1Pn/j
	 WvxulCYxUu4X/eVkuoVZWlf3aKY1LlYst1oYHEbryAkXjseDNYuAzushNbJ9VNVDH1
	 Wd/z/H4VkjlVXBsXaEvSxzEtXzLExH9QNHwLDxa+mbbwJMLeEWwz9ZukXQbB9Rl0e9
	 kvfGNhxlc4to84jUPWdctn3fkiPf8gReiL8vaOhL1bXaeiGJivNEMU14Uf57btTPe6
	 9woafF0AX3Afh2tJ4n/18vMwDkhrIJeh2NG6Q3HKWWxGw7IFL4oHHTaxivjJ+q3+4q
	 kqh5HZ4k2bnUQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F102C3ABBC
	for <ddprobe@lists.linux.dev>; Fri,  9 May 2025 16:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174680999357.20934.1886494437997490749.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 29c1849ada441f933686566f7febe15c840e9500c5ba44227421f20ccd1021eb
Date: Fri, 09 May 2025 16:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746809993
