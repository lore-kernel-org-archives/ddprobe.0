Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 299B31DF755
	for <ddprobe@lists.linux.dev>; Mon, 15 Sep 2025 14:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757948394; cv=none; b=dkBgL/hT0W0Wk8YwsO6+ZISCy8pp+XEhp7MWRYmjeqcHP7nnuDiPyTU+kixUdkAIfOpB1t/GYS4l27Ze/2Fjli53oWd8eStjmQKfBfRhbzlJZsUNAsaeolUQBxff0qh7SLd7FVjMcX9SPXJ/xNztLZXPQdVBnMxu9RXYhP0m6Ws=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757948394; c=relaxed/simple;
	bh=pd129abA7H3sBqnH7qeak7ueSVYLtXZLe5XlJgmoLak=;
	h=To:Subject:From:Message-Id:Date; b=txiC8bwgUmRr5Oc6sVngIft5VvpH2C/9X4/zZb33f+hxOGgc74XxLLgICFAi2jbAIPOjdjDDoKhNfgLDWLwaLNCdmKyzBxT89oz8F9ygKmLmrHU2XIRmpKKw0zKH/EYuXuzX8rNO6pMpp0UzgFMgDB1lAXwTZlrGWPf9SAuSubc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qVqrHjUJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qVqrHjUJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC784C4CEF1
	for <ddprobe@lists.linux.dev>; Mon, 15 Sep 2025 14:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757948393;
	bh=pd129abA7H3sBqnH7qeak7ueSVYLtXZLe5XlJgmoLak=;
	h=To:Subject:From:Date:From;
	b=qVqrHjUJaMIBFqeYSqClrYxtPwH6Q+Y20znBlzKc6iCyjc9wDx3vE+QYDPEX2Hgrf
	 N8UmH55WOzh+zOFrcn1/cvPwdY7Mgz1EBaaXo2NOItYYEDVPLdLWowUo4fdrpxcm3r
	 pJpxvotuU/i7mUo4UFpK2ABnaCsQGPKC0z2XGPNOBHAS0jpuGTnR+9GZaXM9jkjMcY
	 oNM8ENfktXm0u4Yo2cZWEAnoCJK+GDAyM0Sv6KOfoRRaTeG1rPDaDk05MXg5804WbO
	 q2uqLMJa65HnF2maEyt8fPEBpe77SN8TEbjHrcWTkM6cZeoNrbkj7ZHEWbyWJus9y9
	 Ax83kxBhRt/pA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9822CCAC597
	for <ddprobe@lists.linux.dev>; Mon, 15 Sep 2025 14:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175794839361.12141.3559145175166747385.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ef991071d81a63f476c6c8da171e94b6c569eb9a05fbfaac3d31ce0a79f78367
Date: Mon, 15 Sep 2025 14:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757948393
