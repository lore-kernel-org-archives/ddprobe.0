Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 226622BD033
	for <ddprobe@lists.linux.dev>; Thu, 31 Jul 2025 08:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753952394; cv=none; b=sBzpvS4JCMn3WWXpe+BQT/9Vc5nAnDpscA2ZoE7Qn9MOxenPNc3zKsWOK9P8nu79uPnkMp9BiOqaLR9BcL/Bg0OQkht8j+ph3ZIxlbGgTcfZSI/eEDdcp0bMtOs55B3csoZAVjbG32kGJIt4GRzN4Bxpn59W49l5XK1pP+g/B3A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753952394; c=relaxed/simple;
	bh=s304aZ7CmS3OuIID++ldi3G27p2amjOfn/ykQQ4Erec=;
	h=To:Subject:From:Message-Id:Date; b=Lagk9FizqGPn5GAVIvDjFb8nn0CG5krxHETWGOVa8Dgr3DjzMwJpby6TvMMJpRARqqMTTaytMsO8ZfF4XwOH6W+676DLecHCyEH5ExMFdW57k5CAEQ9rISCJAPESMDJIveKNvvWxhh6NIPx5yfySI9GVui7/8U4s8JHQWlEyJwU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iE4Fsqm/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iE4Fsqm/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DDEAC4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 31 Jul 2025 08:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753952393;
	bh=s304aZ7CmS3OuIID++ldi3G27p2amjOfn/ykQQ4Erec=;
	h=To:Subject:From:Date:From;
	b=iE4Fsqm/GToXxryQCg27RYaLCvbzr7qjROYVOuARYenghcUjy4zwjHooC+8C+04lm
	 DZobxNT9Xg5aZSSL5v2a+LALsf2epuTRwF3TrMrDDwbzdzU9d5OcB/OBBAvhZ9LugG
	 KH4F+b24fOO7xhBgwpoHE+PhrgSFvfnbxHpdOYkDTOciE39zaBiiCuPsSxfVjpdxXH
	 aWiAcdbL1CHo7Sc14Z68LD5kw4W7FI0Ozy6vQUWiN7NHXyUw9x+wu6cTIZMkz248F0
	 LohUCInhPsfv+6mkHAhIJklgg9OtBGESwSkAVk+WdKMJjAKeumn0dVCV51BDFfiTtp
	 8+6Q3+fjfb26A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91478C83F17
	for <ddprobe@lists.linux.dev>; Thu, 31 Jul 2025 08:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175395239357.1484.6206566800771603759.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ad18356adccde73d6f5daf411ab2ecd45c49066a11aee893ea8fc8873b50bc03
Date: Thu, 31 Jul 2025 08:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753952393
