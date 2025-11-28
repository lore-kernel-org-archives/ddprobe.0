Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C589E257851
	for <ddprobe@lists.linux.dev>; Fri, 28 Nov 2025 06:42:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764312173; cv=none; b=kUosmmlKHtS6cFy/bCFEEmztz7TXTCPpiBBo1TjErHJBLqTiL4mwocLflzPF/rBUQgXcaUiH9i4KpQMJSilyzDl4h0tf7CVom2CF6/etmFwJgsZ8AcThlP/ubGJQoYZMrOMjF774AcOAtoZgIAIORtSPr9uOZFn+3Y3NhZJc3ns=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764312173; c=relaxed/simple;
	bh=zuP7gUIiZFEUJ13gdt6TldRaXlhRwXaWoYccNT067XA=;
	h=To:Subject:From:Message-Id:Date; b=TGu9n7h6BiQawx8VCwqsGpueoJlkY8WYRsvLKHNEE3mHvNLOFalpqL8S5P0LBzbpzcCAZ3IV9rRtj/k2zHmaemett7dqQPLmrEf8a0REkqOz80+MVD+j3rIXuHnH19BgV2FUmQo8LVPQ5xJy9epaQ6DpaTLLh6uDDP0mZasPm9c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MK3f4rLp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MK3f4rLp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3040C4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 28 Nov 2025 06:42:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764312173;
	bh=zuP7gUIiZFEUJ13gdt6TldRaXlhRwXaWoYccNT067XA=;
	h=To:Subject:From:Date:From;
	b=MK3f4rLpbLvpmJyMTqjLKvFrVBvypbfAsIvq2f6VCkj7JJcnZmxoHGrtHKvk7SZf4
	 QuxoTvI8QYpOuhk7ar6eojQ2KpfqI20SWB3NfaWxSXgqOXSEvmq5g+2TD9BNNi9Llj
	 9p7HnkU2wM1aPmDwjmmAL8GLwu9HAz09Rk5NJHxyjbeFxldEyrCjKhz1y41qFIxrnm
	 xpzCrCPd8kZuiZvT3oQwAqB/T/oGL8tNZwNYbkEn8PawHie6xn9a2CVQqswNVUyaIB
	 3TrJ+Ezkvhj7Ir/AmeEg1+ztaVDA4svJ2aOkSszgsukKvtiqtClOnCUj99WjwWYrID
	 9WB5kmAvOZ1rg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9206FD116EA
	for <ddprobe@lists.linux.dev>; Fri, 28 Nov 2025 06:42:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176431217358.23264.4499710923201602226.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 60cbf2b63ec74a09aa356ce6dbab3bf5b74a6768a574f6cfc0257305db5f9b34
Date: Fri, 28 Nov 2025 06:42:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764312173
