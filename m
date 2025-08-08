Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CD44E289E30
	for <ddprobe@lists.linux.dev>; Fri,  8 Aug 2025 22:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754692793; cv=none; b=Tzi6UUyHAmUc3CfBTAYBUJkV72Db63R5UirVBiYSuMs4PGh31JVXAomdp6j47QiRqNNKyyC8LaKQIQ1V318XcRcUVjkIOqYxc4WXGdGnXqXzDddsrmvZ0LLXPI+VoefLofuBjlc+GQXjUtqoBOs78nNDaxbhwoBGnla50rU2Il0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754692793; c=relaxed/simple;
	bh=PqOP6+5wCAcyWFz5qsnUUUZjJaxgIS6J0SwMceQ4k0w=;
	h=To:Subject:From:Message-Id:Date; b=I7KhjOS4DuNN23PStdIy+c+weci6iTNFGeVR+S5Mi7ly76gtVdN/5/jVLt+cF9w0zdoAzlQDuLdN3aZ8kpArrKtuaLAqeQMC1hqZysZIdEBFw0IZOlG65obHPbHk45kGw0bGUCu34Uw5DgStsrjV4xjebxlvq0deCSiuf6a969E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DIF/pGq8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DIF/pGq8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4A53C4CEED
	for <ddprobe@lists.linux.dev>; Fri,  8 Aug 2025 22:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754692793;
	bh=PqOP6+5wCAcyWFz5qsnUUUZjJaxgIS6J0SwMceQ4k0w=;
	h=To:Subject:From:Date:From;
	b=DIF/pGq8jNgM10/K8g6q7cFAocCNLBjiweNSITXn9nms4PeV4w+gTrDXYusQXWeCY
	 XCcQDvS8ebYvUoTx7RYjjE2u+N7dIVBr0HVnuz4cUtCj+ch25+kaK1wkp2ryl42RI6
	 0lxIlnX7p3rtyF5Fkgr9VCdeid0XtqJ022RgKw0jKq1YC90yZUA1De7ACnsNy2IaZM
	 F5o1Q2nQevX4NKxS91AnQWQoQwlUcSVNmsmd+8+ACdJwKcu1618SUK/zsuV6BaANVS
	 UJRvUbtIPi1Kke3gHIJQY88o3u4be1udY2qCL2VVbHzgCrBe0YqSRet5+0tvNWN29B
	 ApYlaFtDaCL5Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93609C87FCB
	for <ddprobe@lists.linux.dev>; Fri,  8 Aug 2025 22:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175469279358.4784.4474015953354198161.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 86847eed966552f0f6021b7e5f890fb0bd881dc1aedbbe58e329611240c89810
Date: Fri, 08 Aug 2025 22:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754692793
