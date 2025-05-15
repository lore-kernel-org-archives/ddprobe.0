Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38A03279358
	for <ddprobe@lists.linux.dev>; Thu, 15 May 2025 01:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747273194; cv=none; b=uDoxOQfJc8zoeUSUhhgb1T2ZQME8jFt8ODbz6btCJUuV7iFNA99sR/qmrv+mWJOxS6uVPteL5PymDHzR7HgZNL5zysW0Oc9BYZ2cF9K+1pRsM+4R5FAqoFD55a7AkWZ1XbaNvNCbVbsQB6sW4fUj66V0DZvlTiJFO3laMafigAw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747273194; c=relaxed/simple;
	bh=Ed2IvAHZtasFC3SuTFNL44RDQcR1s8tGe1MfRL9lBZ8=;
	h=To:Subject:From:Message-Id:Date; b=N59l+nBmm/bCWB/blubnKxhLVl7J/i/IJ5/CmJrbjIBiQAvPeLnejrcsPMh3OX2SkpGvxNGLRDOxjP30lw3trig9zn73DZJe4hiyVrBPQV7YKKPcJ66Tj39uFjawoNL38VEPm0GfWchDFeBFK8y+ozni5QpLkLiTIPMXUsQhLso=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WbMAL1wK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WbMAL1wK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A239DC4CEE3
	for <ddprobe@lists.linux.dev>; Thu, 15 May 2025 01:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747273193;
	bh=Ed2IvAHZtasFC3SuTFNL44RDQcR1s8tGe1MfRL9lBZ8=;
	h=To:Subject:From:Date:From;
	b=WbMAL1wKHfvZt5xD9AiypRPkNjyjedUoLZ8xdKw2Nulb40lbAnRSEJvOfW9yKBSyF
	 2d5zPj/07KMIKj3u7NHN7FtxFsSJh9OFtDoCA2tQ2BXIOcoYctep4NeDwsSzjIyZ7A
	 9U5t+brok88bp9QZjbVJmTrb4ZMlEae97MqPsNOt+1emFmb+NACYUc8bUh7A+tIq9Z
	 HsKPHs640PSFQPCmDxXWXg4fe1jiiwyemjU61ugYxlv/cJK77B/ZVuGuPeSdu303U3
	 1qs0IxYlfOMxwwBL1gxrB53r/scZEDGvsAnxbmFoYjmkvUQqadYxme7iPwnmqERcFN
	 2epZNkU/RYZlw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FD88C3ABD8
	for <ddprobe@lists.linux.dev>; Thu, 15 May 2025 01:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174727319358.8607.2640702659061471908.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 207df46004892d80765bc6965a18374d17ef0a9ffb853ce5f4f17406c7a2d7fc
Date: Thu, 15 May 2025 01:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747273193
