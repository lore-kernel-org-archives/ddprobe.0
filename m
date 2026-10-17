Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 575C6319851
	for <ddprobe@lists.linux.dev>; Sat, 17 Oct 2026 21:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792273234; cv=none; b=FZFvCaIxW0x/PvdFBlbON/iVRZv6S7LUieZXxXPneG9IHU8O/isuGUkuj0K0WrbhsOsNv6d/UAgw1ld8wa8FpmlZvGdYct749MewNbWkr06zvbXBr/o6lqnwrhpY7e7dglj2muMSHEkb845XvQdz3SJS8BWmB+EANbe8RiErTGQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792273234; c=relaxed/simple;
	bh=781oRYVYcyV1kguJC7XNKbC+t0AhXq/l9SQ+pJO3AsQ=;
	h=To:Subject:From:Message-Id:Date; b=hE7dneHPfAwmIgC6eBPXU/00lpHeGXB+Mm28ojF9PjzJbjLlhzubHw2hpb2GAQ8rAjGZWS/8nQlCdvzgI1MsbkhzmfBF4Y7QViwvAkoews0W8CH3jogF3RtkJ5HMzzEwZQ+AKtG1NFT+C8diSFbOKmW9U5teFV9upndBgjdEyo8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RGYYtxr9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RGYYtxr9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E4FCFC2BCF5
	for <ddprobe@lists.linux.dev>; Sat, 17 Oct 2026 21:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792273233;
	bh=781oRYVYcyV1kguJC7XNKbC+t0AhXq/l9SQ+pJO3AsQ=;
	h=To:Subject:From:Date:From;
	b=RGYYtxr9EMRCeAusiwxo0L+Q49RgaBBJvHmOoFoDbCp2QQFEoS8foMUm0QMcHEmKp
	 Wvq+N6ewfPcN8nZOf/KW2PtJEh9nUekirLslItSkIoClVaFMJczAF3fLPDqt5b4bQ/
	 VBlOBMEjT0MnYqhxtvZfq8bYBCVnaY7+/O6koH/r5TNtMXA81PwybYa1qxnNVe08mU
	 HStQG4e1qaB21f+Dz1PcWF4n7yfhKNWIHnj0XhB8d8pFwLSrK/Tb05LU9QlBdoFDXH
	 qVI9jMK4WExJob0dS9tAkW9H/r8ktHEgdDrybqcvrml9LR5CI/2qVcKCWuLu/6cobl
	 VlGVWXutuGWPQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C088BCCF2CC
	for <ddprobe@lists.linux.dev>; Sat, 17 Oct 2026 21:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179227323373.20346.13094287701800867278.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8ede734ccfdd780e2c82e0d6ac3c1ebac003ab7471fd6d8a55ca726b1b146abc
Date: Sat, 17 Oct 2026 21:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792273233
