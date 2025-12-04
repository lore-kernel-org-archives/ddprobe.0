Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 246062D94AF
	for <ddprobe@lists.linux.dev>; Thu,  4 Dec 2025 11:52:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764849174; cv=none; b=gLUJ20hCICBzk+ZEp+JIBbb+BE4KMsBI3kl/8sM8SpERqPBuBnev5AJtVMpArZgqydEL0D71+K28tPowtEZ0jRcz7oWjqvLuxmYndkhvlcDNPz3lgwBeTKhfhPRu+KVmESbtIiaKGDQGMTh2xUeBzqMgkn6rdXeijXlPeVjHdhE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764849174; c=relaxed/simple;
	bh=iwZFqQWMcRG96COS/8PDCSTj3H2PzF5/UmJCpgb77g8=;
	h=To:Subject:From:Message-Id:Date; b=rHronF0yc/LZL6yQEVPLelmvLSlU9nHE40iT5EQf3zCOp41usDkKyzsa5DycCUa2Erj0s3emz77U66EsspcqkU6U/ev0Kr0HinMdZ0mR7m1ZbuCehNUPDY90m2U+7KG1cjAYSEiC1cUpywcU1DoO6j2QULXgNgv9xBXxH6Hh2bE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=J5yfkOb7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="J5yfkOb7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AED7CC19423
	for <ddprobe@lists.linux.dev>; Thu,  4 Dec 2025 11:52:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764849173;
	bh=iwZFqQWMcRG96COS/8PDCSTj3H2PzF5/UmJCpgb77g8=;
	h=To:Subject:From:Date:From;
	b=J5yfkOb70dnathaHNagMxc6SIsjW1cqwHtPCpyNoLIqzzE4I2xWQuF6Z1Oz7mJyiJ
	 v/eCElnVW2Gc1DnzCJYSBveHXhWUQtuH216Ao2bvZAvtdw8X86NJaBu8hxmqc5QuhN
	 rF2brwRlPD34NLU/tA8XbToSqi7hc2dAv+kfUfwkrEj3zbOMa5AfB4NZo7bngLK1UJ
	 s7M+ghpFG1xeqn7V0DXLjkq/+tFh0x8orOOHb/xhTwfT1RhWEcyF3nuNZ/SmiEck8g
	 R5DRwxMmuoKvLQ/KHVqwulkKJWDS3x+1tIr32t0wv3TqOcvxQExkboYWQFe3wc/VAO
	 gZjF/60aGdM4A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97C54D1F9CF
	for <ddprobe@lists.linux.dev>; Thu,  4 Dec 2025 11:52:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176484917361.10638.15881866804332078632.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 01e546433a6235ab6b453cebb8960ef605cc27e76c1ca3f3838f4f2977ce8ba5
Date: Thu, 04 Dec 2025 11:52:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764849173
