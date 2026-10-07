Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 65EA044A40C
	for <ddprobe@lists.linux.dev>; Wed,  7 Oct 2026 09:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791363634; cv=none; b=OERZ5F5MKKw3Foz1OqnGpaSbitQz54jATtyqy1bkNkPtlYlEtqhXjiBiqlVHp0mEx/WrLvY5rvIZXOVkgc74MWqSm9DjlBxRIGkkRXEiq66nd7Vb/qMFSXcQcV+PhJwGoR2tcM5HNu+O+pWIycombDZh/7UBv6AWIqtGo1zDdaY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791363634; c=relaxed/simple;
	bh=ES8yBtkGC8IrtSIrSHnMprmOT0Ax1VYFNa/VPQJSUFY=;
	h=To:Subject:From:Message-Id:Date; b=J7UW3gYn8HjuhZsJB+1lMvQ7bo1dn6OgQt+3J9KGiM0+ZzUQVork4lXEBhPJTgrQXkEGmRXDbvnxFGGKZQKLcSlYs4RCrmwpu4Rheubi2mXyeMNbmclC+rMQXQf6A711IduD3/eE8XC8FBc8u/CSM3pxTOYritavPJ6NRAXeLvs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UdbsLj8w; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UdbsLj8w"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DD655C2BCC7
	for <ddprobe@lists.linux.dev>; Wed,  7 Oct 2026 09:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791363633;
	bh=ES8yBtkGC8IrtSIrSHnMprmOT0Ax1VYFNa/VPQJSUFY=;
	h=To:Subject:From:Date:From;
	b=UdbsLj8wSRNauPI4CKo3yE3mX73dklcwfgbcXYDcMtAImSINi50UIAHONKTvf+ntu
	 4ywzrrE+kQdwcG+p7xHaxzIo3UpAdtpcR6QlRbnse20qhN3x08KGFj2RxvZO6Z77RG
	 8w/vcF4d901JQUqo1ssNabhQzffbMAlG/KWjlaggejLiWkebpLab2US0wSQRV5VpYs
	 obv/UvnXVxwXrs6PfkxSTJqAjuf1vpLVd4XjtQTm4ZYQ2vFhfvi3J8PS5l5qfgv8oQ
	 UI9Hd7ULxFdSI1SpbmZZrm3kkWWVZihucTKizVRl6YL5NIIDZxbEXHAStoSwQKJWT+
	 R+BrHPzKWg+LQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B7842CA5FFF
	for <ddprobe@lists.linux.dev>; Wed,  7 Oct 2026 09:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179136363374.32693.9946815783546588489.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 239499e80bea85987a9e494ae0ea71a1bf29229add8df128da829c0419666ff1
Date: Wed, 07 Oct 2026 09:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791363633
