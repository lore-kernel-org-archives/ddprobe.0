Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DD0EB1ACEDE
	for <ddprobe@lists.linux.dev>; Tue, 12 May 2026 16:10:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778602233; cv=none; b=O7Kg4+sP8vTav9tIPIbFP2wDwqgUe0DJmgYa8E4j1l9P3CEdw6DjhrtWLqEG0b7O6jniUC1VVb2kV/T2fLhis+EcK4V2cVQdwBEZFPynq9tdlIP9VT8lX7xAnbWPy+yG6Je3GnlD94cgV0omQqR51ETaVS8BB2v0Gm/RqAeT4JE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778602233; c=relaxed/simple;
	bh=JWgiMbXmzvT3/NMtTwiUTb7yM+m5Mdw/ktwzIwkd9Zo=;
	h=To:Subject:From:Message-Id:Date; b=UzCdxAY39I5YkcrF7ykbdOhugglxzaZFKobPXHuZqZE0XhFGTv+yqglc0MwO6yargvjqaODhb6j/eccuXADaVpB/QzhuF7MrDPIu14nq/S9d+llTfR5fZs4VJRgs3V4hRFlE6E5FuZgJTlz3/L4MO+GgG4FdCBMahTpX7wad7a4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZRwfJANa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZRwfJANa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8393C2BCB0
	for <ddprobe@lists.linux.dev>; Tue, 12 May 2026 16:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778602233;
	bh=JWgiMbXmzvT3/NMtTwiUTb7yM+m5Mdw/ktwzIwkd9Zo=;
	h=To:Subject:From:Date:From;
	b=ZRwfJANaD/Je8yBOBbu7CXuYkeCo/E3Z/KRZGjCocrrAInD1mPg22kLnAJHbNPHMq
	 32adIet3RTJ7cLGZ3kaFEZUcWFjD/WzthiEsmnsky+BUfEEiJFRt671639e1xLpRp+
	 5iffvKkhg3lOf/5uAEdfuUQ9+5tQRI5gKCffSEZc4D9eO+MIo5r4GwcWQ74xIBrbnP
	 v3eDZg5kP8dKNl1/rDUL8rvkusEznMwypxbI100eHCfxHx/KL/9nJJxtv2a7AvQgVb
	 k0uqoWquR3vB5c16xInHZwB5KQbtGjAcDl2/97CSn7uvwenSo6Vf8P9m0kulou7IVb
	 RnYl/1FBnIbDg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA0F1CD343F
	for <ddprobe@lists.linux.dev>; Tue, 12 May 2026 16:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177860223368.9230.13984530123297747027.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e2fa5fbf6d8cfb72a4e573f52129145dc76b7bb8ed6566699cb2ca6e85fe09c1
Date: Tue, 12 May 2026 16:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778602233
