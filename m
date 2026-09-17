Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7B87C3F822F
	for <ddprobe@lists.linux.dev>; Thu, 17 Sep 2026 08:30:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789633835; cv=none; b=OeoHkK/gL9+ryW2x+JbznIQnY46/Zva/qmH9MF3cZeyip75lRfnh94cehkOEUFne1P2BLJ0MkoB/IWne1M9nxwqqlG3JtQQAnqe1BCjiaKuldH8Ilayxsz8RfhgAgfQdjKk7EbSxfH8J8WhSPJUqAESz262k/jNFg0YcOBMWDgA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789633835; c=relaxed/simple;
	bh=JvU3aROGZ494P3YOB43Fr5gGmWkK3OEoKypCsZEz12E=;
	h=To:Subject:From:Message-Id:Date; b=toSvpThVzrkT67BteMjoU6sAIKB4k8ng/WoVn5QE8xYMonFTtRQGNTEtrkGoVptphhfi6yoMh9j5QLMwUXYJamxcAR/pDvoerX04El4bZtSY55296UKy2ChGQbTefgiJxRC1QkFRmi9+PwM2Q2VSO2Kv2DNTSbS9vLtJtj5aD5A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JTUh4Fz9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JTUh4Fz9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DB57BC2BCB9
	for <ddprobe@lists.linux.dev>; Thu, 17 Sep 2026 08:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789633833;
	bh=JvU3aROGZ494P3YOB43Fr5gGmWkK3OEoKypCsZEz12E=;
	h=To:Subject:From:Date:From;
	b=JTUh4Fz9t3q3v0hbhrOSyucwACDjbvvk3p/x6kuDZfL1CQV001ZrHuZQMDYPxMaF8
	 PgJNRrWBm50qcULY8qJyBNsjIVQiHdOThDn1m814mD2k4dfyd+1lUzDCyPzgCQzYK+
	 +DELoPtkEDx94+T154Kt6BA/EEbqkHS9zaAn4YYm1SqPqZvh4s/Ph9/sz8/cMkf8cK
	 ShJ/LH1NEaL/7SG0itXTCFuQa6vXUZcXCgbFUc1hbwCJb37lqCttGoTs3xNrdGPqEy
	 Bsk/jfgIXdfEQjxAVjp3MfalfscJ5FRIyN8a1qN4hiPkjpOi9/9ymZ7L4aEWNvky3y
	 4K+B8is+QjoMQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B4C4DC982D0
	for <ddprobe@lists.linux.dev>; Thu, 17 Sep 2026 08:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178963383370.30452.17360822301266458843.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 378c1b874c7f85a4b887b2827b87476172f9b69812af56cc509e5e20a251c31d
Date: Thu, 17 Sep 2026 08:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789633833
