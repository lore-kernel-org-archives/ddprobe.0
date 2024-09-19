Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D3A61990C1
	for <ddprobe@lists.linux.dev>; Thu, 19 Sep 2024 08:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726734354; cv=none; b=Vzlh4aZ+t39nZa28o9lisDR2hhIC9uW8m3XeOKNhdlAhBncvPehbou5THd7vCu/NA5eVrEWSV5u1Oya31fqei0cpRrjpmptgIuSPa1YfnXZZWNBqg895zYJMEKwmOrqZkyLiIuHoMc3DVSpdiuvY+/3S29SDlJqjjGaNm4EGfyU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726734354; c=relaxed/simple;
	bh=TplXOmCObyj8hV3k8Htw4uNnC868s1btfFXMU8PzgrQ=;
	h=To:Subject:From:Message-Id:Date; b=lhsPyVT9UcWIqOQeQYvjlwLsm+nECdUeYW8wTHmDGz9oDfoBk925gGZeNFuYQ7W+wsKk1lUFS2z8GAhhHzmnHIgH4PWw5Lk62FKazAvbQWisoBqgWocqojWhk/td98imnhmn525uH5iytm2Z3rESQy5uT4vjYRtphsuF6vQKaek=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oIGV33eJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oIGV33eJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAC86C4CEC4
	for <ddprobe@lists.linux.dev>; Thu, 19 Sep 2024 08:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726734353;
	bh=TplXOmCObyj8hV3k8Htw4uNnC868s1btfFXMU8PzgrQ=;
	h=To:Subject:From:Date:From;
	b=oIGV33eJsCnF/BimyrRfmLEPwd5uSpK7LOoIVST9wkMbL/tj+25hXoZdlL7tMoAbt
	 45ZEbjTRkOfUE6QVas1DpW770nHZypv328djvJdsOEd5R7P7dYMSfcctuSswn00gkl
	 odPNrNPQkzDf7VQZXUGhXSS1W69E86tXuyufSp7hFDItzW4YV2BjnUIp85rQ23WZgY
	 ERWBG4qJZNV7c9AjDNqoYpmGMFHzwnR5pyWCoeJNzdy+/QdwQTYzk+NrEYP/N38W+8
	 pEZ4UokTtQojyZXqGi7vdETkvEy1uDEtT7dx+OY6wC0gzj8x/sdpRmyd0UTit7ZXpS
	 5GBneCv3uY9xg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96193CE8D5C
	for <ddprobe@lists.linux.dev>; Thu, 19 Sep 2024 08:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172673435359.9020.12584682125862572276.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 556209081ad691faca80483840a5f5896af54d230cd1e93eecc6bebd926570b4
Date: Thu, 19 Sep 2024 08:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726734353
