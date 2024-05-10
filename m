Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A1877ECF
	for <ddprobe@lists.linux.dev>; Fri, 10 May 2024 00:32:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715301143; cv=none; b=SPj6xhVmKNpBHK4aFmL8J55w7cFjmN855oFoeDGiHSUU+YSWKqIG9XBHhKznf/X77dKsp2mCofC3ItQgQP/16InGET25DhninNTv59KORMaB/dTX14Zq0bNdUZ+DpBu7F4nQ0U2EmjR2+TkdEIICeYFMw4vHu6o6I+76oT580eA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715301143; c=relaxed/simple;
	bh=4GoYAwAnyZKWGdnsQhitpGHi+nzjbipuEXnvB44o3RM=;
	h=To:Subject:From:Message-Id:Date; b=JIvkXBbn4EXmzyPHTWPPO2Y2TX4C2uxVjzWQqM2MGY+U7eskVOLB49K1F1vVVjEWbaKCE0dCyDg+3PCjPko9F2Yo9vJMwtjO3vucML2spESDIxMikY6/5dasLFMJyL32Wg9R0j4/IT1n83P5XstdTaFKDY1hXLm1zEhba0pGY2U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=s+Jj4mQw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="s+Jj4mQw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EE486C116B1
	for <ddprobe@lists.linux.dev>; Fri, 10 May 2024 00:32:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715301143;
	bh=4GoYAwAnyZKWGdnsQhitpGHi+nzjbipuEXnvB44o3RM=;
	h=To:Subject:From:Date:From;
	b=s+Jj4mQwj4N1QvGkarmLlkkeWXWNXnPck3qk88j81cOcfiTKPPnVZy+BHOhFmoeA/
	 jJAIyxPqHWpPPuOVdO6Qp7w6coTgrmz/6+eKQQDPHHdBROfaQ8z5HqMS0KbOSMwqKK
	 +kmqlIVIYhr51+1w8Ww928KHcQOc0G4IvAHN5x6NcqZ6G4IZDpy+HRLRd3Lsg9H2cH
	 pSanOZ2BIF0vDFXgju9dOTv5xTYiGPQYgCPVIBdpAy2Rzssy+K07vJaYTkf9cjdFgh
	 0SpsSOxxJPi2L7HVsf9yNu/ngdgFeHugAZvt27gb5js1O10FaPoTlXaZdjTBQO3W2M
	 E2B9vWAXE5Txw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D6C2DC10F1A
	for <ddprobe@lists.linux.dev>; Fri, 10 May 2024 00:32:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171530114286.19112.12591055327119539675.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ce58595341b754f775d04556f77dd324b77cb2b7cf144698d21558c71bee1c5d
Date: Fri, 10 May 2024 00:32:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715301142
