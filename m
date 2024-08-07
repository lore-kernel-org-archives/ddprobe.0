Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D71E1C3D
	for <ddprobe@lists.linux.dev>; Wed,  7 Aug 2024 04:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723006554; cv=none; b=Ed+qVKW17PvHgokxH/LPhmK96Xm6L56KuMooMQckqWCJI4/8m9RhxKBTv/SS+kev1NBHy4vcCkTKZssXv5zeURo8J2nXIsyQZfNLLJ+FKHFUfT0I4RzgemEDeARWjF5Moq1k2Y4p62yI+A0JKbST/0GFqd5auReODiZJU3k1y3w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723006554; c=relaxed/simple;
	bh=Ib3ymkS2fEVbfa22gWj72WXGR1Qjc/lNiFWzPPricFQ=;
	h=To:Subject:From:Message-Id:Date; b=kTOFsdw98fKfX9T0U0Gs4t9Pz4nBfYa6GQw3N8rwGJcOVSQE7L/UKnuDTbPmby8L5JiEHULmrIpYTEVdS0U3AmQqg+ZTSjfdlC3iJCFG88TpmSr15A3nR2dn/HCUUs7YDbha5s3NjUt3dXJp8eAApa0IGKPvccfBiZJOVmZzCk0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZCnunUuH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZCnunUuH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A45ABC32782
	for <ddprobe@lists.linux.dev>; Wed,  7 Aug 2024 04:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723006553;
	bh=Ib3ymkS2fEVbfa22gWj72WXGR1Qjc/lNiFWzPPricFQ=;
	h=To:Subject:From:Date:From;
	b=ZCnunUuHL98ws8OD1bn5l1d+8ri1PBYNdseI/IUWY1vm2raz1jfbGCNG1uJOo73MD
	 cTtK2F8nlcsc9ihODkaewOPHrofKCDbap/QtHYPDLrZ98QmrMISX3Lnc0va8LCxHfP
	 E5iQRagB1HxvXREgrsx2oalsmlVRA8BxJRC+St3uW9SjRnSKV3Hz50G9IxTX1cs4Ub
	 eYzb9/BaaUUaCDia/hUm1o/hAquYRdUGB/DTcaqWH2TyS63psD8r8TgBn++QMQHFPY
	 pchTIi6c5Qofc+6UZPnSVILFsJSNXiwlEwDigbQGK2ZnTPB17d5Ztf3ZCpauq+a/uS
	 mPzltZvrOc4dw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FCF1C3DA7F
	for <ddprobe@lists.linux.dev>; Wed,  7 Aug 2024 04:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172300655358.29627.12646910026052647943.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e13af5b95458940c70e7f1fb3734fd27bb9ff7e9693d1a5bb1582804bd4eb599
Date: Wed, 07 Aug 2024 04:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1723006553
