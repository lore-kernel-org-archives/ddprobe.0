Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D54F13FE368
	for <ddprobe@lists.linux.dev>; Fri,  8 May 2026 20:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778273853; cv=none; b=BoT4fp+nmPiLSBrq0TeYgId0iMD9xgDqXAcVq3pH7ETtvp8Eppv2/oO8IOG61kBCE44jPjdQN9WhpquqDB0fR8UEglwyaGekJO9vuIEM78hMyUOW+ze1HERMN1AQDpYsTtnyXPilvDUzkvv48w3f++uzD0eoLQRj2iWUwVbghNM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778273853; c=relaxed/simple;
	bh=sSK73vZmA+7yc7e7XmTBG4Awol5Lkg9e1H0UXKkVjEA=;
	h=To:Subject:From:Message-Id:Date; b=uhEfi+1dfue1HEyWWyhxIWF1ikPFcv1yvXUX9TJYvqyrNfRtVAVH5QtAMR8T9FR63dRCw2BInT7gfOq/ZD/xRafYoPFBvd2Zlm07L9jTCgWCVI9k7Sf+apQPSlLiUlqR/TSgxssg7QcljvkshrjgHy8DKt+D4g/lSG9Yl4ZuI9s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VFOkGKsL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VFOkGKsL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB53EC2BCB4
	for <ddprobe@lists.linux.dev>; Fri,  8 May 2026 20:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778273853;
	bh=sSK73vZmA+7yc7e7XmTBG4Awol5Lkg9e1H0UXKkVjEA=;
	h=To:Subject:From:Date:From;
	b=VFOkGKsLdD+K3FlxerNA0F6qrnFr2jTB3ouz2CKyWVXfLTPlaKusY/PYE/hGELV4r
	 XwScesmj6FYh0zqM6XQq5eOxq1ox7o8wSHywLvb5thHwwkUNBcn5YgJCDl+prXDAZN
	 Zdc8geig0Wsds4E/NHVDUlHZmSZ1qX7QJu3JcMOBzttgaFEUruuroS61raydDA3ZLO
	 mRpeWN68OGYVWLTAEICjIIGVQj+nx03rxBXORe2W5BblB15k78fDVNho3BiI1RLjMO
	 65VjwiTFpc+7jDnGMABBwQN63lnxhM7QBFUejT87aRWYnQ8Q1rVmAVGPfaszQRHKLp
	 Btv2Ou0XOFXMA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABA65CD3445
	for <ddprobe@lists.linux.dev>; Fri,  8 May 2026 20:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177827385369.12148.1935820569659628086.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 67d322fa99e2e2c12c10abd29f51a226adf9daee6dbfeb8b47146007f594aa2a
Date: Fri, 08 May 2026 20:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778273853
