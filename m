Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 062301846
	for <ddprobe@lists.linux.dev>; Tue, 23 Jan 2024 03:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1705982297; cv=none; b=n77OQXvRQ//u1MQz9NHUMQ68G6aFoj3dJ11mCN6vzwJLckVSmwTDw98+UbLzO9fyGTuRuJAWWZWvDN6F8zHNaGi7cO/K9O5d5aMVy50g3SDmXIkCe0UbnBuf+em4r8apcgufVU8usWvntjZ7ZVGzzGeg/az4YGE2e3UorQx8+aM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1705982297; c=relaxed/simple;
	bh=P/KU3Mm6uFiLSmJnQPttZkU5IEEDSH7biG7oLuvsJag=;
	h=To:Subject:From:Message-Id:Date; b=DrNN2Y8OiVhtOICXv4yAbL9X0HUbP0S29PPIPuhzgK8GIWaCWQd9Fvhi8avxu/SGW6fKe5r8k/+OowLD9RvOLYmXgx49+kmI43Q8cvDfalPejO3Eoafpfnbj54Lg2nhrlg9M3TZW10l61s4KUL0v+ApeSFNCc+Kx2tLuYa4lehk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=I/bt8SAK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="I/bt8SAK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 856A2C433C7
	for <ddprobe@lists.linux.dev>; Tue, 23 Jan 2024 03:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1705982296;
	bh=P/KU3Mm6uFiLSmJnQPttZkU5IEEDSH7biG7oLuvsJag=;
	h=To:Subject:From:Date:From;
	b=I/bt8SAKZNcNhiLCpbY8O5FxikzXku2hS1kWEDWIcXHb3I1N0FBzCsrgeANIvW26O
	 yVmMyQc+3CbfXVYVAa5YiDS92lXzbNUDe2kCVTcOSl2mJ0Ch00N7HKAEb20HcpoZ/I
	 xIWy1P/NeHrSaTD77f5Z6im0oLL0IOBupAMR0PjjFcRtBe1aXbwnZvRCAEomvp8uHF
	 nWWo7stX/inXjZrQd4snzgIuREFqXHCftlRHN4eKjABKODTVo/NLtOuO8WG+F1pyf1
	 k9ZeaTUhz8qB8HqY14439yp5vXfrCm0zsHriVa99Xo4ERiAuSptCd1josIUK6cmavG
	 t8wvL6yORk3eg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6DF45C47258
	for <ddprobe@lists.linux.dev>; Tue, 23 Jan 2024 03:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170598229641.10259.12771466010446789852.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ca3ba5a3dc150f67016eabfc42fedb523de3ca032b346e11bfd48f2985c7adb8
Date: Tue, 23 Jan 2024 03:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1705982296
