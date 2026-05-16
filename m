Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4099C1F91E3
	for <ddprobe@lists.linux.dev>; Sat, 16 May 2026 07:30:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778916634; cv=none; b=rbbIbe0Mm/RUO8brqr11x/WfILXIrVspevEfXOv2bA9fA/FhDXR9qi0a8aFikzQD87Px8Dpnl4awTDHukztb/OXZQJN36Is3B1a9qCr0C8T/2ssVpNWlQ/gzSVa5qBB1q3fa1gS4itCE27MQ53eJhjtLljwgIu3NghBEt6IlQok=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778916634; c=relaxed/simple;
	bh=mZQerfz19t8BFwuNpuiglKef5vbuZDTq4fJSdRC7JHw=;
	h=To:Subject:From:Message-Id:Date; b=YgbJJKUgkaZb4/TYXG0H91Q/E1U3XTZFlbUY6c6+ZFZ+IOVJ+1u80pZ2uqYbQel/SwdzXkVdaG8pVZXYsYJh6fJB5LDRL9bH1qb3Ey8BElK+hBL5BLKlODSRrZehX+WllaZfdjsxp29Bwo47smW9S3lEm4pF8JxZ2LLF5zyWsTE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gpyl8Kv2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gpyl8Kv2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C00D8C19425
	for <ddprobe@lists.linux.dev>; Sat, 16 May 2026 07:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778916633;
	bh=mZQerfz19t8BFwuNpuiglKef5vbuZDTq4fJSdRC7JHw=;
	h=To:Subject:From:Date:From;
	b=gpyl8Kv2jp9S3qC8+dWiA7v9dLrgKil+1eWjE3gBaHzbx5XcwT1rCu08PBFcRqZHs
	 h8+YgQvK7i2yARrNVeyHp7jaSJuJZAP05/DxzAm2E2dZxH4HYzrGMHIis3XMPlxNdt
	 UNdKklj6BBitFw43SL3jZveBr2ZW7QjxkK0a1DV43hXNVNe/OFCbj70uG7PRB110KS
	 2PcuZMBjh7B3xmYw9ryzNamyHDKcFm5tRfPzQG4NILj121T4Q8hm4OvGiTW5MQosq0
	 w9kEEIIuhCQ9mc7aTJNiXZ1IUBsxoc5UlreH7YbnRThWX6vscUjppLlyqrSVoyTdU6
	 VRosLSCDESwuA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAAF5CD4F21
	for <ddprobe@lists.linux.dev>; Sat, 16 May 2026 07:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177891663368.22703.11542444408976572928.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 847c8aa2a1c506080bfcd292c28cb2bf43c6ca57e724908a21d7863e51a75b2c
Date: Sat, 16 May 2026 07:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778916633
