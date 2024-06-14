Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4990C7E574
	for <ddprobe@lists.linux.dev>; Fri, 14 Jun 2024 10:58:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718362703; cv=none; b=DTuwcU90yFuKL6Uykt2SicSeq97vYdDwMisJD2rfUT4jwvbtF5AwyEfmseHC98UOYdqZNW6IGvqNNHclW9eXgxnoNjtPPJ00xjLvdk/vxsnIpRDMfxAjqR2WEM8906MxqAEz4/vr2O2/5ZIExhU7XvClYRtnbtoknFbkr5C3PMY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718362703; c=relaxed/simple;
	bh=kyzaLG5wK5CuHolwpGPM7QnVZ/+jIeOGV2zsHikxpkw=;
	h=To:Subject:From:Message-Id:Date; b=PIPdE9xoayOLf6r+Mi/9a4HjeJDK1oGpH6hZR45UV+yyZf1koDN+CUCJgJJAEmd64X8AYAPoTF/PA6MMaFyRQDPw9YjEbJZERj4vBgmR/ZDvOHecewv25Kg6xCa1N8tDH6DXii9vWT63HQcEOrQWivnFs/73qo9B9CojyugRSas=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=spwJdIRS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="spwJdIRS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D20FAC2BD10
	for <ddprobe@lists.linux.dev>; Fri, 14 Jun 2024 10:58:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718362702;
	bh=kyzaLG5wK5CuHolwpGPM7QnVZ/+jIeOGV2zsHikxpkw=;
	h=To:Subject:From:Date:From;
	b=spwJdIRS5i4+27wDA3qxWEDySUU3Hh1aLt1nsQCkesFJ4Gi1Si3H63enYO/YtMcAH
	 we0YL3juoth61mkMh2mKkadd0Wu4Xz2bLseUCFORvpV38AbkOeOiRi0W6auDGDZr6q
	 nvMHlylTiFs4pkAMKk2e1rLMO2M/IsO91QYbyY08mMk67GWxbqq+pBbFp85Z7SenH3
	 DaY4aJecdTX3xxDPXNqfQsf1Opymqq0xSorfzldPR+hiZqdLyQ9WLhU6DjFF1Zs277
	 cQhDRbPyawMmeeffu4z8RopPgrkQjqYAmpCtg5DaQaE+BF2gntzJYM95scxxOMNYKU
	 8VtJk6bmDUJQQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C2614C27C6E
	for <ddprobe@lists.linux.dev>; Fri, 14 Jun 2024 10:58:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171836270278.5413.14305248349180865873.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d98011f7f7c5dbd60502ddfa2c13602f7be7a288405c4d3a56ff5ee6920422b2
Date: Fri, 14 Jun 2024 10:58:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718362702
