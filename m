Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C6772C15AB
	for <ddprobe@lists.linux.dev>; Mon,  9 Feb 2026 02:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770604434; cv=none; b=a+nR4ViAOZ/Ggm4XEpmE2Mkv3uS0ReIOufAKmF0Z/Y2GY40E+mODzlRindVay2h8SSo+vCjkToSb0rfgxFOPUKpzAoBIk5bTOFfdsheejrBKKlEwxkH67j88Mr/2SY77qePlJhm7jEW9Pri+1yXhw6gVayhBqfOU2CLXJH5j418=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770604434; c=relaxed/simple;
	bh=fF3ZzEE9jDZQfiiZXaePPh/NHX+Fxd31pPSCCj1/Qt4=;
	h=To:Subject:From:Message-Id:Date; b=PCJ/kDHE7edinWCv+qEoow5UIBk427H3C8u1oOKTAiasK0tPKdGFiNEl+PXBGn0Rcj5E3BdGtcMzFoOoq+JCpBiVSeNanGbUuBGa2+zoBaWVWsCgK3a8SLkjeld/GyoJphcWTRfxzn0kIHajojek4t0ZDUqGoKi6HZ3m3SvD44E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dvKUfMQ7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dvKUfMQ7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF9C8C4CEF7
	for <ddprobe@lists.linux.dev>; Mon,  9 Feb 2026 02:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770604433;
	bh=fF3ZzEE9jDZQfiiZXaePPh/NHX+Fxd31pPSCCj1/Qt4=;
	h=To:Subject:From:Date:From;
	b=dvKUfMQ7W533pwbirkvjSGwnqtOuCSvUa6nKGn5Ja/2iEGydC4PglryRKukKNVSHM
	 6zyYt2oG55dE0L+Cf//kSoqzwiPp/Q3jpyWNmpF8HLAcNSY6Nl08yxGDiyQcFa4FFy
	 1+we2VQ90PorzXVgkJlQjuOzVz5CdJhQAK+bu0qhyrRjHgAVZJhfjRC6tP1dYA9b09
	 nt9BPB1DUNN5/UOdA53guJJKq6QV2JraKqGFPNPVckjCPGtwLdm1YSA9HFUwLhZvkt
	 fzf5ZYjvzdWOWRnt8T4oCxZtHyRvRvZYqFYedHcrWdr///LT5myNGBD6kCSJV5wpjO
	 un4B3irc73wBA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99A5FEF06ED
	for <ddprobe@lists.linux.dev>; Mon,  9 Feb 2026 02:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177060443361.945.4231445431964210270.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f2090937e135a59c2052b0a47b85a25af08f48e407f54ce268bdc968f1e0397d
Date: Mon, 09 Feb 2026 02:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770604433
