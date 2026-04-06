Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 248833358A6
	for <ddprobe@lists.linux.dev>; Mon,  6 Apr 2026 13:15:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775481334; cv=none; b=Q5hRPuJtHwjAeqagsQciqpLPmuhkpTAp30Nt6tLsT5Cw/qkr7qjnv0aAFpb2i3/CKgHPROHiyH97Ax3zcxzyLKP+vNlnqyRN78UaiCk1EF0VLCORPjAr+P+Rawv2N9unk0RrdyvMvPp1I2qA+SiC/uVmf427ExWlO6INNy8Sl2c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775481334; c=relaxed/simple;
	bh=Xq7I69XIGNL22+b3GVdpAxKP1+ivH+eMXMR1k29WVl8=;
	h=To:Subject:From:Message-Id:Date; b=NDv2P3TP8yVIcgA4HP2eWNjJuSHysKgO3wPTmKck/Mv868XrYxu+fcDwFD54sTF6ropKI6No1renETw76C++QZtCXpBJYACjDpcoC1h+1bs2uT3mcze0aFR44Zk8eSfHWvinln7BOUE6lmis+uJAWwCFgVPWIzc0HhrznatPvS8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SoF1+l+4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SoF1+l+4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C59D6C4CEF7
	for <ddprobe@lists.linux.dev>; Mon,  6 Apr 2026 13:15:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775481333;
	bh=Xq7I69XIGNL22+b3GVdpAxKP1+ivH+eMXMR1k29WVl8=;
	h=To:Subject:From:Date:From;
	b=SoF1+l+4972iQgjigD1X0r30yAwJD9qrk1GyZP115zLb/N0CSYkfSxhTp2C58yn+y
	 bgKv8RNo1n6ZtxY2ihKKiJfRwzmmWbvROgYwLAW+Ug3ebjKruUfjTtOAFjfZyJSGFF
	 y4K98pxbTp34dp7huGS+m4GeTBBYN7gmZ3SxFZFwv7g+ZWedAD7mo7nykfOWYeheut
	 xuDT/pInTU6fkP66A0soon2q+K7/FcWjvYEYpSwhRE8CHVBhcLOiyZmwU+WqXhtREH
	 dzXljQMF3mjSa1aEar2dpORUByD1Z0iBrQlAiz/N7o1RSU+omBfdGJwsxGzvpt/Ytn
	 UJrWg6qSkPR1A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1259EF4ED4
	for <ddprobe@lists.linux.dev>; Mon,  6 Apr 2026 13:15:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177548133369.32262.231230759617632374.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9292fec6e323d7431d98b80a998b55d1030208ce85aa6be3975ac93902fe5e9d
Date: Mon, 06 Apr 2026 13:15:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775481333
