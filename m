Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B5304A49A2
	for <ddprobe@lists.linux.dev>; Mon,  7 Sep 2026 12:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788784834; cv=none; b=AhqnDkNaX/Xydjc5jtQRY6XbxrAAfvsEE5S5V+9QgNXgLWvmrHJB1Zaq7bolJPHWlrVESGz22D2BXHMeweM9lKenP9TRGWGGzbe7WBR6jSCfaXj1NuibZD2IjEqbeRT7YquQx3v9/QVQwYzmQziOJeizMQWjt5OnEGm335iV3kI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788784834; c=relaxed/simple;
	bh=BbIZ2YH9Bdl3lyojVZyopCJwsBC5CVstONj3vEERYXQ=;
	h=To:Subject:From:Message-Id:Date; b=aD98586hWlvxPEdItio3casUWRLcljG4dEUWGqsL6WBGVHkFmdw+aYPxfWeGSG4JbG95rvpIa08i+t6S4USP8Cx8r0fyco4mWI3e9DTp7gGCF0jBK3eS/2FU0dabL0NSx/CS9eMUseKgISKepv/Wxd0YR4o4lXbOf51q5yoOOM0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=h2H72NMe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="h2H72NMe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D29E6C2BCC7
	for <ddprobe@lists.linux.dev>; Mon,  7 Sep 2026 12:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788784833;
	bh=BbIZ2YH9Bdl3lyojVZyopCJwsBC5CVstONj3vEERYXQ=;
	h=To:Subject:From:Date:From;
	b=h2H72NMeXbHAWAcX5s3HvWQloKK5mzC3tN/EdZ/Q7OxoZ2w/24QZD7HbKS2FGDqBb
	 TCpDkfRVNWejrlkvMVF3CD9j3d/QFTbnV0wZtnLoqiYGP2Z6wEpQdNvAC9KtKiD4Yv
	 Y0NGTLW0cJSQ3Eb1HA9BNAcxxGjj0i9uo2yaOK0hz5gMWYY/55bwCA/38X3/UzRUqB
	 wYaWxbhVGBIYZlA8VkuYO3SIIGpiL3g2S/CfUGZJxIAvsR4OZ2HjIQn0t1Se84kLAX
	 1DDB8FBbxUVz4D5gdBtfHVCSsPQQ/UM/jfc2O9CA5/U9BREasFc8im1/L9pkIsnlx3
	 Eoq9MydgoNWjQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFD2AC79F89
	for <ddprobe@lists.linux.dev>; Mon,  7 Sep 2026 12:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178878483370.23801.17517937413458059717.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3222b8a26ee052b7842eca3f41f607c7cc4639c7441a0c38873d51e0a9fa9d97
Date: Mon, 07 Sep 2026 12:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788784833
