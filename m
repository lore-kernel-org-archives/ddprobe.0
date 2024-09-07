Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31B8715AAC8
	for <ddprobe@lists.linux.dev>; Sat,  7 Sep 2024 16:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725726954; cv=none; b=B5N8lzf3lQu4PEKUePYrwz+CGp/GzncdCZS24AX+o9WYeF9txFH79j2GRw5f3xRumKjwkcKnC51JBJBNYBkMgg7S5eEV+enVJ0DrNmsdvab58jW7Ic56z2jc8na7Cg5nkUpPs3YsT19JqBS0p6znLN9hVWMwTWxzmRTach31Zpw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725726954; c=relaxed/simple;
	bh=nAwLQSAffqp2wfDnfX2Bz2UxdZ/P/9WsGoQCoYzc2/8=;
	h=To:Subject:From:Message-Id:Date; b=Bd3WgL3vOjR3YVgPnlOqsWhVyPYQW0ooFYYL3l8zZBW0ZMtEN88P7Np1CQ5hPoVsiFqEFFwTF0MTgrdAVvIOVtisY/Uvr1qqh05amxL8xBogIBeQautVeq8iOuQvkAADA+jRnkHUEhfnTalASMUmTmPzM/PKd4VLM+Af0lZEVSg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LuqOxPjX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LuqOxPjX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC207C4CEC4
	for <ddprobe@lists.linux.dev>; Sat,  7 Sep 2024 16:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725726953;
	bh=nAwLQSAffqp2wfDnfX2Bz2UxdZ/P/9WsGoQCoYzc2/8=;
	h=To:Subject:From:Date:From;
	b=LuqOxPjXSdplD3sBJIpOUlgqVykFkLUT4zJzIMfh/En8LvhpSle2jQOLz3wQzxDYl
	 2/mSqwX4FwsBmn+31M/dLbmLGZ+k3VCLtVlp2eKp9IonyUFuNPpwnib6wvIfQiQWGc
	 67OJPot7PTupyBGWSBBomuyq+PLNMR0n9zHj3Bw04lqKsFSLmMCl8NUnuyZqM9/krh
	 pQLem3avDq+b3mbCI3LxPitPVVePSwdT/4hyUs8IO3roHhFjGkvfq/46+0qJUGDbbG
	 BPsumoCYgD2Y93jwDR3uAPj/wadS7hJRRlAkqWf1xEhRVMLYluTZg5Y8LIovBNWBAm
	 UTeAkQfJpAEcg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97896EB64CA
	for <ddprobe@lists.linux.dev>; Sat,  7 Sep 2024 16:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172572695359.20029.5755106717608529606.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e00a74d9b2de1a21cf92a151a964c1462eb572c0fc04fea066cd4bdb0c44e7a9
Date: Sat, 07 Sep 2024 16:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1725726953
