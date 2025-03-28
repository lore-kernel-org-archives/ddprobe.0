Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3AF07136351
	for <ddprobe@lists.linux.dev>; Fri, 28 Mar 2025 13:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743167994; cv=none; b=myDxmx0Hfv5XZfybI0fkvc6nqUNRHjhtct03FvQ+Z/GlJbIhztjAfnUoqvdVtAgTfr85YCZvynIPr+ZyNCvOZbeCOpor4K4aSCPai17+/TZNauDoJkalpt/Jeqy3PqenH8wmjTbRuw6fzJ+v3Whzryl49ZZqt394ZI8gTGtMFZM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743167994; c=relaxed/simple;
	bh=JXSQ6+bM8QrzD5IJx+PhgwrfqvDIiyp4ysWamxGgb94=;
	h=To:Subject:From:Message-Id:Date; b=lntN28qP8Dbqq9p8a4mTVnsiUMr1tUIUt0p4iBdsvbUEJYELtlGKzZcJZWePeItGsBIzLwdcd4eAdS/VQLoiuNsFOCMS9ZVS0aWgDiS92KpWjbVen0fvABukWMKMIkKvr2ck/l+BTM1VZKtZ24w2gs/gNWZMMMNZ49FpqaEztig=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fKm39p1Z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fKm39p1Z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADFE6C4CEE4
	for <ddprobe@lists.linux.dev>; Fri, 28 Mar 2025 13:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743167993;
	bh=JXSQ6+bM8QrzD5IJx+PhgwrfqvDIiyp4ysWamxGgb94=;
	h=To:Subject:From:Date:From;
	b=fKm39p1Z+ycNJ+/+7wMLQD1s5dwSsBpK9tnDlxJx330SiZx0UmBhrV2pDlni/zG70
	 oVXJXQoBLc/FhhtVHRM0svalDz/ocga6dSvVTygEhCZY86YnQTZ0s4wYR2pvK/LZNV
	 G3D32Ln915uY5GQb53x3UxTU4+RDvyoAqgTiZGwEpLnHLksR01rItK7X2Z0P2pRRle
	 owCpaVi+vf9AEJ1YFcq3pYoPZFvIQgZ05SmYrMABEK00CLOzX95ng54velVDqh5wjb
	 Rgwil9QICqidqXx3E3TZCg07d7mG53S9dXrm2AnB97dVmcSAHOfLs2CCVuZzj0QoIF
	 2RzAGQ3s5Spxg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9AA6CC28B20
	for <ddprobe@lists.linux.dev>; Fri, 28 Mar 2025 13:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174316799360.30213.3695541031154340919.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fa05e311d10ccaf9299aeb9e0bc648935a4105b8aabc3c9d8fb9c290df7fbb88
Date: Fri, 28 Mar 2025 13:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743167993
