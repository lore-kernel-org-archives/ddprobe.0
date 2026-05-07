Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F17738C2A5
	for <ddprobe@lists.linux.dev>; Thu,  7 May 2026 09:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778147854; cv=none; b=EGNFOgqS9SRfDlumv++l9KSKoo9L0YlAI1+gRVdK66W+r6xe4iDMPJP4HGaXyDC4aRH0CHWj96KXDodhD15ATxTehQpx07g97IdIQQY+kcEEIkG2AIcORp9awkFSNHvoGBf+dOnH0Nuf6/eEmDm6ScchNDlD6pDPFmNZTEbiy78=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778147854; c=relaxed/simple;
	bh=u7I8Gi4+eN9lNtgz6irAbAJW1wc6T7csg5dC7Cz8Fb4=;
	h=To:Subject:From:Message-Id:Date; b=PYUVll9Oq1Laj1xsFbBr4pzBxCbYqsP056flNCbefHMktUIp8IW3CsC8OFBEPQK2sWkDLAl551VPsFpgkIdMw+K7kmDNMNzvTuNHnORSitelH2DO6Htf8AlFySdqr9VLEX1HOGJj2SXrbXVfVIA+v2DjvOVVaKwSwnhwDuKOJE8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eHH5RZhL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eHH5RZhL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BE904C2BCB8
	for <ddprobe@lists.linux.dev>; Thu,  7 May 2026 09:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778147853;
	bh=u7I8Gi4+eN9lNtgz6irAbAJW1wc6T7csg5dC7Cz8Fb4=;
	h=To:Subject:From:Date:From;
	b=eHH5RZhL3TIL1F+bTiFgy0D68uTiTJoTvNaDRehHKIF5BIbQeOWsn64+sVuNpHvpJ
	 /9qCdONK1BKSIwuw9SaCgidjg/eoVzW0SaNB5hcRLg3tZUQ3sNKZ3ln2GSPiNXnOGP
	 rbChhoLe+1lcKJ/KqIqH1mebEwpES6ICZRi1+kapDWS7jfHo/4rdgnzxic8cXFFFm7
	 4YgLjLRSz4pZ7zWs5zJ1xBmxlW7n8PhXl8UHj97ZeFpm5ecXA0xEPCz4hnYlEGpUGW
	 woxz+hdyTg3IuH/ajGyDEfnQGeqYazRpfIw8xvwi10yGSBJbrhyq4cla8PEUv4wkJI
	 V/Kum8PsEwtiA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0E61CD3427
	for <ddprobe@lists.linux.dev>; Thu,  7 May 2026 09:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177814785369.27865.13401458250510523267.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 15118f940246afb53274ec99e7c07ab14982f48192b15f1ca82fd8f86836b9c5
Date: Thu, 07 May 2026 09:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778147853
