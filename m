Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 367EDBE49
	for <ddprobe@lists.linux.dev>; Sun, 12 Oct 2025 21:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760305194; cv=none; b=eZpwgUnFF64dwObbQjWs2TSOy8kx1aOYQ1OvHV4P6zhB2EkCjeyB5FtRLOUs4l/PSLqlBoko3S3mAnleh6Y4RFLV2FIpdvhgro2JvSWgUHpSBoGlrTkTkxLGUb6AAF25wf0Lz9nUeRweEN/1BnR+OycrBhJiXT5KfoBixRQ5A1E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760305194; c=relaxed/simple;
	bh=TMnP0F45sZz45rGgBdLo2CDfA++xCBvJx0whv9FrFTs=;
	h=To:Subject:From:Message-Id:Date; b=Z21RZqszV4enVz80LRP6Y2tzy3HuFZRrYd4MUbI+Kc1GBU15cZEMsql6KqWBDiaCrmQ8TSr6KJyCrTGWo4QdRQVplon5OaxnbNwEwUNlPmU1+xDCd9jnxEw09CukeyVOVPB+K06MxtysBucD46acDFnlDZsbEZ6rdG4Dq2S7MkI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YrBucWrd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YrBucWrd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC091C4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 12 Oct 2025 21:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760305193;
	bh=TMnP0F45sZz45rGgBdLo2CDfA++xCBvJx0whv9FrFTs=;
	h=To:Subject:From:Date:From;
	b=YrBucWrdXpXnV7+OMTiPr91fQ1f2LVqX5JWVogJOPwwD0O3bkMjpsGx99BlB+7PPy
	 ChtPDcE73+DTVHyJM2FC0dv1M+HgrFKhQtsP7F9gaWiYwL7DOofcmEVi5xLllYgqtH
	 7Mn9fXxUhgjJley/MKSYkCtG5vjiXIH/C1RMRmHZrleAM5zcamM2VNe6GwhERScV4O
	 nnNCUc/W9048+pz1R690+xxQg7vmtC8rImAYwfWzcRQwjMQNcKGGvANdYFN32976yL
	 ZXwrvUH2GANLxkVUcefxX4HHdSsv2DqhDEEaRG7tAU4qT3K/nBSs/qyZmRRKNjohVF
	 myvp8keJm92ZA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98215CCD184
	for <ddprobe@lists.linux.dev>; Sun, 12 Oct 2025 21:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176030519358.2109.1221935591878419302.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 70a09f2a58b05116a5b163348b720357ad947457934fbb8e504eeb21ac7ab9f8
Date: Sun, 12 Oct 2025 21:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760305193
