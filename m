Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 273172E403
	for <ddprobe@lists.linux.dev>; Thu, 22 May 2025 00:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747874994; cv=none; b=YmgE9hnlrEa6GvhidCSx7wtPW6WSHsbk5OQB73FgjPqKfqXKeRLeP72Zo0wHSZ2cWPOmN7DsSst9gbG6QeORwr64JPgErDF/2x8MIvKMYHqe5KR4hRC24UFuWQ9tXwZ39JdcQ7mcPnyLxQnGmNbPd3MxsD1WK2zRVjqCSOpVIh4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747874994; c=relaxed/simple;
	bh=aNzNXUGDfRs+1MqOiGPdi4os+zJkcrCBh81zap9Ijds=;
	h=To:Subject:From:Message-Id:Date; b=Vr5Q43LRUnHPOb8NsSnUuiAihcd8KIlbg7vgYKkDJmj4eewxf/TkexZjaaYcOCR2NXnXyFO0zh0tAsD3Zd/0WkMEoBEX/IlqaAciTo96oDsEoIAB1FJpEci7OumyJBuLjj6hBSAfMTwn73z+FYaIOy/98b2WMi9BrrW3EqUL+fg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hZ5vWzXS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hZ5vWzXS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DD6EC4CEE7
	for <ddprobe@lists.linux.dev>; Thu, 22 May 2025 00:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747874993;
	bh=aNzNXUGDfRs+1MqOiGPdi4os+zJkcrCBh81zap9Ijds=;
	h=To:Subject:From:Date:From;
	b=hZ5vWzXSaRTi/za8k/2+PRL22eVW68crLNQD7H5cHfLHQHp1GDHe20ZFrkxm40RWm
	 WJYAcwmjauhOItJ0zC6Lgkfg9Lh6m+P8S8IU6IlnEqW93excqbTBstoXuIATWliZV0
	 nnv1sWJWEvAcb+sqpTJL8CSh8cWb3SpPkb2RDwj5d8P5njEB0hcL5iG5vRwW7M876T
	 VLlcvFyvFL1CJ4KAYijJY9vhTBLCS3ZGksvsiDBrAlTZccD3Dw/PlSjnf6JiO/Wcbt
	 dGP42BgRZ7wOU0BL4crvPJpS1QjF3OwuFNuIBLDl7YFqH5GNLztFV8YRxQ9kGwD6sz
	 eEXjTxXWfk3SA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F139C54E90
	for <ddprobe@lists.linux.dev>; Thu, 22 May 2025 00:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174787499357.29587.3818619003022376857.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1631f330d24fe45ecc88f1c5ff318f838800b802646891e36eac1175d6b21c46
Date: Thu, 22 May 2025 00:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747874993
