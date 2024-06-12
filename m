Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 599974315D
	for <ddprobe@lists.linux.dev>; Wed, 12 Jun 2024 21:08:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718226503; cv=none; b=ZtWdr09coAbEqUyAbej7tLlSHzZQxTKXmOxvcshuhrAFjyzEcEMEOSjBZANVA167lDLgDfVXaunscCaAeUH9d60YFJ+tjezSagXXhimj/P5T2ORdskyzIcaUGNiWeBJlz5YNOAFbIDd8EESHwCWTvl23ghRQb6T1bKQ1tdGJRRI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718226503; c=relaxed/simple;
	bh=1nT9DJ+BtAuBSsLz293fCo27emNKuiF5zClsDjtUwmU=;
	h=To:Subject:From:Message-Id:Date; b=D62jfvb5WMrPVxyHcLgapsw/bpgmoKG+viWYSVtY2naGPdcvfioSXtoyUTE0co3YtWI2zX3o6MvluUMkEFk3+jWLAOCawxCuRUGSZ/8ps6wVvI1WZbwoEaNqZbgzxaqAByzzw0d0zNdU1+8dTYkRR1zy61TolBFEabZ5DpzKyQQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KvKmk0uN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KvKmk0uN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EBF22C116B1
	for <ddprobe@lists.linux.dev>; Wed, 12 Jun 2024 21:08:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718226503;
	bh=1nT9DJ+BtAuBSsLz293fCo27emNKuiF5zClsDjtUwmU=;
	h=To:Subject:From:Date:From;
	b=KvKmk0uNf0d7RhdqIFyAqvklwyZO7Uc4JVlLhZCGM5FiKMMX0m+nSWJ3usv4iVPTi
	 2iRHAeOVOORlyszSGyVAvAQxFFtu+9CSyoaZd9gimc6ghf55tve7bi/FePquhYuU9i
	 QYvJpueieu+PKkYImHB691xFXbSedWRFBuvg7RSyE9UXGs7631ywGylztcMMQzmvfN
	 DUSbrxjmGoGO2vgSB9i4SFKM/jd0Ewzvxe/lfxHk1bvuMkrvfxyA7cos11Vmfjr2FC
	 cC3LAh9d+rsaN1HOz0h50laz/nk2q/Asa/G8Viz493CZXNEsAw7Dr3dPMeRaJK1ZTd
	 rY/YmnTd7umbw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D3713C27C53
	for <ddprobe@lists.linux.dev>; Wed, 12 Jun 2024 21:08:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171822650282.11006.13392106325163173336.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c1fecd7989fef5bd0870dc2c473399c466cf614d239cf327999f0ecbaf7d6b5f
Date: Wed, 12 Jun 2024 21:08:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718226502
