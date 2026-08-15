Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7143E2AD3C
	for <ddprobe@lists.linux.dev>; Sat, 15 Aug 2026 04:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786766434; cv=none; b=UNUjqa6fM0Vdd/3f2hwT7ZkG4AOAODfbM2Znf2fguuYvXd0a3KfwbMH9+JsBjd1bkGMGMPoVf1A6Jy8K5l/Dtnyd2LQ2HjicTWzaC2WoJ52cpONjoACYG5MuGASrrLUGj30iIZplz3AP4YlTEdVetZFdnBJNu/tHLUhNtKi80OY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786766434; c=relaxed/simple;
	bh=1LUftd0Bpv3jZUCXwd838fFBIzrvG+2NJT4N5I9pEVI=;
	h=To:Subject:From:Message-Id:Date; b=FyO0KXEJcU9lJsVUqjbHnMJYBABQZTNyIgBEYbrdHS1E7e1z/TGzkXfQlwiEPl/EAOiJXpZS/PGvsNZAZ6UAAr/kTmyJB9GAYlq5uhoXAuV12G3JNYiRVZClzticbtZ+3xnqpSqtlQq1bDGy50sKTYKswl3OBVzUsuoGVSmuYZo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ow9up+wI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ow9up+wI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EAE7BC19425
	for <ddprobe@lists.linux.dev>; Sat, 15 Aug 2026 04:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786766434;
	bh=1LUftd0Bpv3jZUCXwd838fFBIzrvG+2NJT4N5I9pEVI=;
	h=To:Subject:From:Date:From;
	b=Ow9up+wIKFkMoZN0rFwTXu4Yzo21usHB87DQjqnVqAv/THiAtDdyyPlayQvr48lZS
	 tcMPkJ7ZMOSUSW/84qyPQjQjmk2B8Mzx/gPJBo3zufIdgFP/bpmo0sfjhWn9vhXk3A
	 +HJS5FqfcyNUc8QKQ66HBSMUa0DGdpfi2mAet+aV0jcIQ5dIrK5WR6eNE7oltGzuIf
	 qmqcc2zhYll9Yvu4/GFS9c9LOntbPKtw5dM+WjOSGQKPH+iuNoUu2xmEk3MFTz6AfG
	 mEUeBVnJVNfb42RI1jTBeINlJXPAgSGh2fhP4RjEiULMEn8apXYHm5bO/KsQpzSy47
	 RKHLOKDZ3nGKg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BFCF3C5DF67
	for <ddprobe@lists.linux.dev>; Sat, 15 Aug 2026 04:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178676643375.23610.12265425330052279326.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a34fabbe6cf8fb0ccf35b0f3330d79509b9c642b899ea6b4724b14c490a5ceac
Date: Sat, 15 Aug 2026 04:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786766433
