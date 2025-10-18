Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4BA7E25D208
	for <ddprobe@lists.linux.dev>; Sat, 18 Oct 2025 21:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760822394; cv=none; b=q7zqNGNZAiAeECB2ESk3kY2RKSeyYSdUPX84seNjuzkFR3mFV9cW52aSwPh23gNspdZPThjWDWiA3Tzg95H4Zmfmu909/pf0P+HbVlTJJb66pOkZ1x5rkx00R+lKfiYseC/MkMkmdioAkrf5sIqelmN2DtNu61MY3VjgL/qQEdM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760822394; c=relaxed/simple;
	bh=Q4KdTdxVBt1zwPV46+SZS4WwIlaDdRXw7e6PM8TNXlk=;
	h=To:Subject:From:Message-Id:Date; b=tZ/YC6R8kOA7W5VSrctJvuP5NgSYDEwqOzc1hPdMy3Z5W2bcQqn9Vdeu6pAAgirKy2yvH4FbR8wkd0HbgUZmprky32GniqxhmfSARTsorNpC/H/m00IBCsaceEu7SDH4vAGOJdG3ItNx9Bu9+YbcdfMUVhybx/WQTXK0RfVsnWM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=A3or6dH4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="A3or6dH4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAC42C4CEF8
	for <ddprobe@lists.linux.dev>; Sat, 18 Oct 2025 21:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760822393;
	bh=Q4KdTdxVBt1zwPV46+SZS4WwIlaDdRXw7e6PM8TNXlk=;
	h=To:Subject:From:Date:From;
	b=A3or6dH4oRX1MUNd8dDNnjnV1TheNXGsVtLN/xIuaN7q9rmPO87gFpVRzKIS9ZeBt
	 aWVPBOz5K8rw10/41Yk4WvkQLdffVUO51YA542Uyv9iWJvmEFLPWiCdT/EOitq77NW
	 hsSHA1DsQKBSSdTWb6FvqpWcXF2PXPN3lC4iTSZ9unNwpT7hTszB7cHwpAvy0OEE7n
	 6sZxiZtoADScIIDaa+LL35MwmCXnWhFPbnIM+RrdsD+RN947q5E/oOKR9vyfjE/GCa
	 KyV8ZHhmSv/W8GBT1Y4SPCRr2STgHkf7/QYxMjZa9nlQR+D7Y5I1rqylEBjrnYUVF6
	 ScU5mV221Ufsw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95301CCD195
	for <ddprobe@lists.linux.dev>; Sat, 18 Oct 2025 21:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176082239358.24378.11056421322795296347.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bf098806dc053fc7822358f8ddf071e409f3f30778362f49d49ef7db87a4fc24
Date: Sat, 18 Oct 2025 21:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760822393
