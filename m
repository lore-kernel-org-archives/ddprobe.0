Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C3C69414415
	for <ddprobe@lists.linux.dev>; Tue, 22 Sep 2026 21:40:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790113236; cv=none; b=YYq3Z6oHU1UWr78Y0RPTq5Yneg2Ed5Eu5y40en9F5mrX5DIOmGenRwNFhh2jauE3nUDblWTBfsg7Kn0IvUSJ2AYVmAMOhX6W0IPEfXCGfEtBd2wvboX7HUIpm/vdYvzezfslU1qn9wseM1aqzL/3ye5xdWyKT/uFmonWVNahIWY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790113236; c=relaxed/simple;
	bh=3lGPCrbxy50euI69CVAmXDJ2wFLmhjuZFP3IxK6FiCA=;
	h=To:Subject:From:Message-Id:Date; b=uyKVAzXfmUgyc+P+ePeLu2oqKv91CayLJpTRv5E/W/V1Y8G2Iew0l9LSzV5Yvs1SPeeCU8uzRsWWkbIoceUY+52PLv7yqHhZk3z4Dx7Kw97R5XVKeRQFhpDvqoeY3f8YrmLQX/t4tzTuks5tW30yttBShGpdGn1MZEmhc6MrvFg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=InXDmTyp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="InXDmTyp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E1F5CC2BCF5
	for <ddprobe@lists.linux.dev>; Tue, 22 Sep 2026 21:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790113233;
	bh=3lGPCrbxy50euI69CVAmXDJ2wFLmhjuZFP3IxK6FiCA=;
	h=To:Subject:From:Date:From;
	b=InXDmTypat48V29zjdsMTJAs63f8cN1htMthubAYctzg3q46rgkr/fN3deKHTmNVP
	 zcJ2IWN7NCnz6VEjMF1lOxqhdNehwfxQHhYB7elm5+B71EJb3JNQOtdymcDUJwjLTy
	 e+PrfAhV+APiWBXy0Hcr79Kn36DAh8CP3QPA9v3wFdy/N+eypJnfy5g3Rm4axD+pb2
	 w5yrlb6xo3/n4/oM9LtGodzhRVIDxCEIOfNtKwUMezrOk8q5K7eY4UsY6rGDsqORJ+
	 bT2RBWqNZCfoRIUYMAHizlpnCrC+PNFhgr7mQvn1eHqGUAvU0I2GF/QqAfaMn//SAD
	 1drQcOPEHTevQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BBA21C982FA
	for <ddprobe@lists.linux.dev>; Tue, 22 Sep 2026 21:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179011323375.25627.6116687416961020233.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a7300fd213e140c3979347ddb401bedab57ddcd721cae1b8ab3babfd7ad23989
Date: Tue, 22 Sep 2026 21:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790113233
