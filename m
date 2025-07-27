Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 453C58633F
	for <ddprobe@lists.linux.dev>; Sun, 27 Jul 2025 17:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753636794; cv=none; b=qF3gNPjsrBu8bO43U4Yho4QxB+q1cIpJQKpW3VHRg7xaFZctM+BoKXPokdH55dNoO6vn3tu8hkZuLZ0Z9IQsZSTwXZVHCCm9rW8B+b1c1vye4gESR934U6bm6ekiZgti0Gmc9XwBrs9a09xeAGqGq401XyMuF7wub9NvdCubZjk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753636794; c=relaxed/simple;
	bh=tbzmFTxs+MvShdYtlPG5f+C+yQkBTTSGzSg957qMHaY=;
	h=To:Subject:From:Message-Id:Date; b=j8fk6IItgc+/rWRiZhMvIZcagzU/QCFWZ8UWYe23AwkOPqV5RLX/xzpGmICORmwrRn0G6mLETd2dQBqgV8qIlZd3UTdNwmZmqvSe1ScoD9cWtg7+6ezCaKKGFW/mw5caj9odGbM4y6SHBBfMLpaHqtDFPL2u9EOCLpxLL9X7n2I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FGYhK6CR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FGYhK6CR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A593EC4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 27 Jul 2025 17:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753636793;
	bh=tbzmFTxs+MvShdYtlPG5f+C+yQkBTTSGzSg957qMHaY=;
	h=To:Subject:From:Date:From;
	b=FGYhK6CR7L9N1MV80GzL75gGke/jcHXRWTTLcf7XhMNHOLaVCzBrXhpRvPiCPKXjk
	 v83SDTeWPVFxRaDpvBTsDBfvIhFIgtEVFmKgarOTHM/Zhn9IHZRH1dbf2RTAwbzZ/E
	 nDgVGf97UUe5TrxWWLPHnBu2H6FEaofn/cIxz353mCLilA8zjn3/SxXHXvAm8O/DPZ
	 /aJVJ+S6j/KyokOmtXpbUCPd5DxWY0dDI1M+RZG2XZ4ebojDauYG2hLChpXuHpX/DJ
	 TydaeNo8Todgq3W0miVeMcn76pQK350hRVNZVfMxgdCQkN6vv3YtYlW0eD12aE++e8
	 exkd9cTM4SpLg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93EDBC87FCE
	for <ddprobe@lists.linux.dev>; Sun, 27 Jul 2025 17:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175363679357.16753.5020809455143816309.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 241a54aee5510b49beea57dc84da94519f1b0e4ca3e69b2c24148578a7204dc3
Date: Sun, 27 Jul 2025 17:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753636793
