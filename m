Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3821517597
	for <ddprobe@lists.linux.dev>; Sun, 12 Oct 2025 07:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760254194; cv=none; b=DVZP5P0jNBEmFmOmYvRO8SVaMD4kNzRT1os0t4sNShtSFbuOaZ95ylLaa6DJkRpAm2U5457hLt1ODsOhMBX68HELmnZirKAMhlZttw8ay7xW3FHC7NKDpEXErV/EzdtV44YIMZHOKxLVnjNL11QxKvcDOF4zm9qVMf3Jvo2lJzk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760254194; c=relaxed/simple;
	bh=uKI+HkJMgJROS7W1RInwxbktPJ3ZK2KSFofYGk7yWhQ=;
	h=To:Subject:From:Message-Id:Date; b=b8raT72CXPaoiPAa7t2u5NewQE3I3Lv595IRZn8R5Mmu6lYIx9Fqpl0V6yqT9i3GFUzqhXKVwrvKD6Jq/DyvLghEd1cvsdP3e3nJHpquyA/4AZTk47c+j3P6B+R9Dw6M2otsCa63z3N2DP0F/MHNdhexcfLEzszdTdKdCSO/JtA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hRfEZsCk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hRfEZsCk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A310CC4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 12 Oct 2025 07:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760254193;
	bh=uKI+HkJMgJROS7W1RInwxbktPJ3ZK2KSFofYGk7yWhQ=;
	h=To:Subject:From:Date:From;
	b=hRfEZsCkTemNP2hVZJXojF/HLo3LFJSQNG8FLVXSzdluK8pNnqh2u33AbW68sECpv
	 sLo39Zk/ZiuCSa24bRbIuXaiWkDPEIWq9PbZCItlmLQDiwxt5D3R/jDHr0zEL87Fk6
	 vt4e3BupTlikr9JWBhzYL0PVObG6hY/ly1hTfm/naegiARcpvVYeoF28dRS3iCeByU
	 46TBW5yy5OmHydKb9i8c4qrgzL4iNfN7UF6fCcqlTv/xZRd0/9xaUnxWe4+lKsVtw2
	 CHNOFLM9GXBC24kncu+FUfLuJDogIIMxCWWifcOkxqX1LXlvQhxBW8LWXPH0pMUJTX
	 uhIV2bvhcPBMg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92126CCD187
	for <ddprobe@lists.linux.dev>; Sun, 12 Oct 2025 07:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176025419357.8085.4851474389787485666.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8a23b1648abb6ec6e8d53c6a2a7081db5d8a78d3a5a5237ac8c50fd369b0dcdd
Date: Sun, 12 Oct 2025 07:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760254193
