Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 11C2930EF68
	for <ddprobe@lists.linux.dev>; Tue, 24 Mar 2026 23:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774395894; cv=none; b=ArbD0cC2DzGbBInAB1IEvp0+3CsEdSAgyMqydYFT2iZzUNOiDRBW6HIiR8XTM9or8k6n7CZeoFi3oFlnyNsLVJjA+sh61rjTHaeQ8XwwUXRHA6e/InTGV7+Gvas91vbpymtKG8/CT+viGOUlFfjpKoIyTmoOAfbtaEbZ8i2gUqI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774395894; c=relaxed/simple;
	bh=j395TsJb7aqVrjJ5sWfJ018HMxloDG96ewDXFMWOwnU=;
	h=To:Subject:From:Message-Id:Date; b=mXCiwb4/FtD4ZriI/6DWGS562kQoXdc2OFqLOMgGw1fOxIlN+eed8GnzeiswAw7a59hkpiR7BfPdr5q0O1dr3rLf7icAANTUqV7NYtW/pFWHrENpf19PCnNkKUOaRVFdB5kWa5G5/j4Kp8Dj22CfMESwet1Maf4SAp2v3sHizlw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZtUEr2/B; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZtUEr2/B"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5F2FC19424
	for <ddprobe@lists.linux.dev>; Tue, 24 Mar 2026 23:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774395893;
	bh=j395TsJb7aqVrjJ5sWfJ018HMxloDG96ewDXFMWOwnU=;
	h=To:Subject:From:Date:From;
	b=ZtUEr2/BhfKZc5WrsnboTrosl6Bw5/3Qbu3yIUDaDKKBByIR+zCMcyg+jXFUZiQ/Z
	 +6RaydI2JtTfR+ylSfbEbCwnc8HY9qw2eR/OOJWsY6hZNJOGuTMtg4wmyWbY/3466r
	 o8ocmzAGEYUfwPQB2yMysMS1zfoMu2vA2Bh++32CiHRfPVd/BhcHQC1civ/n7EQZxR
	 2zxy5GWpXXhipm5zMe8YjFi44q0TQs+AaTb8q2XSzUV0cL/OSDw5+J4D8QBQR1R7UP
	 VkG7J3Kb2drY1/AUAlGn9u5+BoM5AcPBxtErVZtvbcNHv3JWzjzyfnxo0kc0EtTnDt
	 jbtaBXtHl7mpA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96721F54AD6
	for <ddprobe@lists.linux.dev>; Tue, 24 Mar 2026 23:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177439589358.23896.1000001753706353450.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7aeb753fc8e79ddcd8b701acc800be4c5b624b1c2cc391060a24cc0fbda29a2c
Date: Tue, 24 Mar 2026 23:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774395893
