Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 411E62F36
	for <ddprobe@lists.linux.dev>; Sat, 26 Oct 2024 17:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729962354; cv=none; b=ffmTlr4Nt3SLn+HlUayVlbsrQ68ZcG24CXU+NYwfTYbBoSG0RI/wJ0rwEuCHRlDuSV6RgWSPraaTYF11Sz+rmxtKOVTX3iiW1hz+zEFUP7RDdzJ8LEaSzAnxLZGlYYt4Ycoek9Uw2HqDBgya3gIl37U/uFR2mwvb0txQ1hdL2VU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729962354; c=relaxed/simple;
	bh=DGOzBHKj5/K3CCo679/NF30lJ9xaOk4D9hg2I77YbW4=;
	h=To:Subject:From:Message-Id:Date; b=mcgU5LiXzxu9R1JHxL4xgiTBK58Jin9kropwLaTfuG6YDGCdRnFJJAH4gi8zfBVHLJTatCFCoydG6f7Q/NJkS1QfX2h3lAHRtyeNB4UU5NgMeK//F/nL5gNdO1R0qdWFtP1BLpKsFM5UQXljCcZQiuPBfr5W7M5m/4vMtimF1Eg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HU4ZvWTV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HU4ZvWTV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BBB36C4CECC
	for <ddprobe@lists.linux.dev>; Sat, 26 Oct 2024 17:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729962353;
	bh=DGOzBHKj5/K3CCo679/NF30lJ9xaOk4D9hg2I77YbW4=;
	h=To:Subject:From:Date:From;
	b=HU4ZvWTVUCpLHS43WIw0Z0JPGymBURyDr8LllMxaY2sQR9SprYY9hyeJ8Hjpc1Uau
	 zv41w/g2YqeXqozMotWxYsKJVFFiih2vZsSjGCpo77DC+/Y7KFmANR+eGqjnHp0LjY
	 axUPliwxFuknD84yi28QZguvaRACbf5nmJSp2E4l628PqGculUPczEuJ6HZYxP4lik
	 42GaTYKwLPIXqwx+EJICTxhtaM4n5Koh9n/4EhlALm16hQzfQJKimogShEniEMcDxS
	 wuXeteUxATuCfhFDMOmRjfkBAmCcWOUmth0RLu7DMZTw9ZWDW6ap3OoATOmxmLBw+o
	 F8cohzOERYH+w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A23CBD0C604
	for <ddprobe@lists.linux.dev>; Sat, 26 Oct 2024 17:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172996235364.9536.13830703752547625799.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6d678237735c970e0e09ee9e63bc4029fa8a6ff66e8638fcfab893bf4982de48
Date: Sat, 26 Oct 2024 17:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729962353
