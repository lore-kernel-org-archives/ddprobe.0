Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0035055E7C
	for <ddprobe@lists.linux.dev>; Sat,  6 Apr 2024 22:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712443097; cv=none; b=Mt08D5bjRnDBcci/s7Q4A/THzwpgZiHqMMzZOjeUwd7IPRKduCzB28ACLhVzS16/FwpAWVviMR8KJtwkZWyD6erCRGPrm9ltjhfYX51YO2/V3neoLW6q77MYuVaLq0IdSRleGh5TtKa689b8pqFLld5uGa2X+oTmf0WAieujUkE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712443097; c=relaxed/simple;
	bh=1fK/LYWBntPtzKBerkGqmH2pbVA5wQFmGCBxSEDmb7g=;
	h=To:Subject:From:Message-Id:Date; b=RPkLX7cgBxBFUC66DuSaV0q3x66YILk4TB5byDlAkNumTf8+mK2Y8l4RAEz7YVDPA0Bnd0n6kKloq3Lp4/Bz56vWqY13veNMAQL8uDr29UgMncbXwqKb0V8XjhkniCkfvICR+zjaKfilF6AJJ0TYOV4t2QV6PYfd8qG/GWfsymE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZrXRAzOm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZrXRAzOm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 79306C433C7
	for <ddprobe@lists.linux.dev>; Sat,  6 Apr 2024 22:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712443096;
	bh=1fK/LYWBntPtzKBerkGqmH2pbVA5wQFmGCBxSEDmb7g=;
	h=To:Subject:From:Date:From;
	b=ZrXRAzOmHlIcn4nT/m1oKuaUU6XAqjLxuKMAL8zE9N90Pik1IXmdpD3RVJVEN12Jo
	 ANvIdnoDgO7CpEeAXjhQDYJG/R7e1VJjTT73zLDRm9KjibT2mLrAgrc+PlrjBCXKyJ
	 RO713GBgveegy2libeq3CAb1Txkhkjlgx3BXIHkK6PjYyejsVX/jm3UXV3zQmIX+pJ
	 O0oakc0aFEKPvGgtPzqpi1B4FSyfeBXASJYzCHC52URt2M7eqKGa0GlfduooJicIzM
	 Q9b/RDLCGTz1rsf3a1eqkpXF/SMp3pyL+VKT6Xv2PNFbSYoLogMU7W5Z6FUpw/jYBz
	 Jnn62p1Rq9N/A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 65D7FC67861
	for <ddprobe@lists.linux.dev>; Sat,  6 Apr 2024 22:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171244309639.614.4162125024487147655.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b6a64bf46b974a7e991282c62bda2e55bbade417f63692f2cab9288f6b44c279
Date: Sat, 06 Apr 2024 22:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712443096
