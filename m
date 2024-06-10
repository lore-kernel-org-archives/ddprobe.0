Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BE787FBA1
	for <ddprobe@lists.linux.dev>; Mon, 10 Jun 2024 12:47:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718023643; cv=none; b=Nk2AEf0IGyg1dOPGSmjXcqBuZQ/PIX9ZXY3pgQHZjGd8a97oMcUwXpC6Tq410GwEi7neUMduNHxeAQHPMTK8KAjRfZxjteqoRdixUcRt+ljd2iDpvkGkT8GJoLmgjILDDoXO6P/9FY//7BAlqyz7ylYnPMS0X2FRJBe/stWA8yU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718023643; c=relaxed/simple;
	bh=+EVh4jvaqU5oQ91uGpFLMOePiFbNdmL1Us/hlK5HLrc=;
	h=To:Subject:From:Message-Id:Date; b=GnJ5dEC/Uc+tUuqnAHRWCdPZemyvYKl37esZBsi0080n2d8FD0IEdWxS6Q/RrcxtoGclRJTtKCCdQfZxDdZOabjimIleI8HOvFlXK8zjZEQQql3DAh98Xu/whhNzjy+tPOAk3Q3zGI656+6JlKB/jPhcJEowBJab2n2TinHbBSs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NugFCE6C; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NugFCE6C"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3AAAC2BBFC
	for <ddprobe@lists.linux.dev>; Mon, 10 Jun 2024 12:47:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718023642;
	bh=+EVh4jvaqU5oQ91uGpFLMOePiFbNdmL1Us/hlK5HLrc=;
	h=To:Subject:From:Date:From;
	b=NugFCE6CdvivL2n7Gs8RQqSm7W2kE7h7aah3RE+dJOvN/PsCHisYYRLETTp24d6XJ
	 ZKNeyONLNmBNFIXb8asRd2+tgpkLa9EldAZJpom6RJ7MNzdJqo6Rmet98tkX8DjXsV
	 CrFAsYcJ65rr7WFsFB7t9qu3xeBpfA5/qCTcKC4Y05ZPrcqfp+OGAHgfEBSNP5k2C0
	 Kx50fPgOHae0p35owyzr+CZIgjfgGZmx1X3Zd6poezLrCtBMx2BfpZexcW+sCN1JgS
	 wsu+Acfa+4PjcgB8eCTr4hCGm00+uiiGNlZ99tdw1eOYtO9tDQxMp7J39S5E3Xmj8+
	 n2SQglLz8w10w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C0397C27C5E
	for <ddprobe@lists.linux.dev>; Mon, 10 Jun 2024 12:47:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171802364277.8969.7575904898290677841.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7f8da401484731628dd0100f70bc15935db3e097ba04e94199290c3ae018ab6b
Date: Mon, 10 Jun 2024 12:47:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718023642
