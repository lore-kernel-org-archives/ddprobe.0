Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BB79C41C8B
	for <ddprobe@lists.linux.dev>; Mon, 19 Feb 2024 17:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708362496; cv=none; b=KZhzYnq6wI8iNIvKqallHib1XLhVWOyt6+7EJVTtFto+CFoT3bspIgKRE4ctIYreAPnJZgwzC6hxaejIHhHJrvYsfPltED65/8vqH6D0OgIp8/Crc2H1EGD0NcimERubl4I2Uh27at3gcdQ+d3o9AERmMHcJHJyJRSF9agqnjU4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708362496; c=relaxed/simple;
	bh=Dgy19d53RDgH+5wpTgBsT2byCShiLqSWrxjqx7+U6oY=;
	h=To:Subject:From:Message-Id:Date; b=gCOX6fel7tw+XDsaHuPQfn+Boh0ItLjAo5wKS2Fw4MTFIJxbZc6zvW8BmC8sQUGn8/TPJfyBBkuo+nHpn/CsCef8Pwbr78UUCLCqTj81r84X5i/NJ+68rpetK07WsFBow3yj9FMUsSdw30xQnAE8TZhreDZn+PFW6JU8DMo+Lh0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=amWsxLhj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="amWsxLhj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 84688C433F1
	for <ddprobe@lists.linux.dev>; Mon, 19 Feb 2024 17:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1708362496;
	bh=Dgy19d53RDgH+5wpTgBsT2byCShiLqSWrxjqx7+U6oY=;
	h=To:Subject:From:Date:From;
	b=amWsxLhjEQk7tCz2MzJEKAyf1tQzS63boOTK4YkmPCm6H6rl/xaAhh8UP5dbK6012
	 t9ctiss+eBlGTIkBJJTqkeLmxj2UXAIjQ+7fuZQEDHUPjGnw8+J5FrIOXQA6uB0vMs
	 wqdk8TGvmctQHI1/vJF+mD7/XsiktOAq1s5xybzuGwEv1z09zGGYUM3pPPdIPO14hg
	 5EXiWB9miY+NzNBk1oyMsBST0o7ar3QYeZz9gOmj8RDBiQw0+L9NHUVBovFlVslIln
	 Fy0wje9i3twxMN1GvMsgEHpOPcZpyEu1dvoj/Vsg0b6SdNJDcyJmt9sDNrPP0rMhnn
	 nLc3NK5/vSHvg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 61A8AC48BC3
	for <ddprobe@lists.linux.dev>; Mon, 19 Feb 2024 17:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170836249639.9815.2687955269751315311.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d8297471f274e1a940fb11d29fde9a0bfcd01a3e6f5f4b49bd9ae0bc6ecc3cb3
Date: Mon, 19 Feb 2024 17:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1708362496
