Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A02E79F3
	for <ddprobe@lists.linux.dev>; Thu, 29 Aug 2024 00:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724892954; cv=none; b=RiNcFJsYwb/PZPS6QKMUV0FlyF8R8vH+6B7rC0eWiWZ62Zq82xVzqfpTak579Zb0+yynUPafND7iTbelRTKbFOqWBUECfgfXVUV4iJnaUjbG3P0oTZFZebhE2tPI1S30FjypejhmiQM/GsQGfTtRsiS7kRzM60HDAU2NAwUurCI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724892954; c=relaxed/simple;
	bh=Dg4Aqgbnuii81lqQcC3AawDMvo5CUoqS955WVblgKtE=;
	h=To:Subject:From:Message-Id:Date; b=qmSmH1VT7mbHPR8AIAL165VJI0R8lmPxxqbKtLf/sO51Kh0u1LI/cbLREtlvDE9fzP6Mzzwqh3HsmDiczr8Y+EHTBFUzqtdeAILhFmRsDEoNk3V49wb5xbWk73220nBFvE4CqfyckV7teBsaaT5OkThJZw7XQL7zvKCHbgIlA90=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oydZK5dL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oydZK5dL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5B04C4CEC0
	for <ddprobe@lists.linux.dev>; Thu, 29 Aug 2024 00:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724892953;
	bh=Dg4Aqgbnuii81lqQcC3AawDMvo5CUoqS955WVblgKtE=;
	h=To:Subject:From:Date:From;
	b=oydZK5dLJSwvm/dJG+kR1pcbPgqLFDitbxEDuoTqI65DJmNgq5ISmeviuLz/s5l93
	 uTbi1E3XwHLLGQwDCfjfyav9Nkjmey2gG//+05Mbx0sv1j0G80a65AKMLrExi/3x1s
	 0c7cbrZCpMAzdZszFRQzmCuLStTRQGeAMtdWDfroYkr2IMftJ0pYeScYl4rGJudOCG
	 J2DiVi9VBsI0+RYHPGZ3V+IlS2Pe2AMArkdrWpoubHE5zwM3GSI2KDKN5ZsS+fyg99
	 +6poMniqnL5783olD/n0ji2KeErwjpyRvgZ4S+UyVLQOIWmUNqmE2ZIavN3PebjhDA
	 aXbvOdVQ5+AdQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94C92C71156
	for <ddprobe@lists.linux.dev>; Thu, 29 Aug 2024 00:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172489295358.21587.12464484845653836262.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8c2542d82779519be5f876c1d65c39a6549ebdd66f7db86a64c967c8a3215494
Date: Thu, 29 Aug 2024 00:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724892953
