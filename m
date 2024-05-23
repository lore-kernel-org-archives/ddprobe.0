Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E1B517C2
	for <ddprobe@lists.linux.dev>; Thu, 23 May 2024 00:53:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716425603; cv=none; b=D0KRl8thdkEPtxQ1z7GmeSeextI9aap4bXSMm+cexT7LoTy3pxdwBOMVdG71Gakdb5UqW7m4m2ZdvPOdV7ouwE1X5IK2mDkHJx9AjVWB1nsbHeAwYwGmxhrl9sZAm269ofWapqW20Uv3zRjmf6QrJiSYVJyPi72XkmweHMOb7LU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716425603; c=relaxed/simple;
	bh=OyJF3nDD7XXd2Nc4Ouhy1EMuX9HH50OhZH3JCgBL6Sw=;
	h=To:Subject:From:Message-Id:Date; b=DghPqYLW8G7sAvVngo9ogI34qyUWu1pZNgmvlD+7pi7F0paT8Aj13xkq/Ayh4fuBD84J/4S8cwaw0OHqHspdrKRSI62FEST+Vdrl/fo+ezJk/NoPL5WhCYvW49aIb/qWB77UaZgEWbVJvv/uosdzE99lGFTQYKetz/+aloxpDTw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=stYWFeIk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="stYWFeIk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6395C2BBFC
	for <ddprobe@lists.linux.dev>; Thu, 23 May 2024 00:53:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716425602;
	bh=OyJF3nDD7XXd2Nc4Ouhy1EMuX9HH50OhZH3JCgBL6Sw=;
	h=To:Subject:From:Date:From;
	b=stYWFeIkzYGyCe4xctw40ffAJ2nNi7aBdfvsUJ5Hj1bRxlGGeUN1CaU9k55YxeOGu
	 J9euWMFBXYmR1o9w5iZS27iSJkzydfGzjFZLg2k7MZwTMpbDuNf1Ur9cIZjF2j2xx7
	 YuAIissPGjLMyxBDVoLsGLIKmsAQ4e7YGTUsyRm+ySjEZVeS3n1NhPO9RhAxgIHJRG
	 G5d7y36j5D1CfkPLpaUClKAYPDXAprFTYtV4g0OUW/5XFAUq7kv1O/pNCE8p+VTGyP
	 qOZs67Cvv/MOSW3zKMO9v2CtyklVyeFNscfnjWKpbxYUrU617tHa97n0gSFw9wSfIM
	 uf/aCVPDJaBgg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C232AC25B78
	for <ddprobe@lists.linux.dev>; Thu, 23 May 2024 00:53:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171642560278.29177.14831419738729641599.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 98c7636d16f0ee189d1c372f095cdae11df718b70939bbdeba26e7a54f017628
Date: Thu, 23 May 2024 00:53:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716425602
