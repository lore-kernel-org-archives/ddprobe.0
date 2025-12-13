Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 267C72FFF86
	for <ddprobe@lists.linux.dev>; Sat, 13 Dec 2025 11:32:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765625574; cv=none; b=FPZV4EJvwDJQ0RHBiFEjvNDamdN8vd92AmRAnB98SE4fyuCqcgjTFnLC2BNj3bSrnSbvmzpiUoQ3jZjOjZl8KMO5SE7ePx38e5PGbn4PuxEqxXnQ4e7Xr18u4zmau6aMpU5GfAF0abS4JXML9RVBYMJQww+qXmD7YFbvI6CS7Yc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765625574; c=relaxed/simple;
	bh=EJqMhNlzczRE0/F535WoOLK3oQA9dxVcDUqszNevTbY=;
	h=To:Subject:From:Message-Id:Date; b=Xn+qYake00JHcrph8+sk4HP8FlRcywpENEYXFH3MdoFfleJglpGFMdq0VrRXAcg/RQzXfjQtzchIbB6Mset7Oym+SuCBLcMgSKfSI6pvzpUEgHalASmBououw36Md/EztgDgtf1GTDMtaASJvsP9AUCS6fH020CJEqfzrhjps0Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mGLBCIt9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mGLBCIt9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A72B6C4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 13 Dec 2025 11:32:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765625573;
	bh=EJqMhNlzczRE0/F535WoOLK3oQA9dxVcDUqszNevTbY=;
	h=To:Subject:From:Date:From;
	b=mGLBCIt90JH0tjimEGBTjJY6UedwNYakF9oKgwID6P0UvsivJ+5VIzeOb/Fb1+KQu
	 DA1o9EmGzW3FgAc59XxqAWnZ27w8ErmjpdATF7E/o7E7+o+iehxj37pMvlhEpT9Bzo
	 3ITSTjr4QqzJt/NsFnKhlkJbd49S7Wcr4LygdrlUGuk8tWpqNhhtMjgh+bpJYxImOg
	 Q9BGTX1E7ADCKbIudgxESy41ySBf2ickO4MGnbC+oEv5qYmkpu4Xfa3i1GYjFcgPu/
	 BaXsGowCzHbW1VDCUKslsPkgTRdQjLPabnvid7kM6TGirLoS/xgFeLbhy6jR8yQmKw
	 3yTyUR0ThReqA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96F74D5AE45
	for <ddprobe@lists.linux.dev>; Sat, 13 Dec 2025 11:32:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176562557358.19565.1908902769789725157.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7c43cc8d3151360183bb53a86af1206b5d13c82dcb9b4469f50cd856a2870c8b
Date: Sat, 13 Dec 2025 11:32:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765625573
