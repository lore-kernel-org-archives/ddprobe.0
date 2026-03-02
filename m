Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D859363C68
	for <ddprobe@lists.linux.dev>; Mon,  2 Mar 2026 12:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772453694; cv=none; b=YP/G1PXQxxTrEmDjGxavoWh6MbqcULBPim6I8CnIEiWooSj0iOCuL0MmteH7rg/hLTg7+HHI32gyMncGMCTuJ3GziIrjRoxbfc16sBkPIfen+d2PD8uRrqwxuGKZej49x7b534zkZAy3auGyNb30LwzBAOQcesfMqlrZfMbc2xc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772453694; c=relaxed/simple;
	bh=Q7IkcMS7KKpqOS3MajMl8U4JHtBm+T958ttDvXSc5Zw=;
	h=To:Subject:From:Message-Id:Date; b=KB6bSt9wZGce3ZUpyzLQNSbU0YJFMyy2es2zu9OzcPJpEXYc2sl2qW6kQfVaJzV5Ahb2UaOYQVZlrJEoooHIpvvWxydktQ+jI4YCtlEb6wsKW/eob5626V1zayGKSTLQ/yopAVEmSu+yxQSwAJejaQFU7zDG5ZWQPZUjfwT76vU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GROP2tFq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GROP2tFq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9F43C2BC86
	for <ddprobe@lists.linux.dev>; Mon,  2 Mar 2026 12:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772453693;
	bh=Q7IkcMS7KKpqOS3MajMl8U4JHtBm+T958ttDvXSc5Zw=;
	h=To:Subject:From:Date:From;
	b=GROP2tFqGxn8ufjF6KbuN/Z4HyJpy1NxSBnAFWFyCIJXRHE/zSNtFXJsc49z4VZr3
	 L5hiPOQ8NlKlhfllnRbZuj53u4fnvrWyGlDcnuVI07QwjsOzAI9GdZ5WeigVggcHTM
	 D6YSOr84TQ6QgrNtG9rEsJH46w63VIHBa1Yia80oZB4t2a5rNeqy3NOHk8Fgy8W+bk
	 WaqyTuYSzjMwvwAN22PCjpzboTOagPZRUpSBxE98skz333F+zBNcDOOqLEMA+Pwmbf
	 AUa6loBPMKycKq6404igD80/dUDBTCpFea90QmkbluxVkuLn6TPzLYFFv5CcvfWCbI
	 6QK1ahQlYizdg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9453BE9B36A
	for <ddprobe@lists.linux.dev>; Mon,  2 Mar 2026 12:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177245369359.367.18120248491466726816.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9b3caf72c6efdc3b4012a536b8d164e568cf00e6e21f3e7d3f2dfab5b2ec5bad
Date: Mon, 02 Mar 2026 12:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772453693
