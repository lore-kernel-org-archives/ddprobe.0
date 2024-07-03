Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48C05181301
	for <ddprobe@lists.linux.dev>; Wed,  3 Jul 2024 15:05:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720019123; cv=none; b=sz17eJ9UjLKt61WDfCxruwch7/csEM6augH5hMzyz6QwJ8fHBkBJo81ABD/NoX+/xU3hvdGgoVZCVSfqmKWdlDJIQy6ZBgw4y35Tu5f/cLFQBi5IAOzhHaSmhZLxSfXHVGTGwLp6hymEc4eYnwxevthf/QjGUuxVEzdYIIrBqt4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720019123; c=relaxed/simple;
	bh=jZITLOprILo3l9udgH+EUIDYy81ATfpm9MkA23SCjk4=;
	h=To:Subject:From:Message-Id:Date; b=fzrpNdmw9Vi5Qe8JilrupS10O/lshr5JdaWuwIOOyTeuFGRyaDTVqv+PkDWHTtuSu3rSpHbbAvlcxFXMasPBaYk4H4U39n77iiUl/AZFMPceUZhrYNo6QYuSyaZTg8KsFdMQAdr3BORBZa8PmagZBr5hCpnN2plfaGVvHFBIFRI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fzsRBUBj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fzsRBUBj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9FE6C2BD10
	for <ddprobe@lists.linux.dev>; Wed,  3 Jul 2024 15:05:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720019122;
	bh=jZITLOprILo3l9udgH+EUIDYy81ATfpm9MkA23SCjk4=;
	h=To:Subject:From:Date:From;
	b=fzsRBUBj6jNAnEP5i8m6lDLKqpEqdslJOZzC4TaUpkaCw9xx68PUn3pywbJnvesLr
	 sbZ2ypX5D1t8TgQbZf5lz+puT14yckqSEMeqt0fJerVWkU29hjDdgmFi5kL16cxgl9
	 Pwz8ZYWuzPxvOCX8ogP/nPW92BC1ZO4iofgCojwcMH9l0XbV4/XJG7u/PhSG+B2jdd
	 Bs/nefmnCExJr1dAFSwVU9i8Nui+VJotd48JtFqZkgXcJtxcy0aEh92XTBZ8bXGZeB
	 XtjrcnyM7TUt3wJkx3k96rZg1AQJJrUzGaxBY3A80fFuZ1HFUBHLEh2xkDeH8wdwmL
	 yd1nxZDvPyt5Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C513DC2BD09
	for <ddprobe@lists.linux.dev>; Wed,  3 Jul 2024 15:05:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172001912279.10674.15080209672440948040.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d1b5ad5dbbe6f5cc41c7778055307039b676086a8e127d33625cfd46b614a82c
Date: Wed, 03 Jul 2024 15:05:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720019122
