Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7786C3BB112
	for <ddprobe@lists.linux.dev>; Wed,  7 Oct 2026 12:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791376834; cv=none; b=LVsiKDMt2ISFm0ITV+6wsFy9cgrKnLogGaizrQv6cOFbNOV5tRVX5Aso9nnGC96zJF4HLxK3bpcHO/kNkFB43ZvWlOxvglbeN5RpC6AIP9/SiyajtcGKknG2DbEG7oWVtjqVHgPUufTLmAlKBqNTm2oGjiHlpYYy8s+k6RCxsBo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791376834; c=relaxed/simple;
	bh=8sn423jGehnfYj4EivoEOAriHTjKFVqncsSwWcH3Uk4=;
	h=To:Subject:From:Message-Id:Date; b=kFhNeWZlj8NU6SQAqPpXUuZAf3mrN3Pin3CPAnAZWr5HyiR7kLCel5yqofL3vFIibirM6S/c8aeh/N8xI/8cQftN544Yx4IjlozpPZFASKIAM+DMgZp91nPalUfbn12zYHLHV4+zk/Cqt79nRNbmdxjqnD9Imhkjk1tetPMo8NY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Gy7s8mJi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Gy7s8mJi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9145C2BCC7
	for <ddprobe@lists.linux.dev>; Wed,  7 Oct 2026 12:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791376833;
	bh=8sn423jGehnfYj4EivoEOAriHTjKFVqncsSwWcH3Uk4=;
	h=To:Subject:From:Date:From;
	b=Gy7s8mJijzA1bEE/+G1LeGTUljUx8e/0zN/qVnxif1Kksy0wyn6WxGOAGaspCjBbt
	 bTkTB7iqUhh9QogsB/WDc3JkeabBqyL5CO6RSe9lgRVNgjobnLBj2zbpo8sRDpHVzv
	 mLQU7YRihtNHjuQcfs7hg12D36W+OEkHkr6aNwjrXeV1+CzAzhl5NLNUel0c5WpFcg
	 kN47egqSmlEuVUfbxR2DEkbh0envfNvSYb8rMc4aQdLCX7C80xFzYJZSb/afilguDL
	 SCvEfaJWhS85Bb2XU96hiKtKkF45hVMNUZJVmxKncwyTY/NbGAOoNfdvodJHh35QAk
	 +/Wkmr7W65tTQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3DAACA5FF1
	for <ddprobe@lists.linux.dev>; Wed,  7 Oct 2026 12:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179137683372.9907.5112804092106773892.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f52a5f170937a6e9d465daa8614aea635f701f49d0352e9a861030fe1a5a812f
Date: Wed, 07 Oct 2026 12:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791376833
