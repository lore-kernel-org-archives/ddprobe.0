Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 499F6339394
	for <ddprobe@lists.linux.dev>; Sun, 20 Sep 2026 17:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789926634; cv=none; b=HJgLedwjqYQKtwGx3xfeHosa/fmJCiwQtAokK4QIglynAVgz1KptVAxubjb7FeUFewNaVy8jZw/yZGI2UIVauxFceVP2MenNwZVmheENl7uu42iXm3ry8ZNJKj0IAq++vC9oixzY8fork/ofdhGY/AHpcPERI0/z41KYS8dtVxM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789926634; c=relaxed/simple;
	bh=9OSZ5xPSKsQysVevjiQK1bUlAlg2Rgd9Eiv4tUaC/UU=;
	h=To:Subject:From:Message-Id:Date; b=ewooV/tr9k44PkUD4wqQJQvK8oygLxOpGys9KN6EvJrpWq/uCay/Q5GPROTtkWiNCUa6TEUTM5bkFK1+apRLvhOVHKiH5Ln+2MAszrlgg6Ivp/OTsXX8gdjQRsoJ4ReSfNasZ50NROwZcK0i5FRrJyZtAngA94pSoCfZHdvpA9A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=d/aZR11d; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="d/aZR11d"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C919CC2BCB3
	for <ddprobe@lists.linux.dev>; Sun, 20 Sep 2026 17:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789926633;
	bh=9OSZ5xPSKsQysVevjiQK1bUlAlg2Rgd9Eiv4tUaC/UU=;
	h=To:Subject:From:Date:From;
	b=d/aZR11dCJH6ML9XrY0fcQuyj/vxmRXOdghohr59YxeMqsrvLWa+Sx2iyz9cOr5RD
	 CcInS8xxiQS0gFZXmJB+wGc+5ijVrMydu4MfpiWnIwsgSVWTAFz0dkePUaaRXzVFzI
	 iWJoas+F7HYl3Fw/1gvsMJyR6pWSJC/M8Y5dG3XlQRuUy1ImWmDjdIAQWJ6N+xoLV1
	 3VWxwAStD8n2xEKdEyADg53zRFE8N/pFAWLqODOO8+gym01oHjiAk3eclGYq74gyJp
	 xIVaDdphs+HjDFtFVc6ABIAClIeopErA8oD+862NG9muUtcoFobnPV05DoDSA0ROhF
	 s1ESyeiXImEeg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD7E1C982D8
	for <ddprobe@lists.linux.dev>; Sun, 20 Sep 2026 17:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178992663368.21951.17000249008574296660.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ad8f4ff913af1de6f829c2fb2ee612a67c5b88ee7d680dfa2e6e3e5d3dcd7e19
Date: Sun, 20 Sep 2026 17:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789926633
