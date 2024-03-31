Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0325F8BE7
	for <ddprobe@lists.linux.dev>; Sun, 31 Mar 2024 08:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711873097; cv=none; b=u/u9LawLiGhljPA8ug3/eGKPmm/F+vhxjSb5bi8p7XjfhaOYXko+PpDRg3HsQ2CNZO8aZE6pIw9ACcEpUL6YYgvN1UGr1LZ9mYbE4y07w0ZK6rTGn9DfgMhLnVzx7rSOcUEvM/tmbkaULSeqOmVy22rpRnK6QeRdAv8R3w9sEw0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711873097; c=relaxed/simple;
	bh=sSc1/1JJOyJ+ScFjMkhwdVrC+YOBclFop1HMH9YRw1I=;
	h=To:Subject:From:Message-Id:Date; b=hWIWqUhyWwEvCb9MdcNpiss4lRtP9v7M9U6Tt9valFiwrUCfmlCkQ6zIVTSUFPCHrBBup7kV4mVtSRtCJda6dYRf9HeVnffrvtJbYr4z9aRTjw4KREIreHml9r6Nlkom16ukQm3BQDzDwJJm8zM7T9bHXEWuOoiAj/GB4Si+v38=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=m4SdO8RL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="m4SdO8RL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 78F68C433C7
	for <ddprobe@lists.linux.dev>; Sun, 31 Mar 2024 08:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1711873096;
	bh=sSc1/1JJOyJ+ScFjMkhwdVrC+YOBclFop1HMH9YRw1I=;
	h=To:Subject:From:Date:From;
	b=m4SdO8RLL9yuv85d2B3t3m5ROxVAymE4s75K2tudkbtcAm21LkEbQSFiTOCUj5AmX
	 EjV0rptt8rQyr4TGraQdDqmao27lsSFHdtYICpSu/n2vGf9bloAgh1sz7z4lxub2Pp
	 bkLAbdnGPaj5u8k1CLbwq1WrXBe7I6HXRuCKOWL2UfIVVFF5Vn4M9ikeh49A6wOETS
	 8xoP/2G+//Jjo89P74QLJ0zRwxC3CVACLnmhTC7ckkM3fmyRIeULsL7tzmClnXLVd7
	 BkPpI1SY5cHSS9MizRiH0jOX9NqSfIDOXSwbiIbXdq2L6/kWBrmxiWrK2MrOVaAtox
	 tiOvprRntivRg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 68159CD1284
	for <ddprobe@lists.linux.dev>; Sun, 31 Mar 2024 08:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171187309639.22756.1293281702934648947.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f7798d97d523bf40e610563bd927a83a0fc72901ae70c0c15d98e17f82f49a48
Date: Sun, 31 Mar 2024 08:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1711873096
