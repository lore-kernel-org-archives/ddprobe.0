Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1294A2F44
	for <ddprobe@lists.linux.dev>; Mon, 23 Sep 2024 03:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727061354; cv=none; b=bhep05m6SodHe6y7IQHYh81V3Qnx1pkLuAPVSG4fy/sIZPueJZe3KnuMoRDA3xFuWs9PMXwhdgjoCHxh7d8sKpHHVzVc/xCBL1BmSbqFFns9vkJDPt1IdL5XY2oN7q2htDbbOW/3j5colPtFCIxnpWvk7RWH7/GqYFYnDJTMWfk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727061354; c=relaxed/simple;
	bh=xIZFJskq8GcOl8yw1RQMprH3rVfv4yI54fu9VUTEtCg=;
	h=To:Subject:From:Message-Id:Date; b=nAmYOILvI64rMgOxr0SBCCGJx+GCJx8LNGkWGKpeBV5jWayGuzFuzgZm27RUA2gvm8L4lxnmKbrineFxTogRl0Gx8IWzdsCiclpWHs0EYBCqAmVj/iPqvoPWZDQUa0jqsrFLUlzHSzBLdR3m4vJGGDJJ9tCD40KKYPpndljABT4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dP0Astq3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dP0Astq3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB260C4CEC3
	for <ddprobe@lists.linux.dev>; Mon, 23 Sep 2024 03:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727061353;
	bh=xIZFJskq8GcOl8yw1RQMprH3rVfv4yI54fu9VUTEtCg=;
	h=To:Subject:From:Date:From;
	b=dP0Astq34PZLqycHKUigSMqPl7p+AeorPocRe36jcTK9qQK9UAQK9QIC3M0wNoxus
	 Dut9XaxTZoDVUAUx8JRi8QqwSTUeLhNMCTUAgq7LwXZ3ySfd4zdO0tBOWYsB++leTA
	 g21TeyFIdYNtr7tn62wF4YzCvi6HfVhPObcAfrRt70sPkH+CotZ/u8IYu2I7scR2aU
	 Ni7RkimX3EV218lADdrb71iz34hGyR3QzkXuTpLUg+ZBVgDkQJqh/cIQNPJhFOp0C9
	 UlWjodModNig/39ZKS4zcBRUBdotHJEEeNFuEDzavsefheLVmK1nBPTBpkSGtY3+bX
	 Gbo94co5zWpUA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98202CF9C6C
	for <ddprobe@lists.linux.dev>; Mon, 23 Sep 2024 03:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172706135360.8088.16234434017542393234.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6608af238348442204bd96e34d96dbb60c002408c5eca03733511a5acbc80e62
Date: Mon, 23 Sep 2024 03:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727061353
