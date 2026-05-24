Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 553133191CE
	for <ddprobe@lists.linux.dev>; Sun, 24 May 2026 23:32:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779665554; cv=none; b=jl6mS2htV87BiqLrMXFMq4CxCSuweo4MKQX/wZEk3FNSYDEaETN4pwQ222D6dElbaEdxkOxIxuaMtmXmGjds9BPZ0b+osB98VXvrEh4FH7wOjOgw+ydd/9EH7ktOput6r7pIfALflKn/AaC4+UOnxo7biuqC4Ize8Xd6ve9qm+s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779665554; c=relaxed/simple;
	bh=ski/c7wgb6vmL4573eHbXt9s4FHX5ZhrFKKg6eL1mLw=;
	h=To:Subject:From:Message-Id:Date; b=GwMYlsWsfNM7/c8I9HY1MFtoXqJWhzFRwx4RilKMpTbq/vkz9gpHSgtvh8p9D8Ojj665t5IKv1IPicyZFT2Huf/ffSTQwNahMI45eqc62m1fwalReE0asOZXeqEfwhskFRxSiH7q3pgKcaamfr2n0HoM7O1e8BaTC0eUiSBmfso=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZDmiNkg7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZDmiNkg7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D93A5C2BCB4
	for <ddprobe@lists.linux.dev>; Sun, 24 May 2026 23:32:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779665553;
	bh=ski/c7wgb6vmL4573eHbXt9s4FHX5ZhrFKKg6eL1mLw=;
	h=To:Subject:From:Date:From;
	b=ZDmiNkg7okGuBrxs4yjWCI/NpsV//s3PzEn4Zfz1Qa3f9Djt3PXL4dOpZNKhqmwCw
	 sfBPxtvwHeaOPMRPA5HFwWRnBGhNcezFNq20Rw00giIK49fdedP6EBk/au2obVGTC7
	 1a6O1PjBo625E9Gxyh42g8jIWf7AyAX0h8b/m+k+Mxow8aYviRHIOo7RL1aXWl3UPU
	 14qOXLCSgLG8DNbRG53XjlNLonJcjhddbNb5i1xFTrjuoCoDbu5ff0UbAYVqE8pLsf
	 A20EYY+CzDswcY2Z6X3zPpDbKq5VhVGIp//0gieVK0F2B6pOfpOGeMcvKoxbOKmQAR
	 7AH5VKfZ17gkg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1277CD5BAB
	for <ddprobe@lists.linux.dev>; Sun, 24 May 2026 23:32:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177966555370.1008.16270485257025650935.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9930541b572296bbb0c2d040e8a4891453f88d06af01fc36c48e3cfb2f627919
Date: Sun, 24 May 2026 23:32:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779665553
