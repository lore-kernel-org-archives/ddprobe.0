Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7EA364AAC5A
	for <ddprobe@lists.linux.dev>; Fri, 18 Sep 2026 13:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789739434; cv=none; b=ThCO+7mUEIlf8AYl3dYVTlnchKvOeTuxcgD29S92f+/LiD1ErqoMNzlVJMrwuSPX+NJHp4g4DXUMoSwZcDtJMUf30GCh7EHFRkvgsc23R1w5PFwUPgMKNE1EGwFyxWHOBSNLTf6vsROdqSjofrmt4cWAKleWXKBbTWF4kKCngzI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789739434; c=relaxed/simple;
	bh=EyoWPhbxevXDQmXyQOCbJ5Jct7Zw76AA//aFi+q8Vtc=;
	h=To:Subject:From:Message-Id:Date; b=skKQFHMASnPXBSDXltKxBPErXvzXXEZ6jyOsp1Kg/4CKE2CzZa5aQKfX4+BEi4w6gom+dRzk+/5fGY5jmAnDhVxfB3loVi056n1rvZHHjA6LzygaZxAgyvpuYqjGbTYaQGesQusS4WZqtwYZBlZZmz+/71BLhYbfvjCUdnqrsu0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=npOtifcf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="npOtifcf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE9E4C2BCF6
	for <ddprobe@lists.linux.dev>; Fri, 18 Sep 2026 13:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789739433;
	bh=EyoWPhbxevXDQmXyQOCbJ5Jct7Zw76AA//aFi+q8Vtc=;
	h=To:Subject:From:Date:From;
	b=npOtifcfn/s5AHfRF3QD0k6mOjVg68BI6HN07RgRCgWNPwuANfnGrZBoFxTaAXkqJ
	 jgrsvtZeLN1U+fM53DJn1OB0V724oV1O39dO0yiCDjObsD4m1QVP1XWGJf5un8EUMZ
	 2dP0aUjL89GlInQE3jVaOaI6aF0goF0Tr4lqvUZatcmAR5eSTfkqDtj1i1fwLg7gRQ
	 fGe7nmqW3cm8FcA5P+caIGipnR8UIv9qXBAUtU3mNyDU7VBntYf2tR0vbRTSm36kXv
	 s3Bx2q6TJQBEPDldLgtCKeAe8+nhRAOxqatasXVTaCk/vhjfY9ssPGrLHzry9na5yD
	 JIP6bqoObkbgw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB9A7C982DA
	for <ddprobe@lists.linux.dev>; Fri, 18 Sep 2026 13:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178973943369.26513.12554511933439216942.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ee3750a24f501158623386daf761c1ed73df96672006554213432e23ba7cd9a8
Date: Fri, 18 Sep 2026 13:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789739433
