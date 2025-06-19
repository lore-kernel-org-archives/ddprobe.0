Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B0523085A6
	for <ddprobe@lists.linux.dev>; Thu, 19 Jun 2025 04:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750308594; cv=none; b=DEBzGQPEiwDGWk+aEDxQZkXY5XUUi61ogAc/B88XhVqMrIZyZeta1yi2b4AW2L/jh09ckhNSoLLUZsVnTTmGWML4z8baEUU4v4emnIOHqt5hRPCEKEB/tKTnNapdRbnTzMJyGQY8JRMRq0TugE2Rbhoyj3QsgnBbJx/7WmwiN1A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750308594; c=relaxed/simple;
	bh=ASGgQH68hEc76iXCq5zlUR0E7IehU4RuXxdPvWtS7uA=;
	h=To:Subject:From:Message-Id:Date; b=j+FWzDIt5EsI4pl96+Zw+rz2A1L3PQ3ODgTONywDwLnE6pNw5rEsr6UbhYp3MwDwrUvOFfXsnRnUGEL3EvhV2/gHrwxJMZWgBpzljI2QMn7nUiTFftA2b6RUxXIf5dDWbzar5j+upEEgjFPt0BbtjeIo5ImJwcc5dMGMgSYuiOY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cEmKBKXV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cEmKBKXV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAF73C4CEEA
	for <ddprobe@lists.linux.dev>; Thu, 19 Jun 2025 04:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750308593;
	bh=ASGgQH68hEc76iXCq5zlUR0E7IehU4RuXxdPvWtS7uA=;
	h=To:Subject:From:Date:From;
	b=cEmKBKXV8dlwHlrtMKsfkOsnJsn/G1w0xoyAfex0HMJEiWG0c5vuYbF46VWdSHYMv
	 3BMnmXRzS0dywqpCrIiKQs0pzraWC8h0kCpbdNIA9mWqyNdgr/LzVNxhw+MvO/59uj
	 TPjgtUVRkvh2rdxLVrBbgRiL30UYCIot1HVxsu2mm6OHNOUI78mw4MSIdSltdQgiRM
	 nqu10EBHm6sQ6Cmg8WbPGz6f6ACEkDdwm9LfKY3X+S6LquW4LhgFoeIDF1IBEgSpJR
	 +nm1qbrNfyRaXA52vnYSuVAz10y/1v9RlCGoLxibjk7fS/GgEOp+w3f2DgrV8X5V8l
	 ziXfPIgOQklGQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 932C2C71136
	for <ddprobe@lists.linux.dev>; Thu, 19 Jun 2025 04:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175030859358.8537.3318008442732381680.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5d8a204ee52e8cb144a1ffe9802c330e73ed0610467a22f9b10b59aba5bdbcd0
Date: Thu, 19 Jun 2025 04:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750308593
