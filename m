Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2392738B
	for <ddprobe@lists.linux.dev>; Sat, 16 Aug 2025 02:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755312594; cv=none; b=ixeeTuanbA/6PrgdHglSQmkPej5nI1gN8v/VxtcuteHMmbKe46bu1w8fiVCbapd7DALyHxk0g10qXor78onmcYjx/IhX8rh/JjZCywXr39KqdglTGG/CBjvVBGVHyphs+n+/H8vVIU7HVcx13iXwdKHVlTbLc3Of2DUBlUblRXI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755312594; c=relaxed/simple;
	bh=GMXrdbYK4ck7fdnQPmfdHjcC5GxN/Fx6lJRsG0FXnGU=;
	h=To:Subject:From:Message-Id:Date; b=DBHNiIt25vxSRvSms5hgiBmhlnv2mTS3/8K3/TqH27Fo6w1PZCqoZ6S5m6gdup15FiMcCCcAvXr8Us+R23oBnWIzMUn8I67RuXbzohuIgfYvnOga3lagh6NAWyiTcE9UgMh9CnENAmb8WvhCY5uo/Hkfs569b9Y6yPQ9C7+nGEo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hk9rE7h7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hk9rE7h7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6193C4CEEB
	for <ddprobe@lists.linux.dev>; Sat, 16 Aug 2025 02:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755312593;
	bh=GMXrdbYK4ck7fdnQPmfdHjcC5GxN/Fx6lJRsG0FXnGU=;
	h=To:Subject:From:Date:From;
	b=hk9rE7h7GswXUWjzO9RdtWIb8VcA7EYm6MvoWvb1XLmU2AO8w6Flqx/GxNW5we0PO
	 B7e18kQxkPxcD5gIB6TytWdAh22zpfzHDvuLhkTfer7qUWwO/NYcKQa8m1nnq7MH2K
	 jSPqzfpRZQe/bD744DgSTHUaGreKBW3e8gG/2fZRDidoQYyVL8DEBLSsvnfGMSFZaS
	 pwZq20q9GD4delASAC2N+UOhOc9zzWgN8xHw1aw1e96GDmZ1ofPUEtZRatVi/MPkf9
	 X9hBSVbxQUXVntNxU4bUOqTiTjsqg3BEKYpEJFk09JoCFQN9jh/9tPHbB479pl0fDh
	 vjiFEjLYeGQkQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92C88CA0EE4
	for <ddprobe@lists.linux.dev>; Sat, 16 Aug 2025 02:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175531259358.14276.15426195000117404532.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 45186db62d8b5e262225d49d4b521f738ec0689c725fa8580be61a0939e88ae8
Date: Sat, 16 Aug 2025 02:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755312593
