Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2769437B3EB
	for <ddprobe@lists.linux.dev>; Thu, 16 Apr 2026 21:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776374254; cv=none; b=a63UA0olXH1ib7QeZPuKAOCt9thAzyQrYHAHLdvcOPwM+kjHq9dxCRDxy/6mq6ygxENa1ReNpRILLb3GOiIQhWzV+vrMLMVC93WO0XsMtMUeePun5lySgg95mkD8mTN3FPuMcelajoCAP3TYKzyy99L5Kxtm300sMmtGnpZeCx8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776374254; c=relaxed/simple;
	bh=R1yzyDHMlZybr2g+4WL2z4O60asr83By/1AYCiGWCok=;
	h=To:Subject:From:Message-Id:Date; b=K/KjB7bKOmDH14vfLdAqAdaZAQU3YpttHm4WfmaRQLJ/mCdw4386fCjVr8T/bL3eKKZT6pwN/igPNBmY89g7fjNYLrzCnr+PntuqyDm3dfqmICkEmegN1UsEH0B4j5ZlYLKpNDPrnqX5/QVzIa0R+dkf1Cnu1bR+I+iaOFoKQKA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hHdJwT8K; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hHdJwT8K"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B993AC2BCB0
	for <ddprobe@lists.linux.dev>; Thu, 16 Apr 2026 21:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776374253;
	bh=R1yzyDHMlZybr2g+4WL2z4O60asr83By/1AYCiGWCok=;
	h=To:Subject:From:Date:From;
	b=hHdJwT8Ktro/4j1rpnikEM7QwQGj+eBU/n1IIOnCtEFeuqb3bM55gQUEWdypkNtJ3
	 vSstRRlc/a/pijBKb9ndsmMWsKzwc2oAQFxYWsDNj43Am4Sm11bLApEi/DwxxbZ9+0
	 ewonwyKS05s4goG7nK+bRYsdu31q6pjE2c96KqyqzW2TYXXGKymOC2y0dMbI/c0a3X
	 bEGlkfyOOrOEsDG2PPSGoc7KZLXreoB7I8Zdk37yeiO1n0QvY8f6U37JraUVh/YZph
	 HPBlkTYYgLPbaP9oZRuODF7TShlMZXb45DqJMwD1bdOw4EG54ptyrp+eh1xF8ntXSS
	 iO2ABGA7fHmQw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA981F8DFC8
	for <ddprobe@lists.linux.dev>; Thu, 16 Apr 2026 21:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177637425368.17947.7790490176791799304.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 469467f7341da60634a7c464de61a5c50e380354877ae6a476545bca1ebef1eb
Date: Thu, 16 Apr 2026 21:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776374253
