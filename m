Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F3A21A2C25
	for <ddprobe@lists.linux.dev>; Mon, 10 Nov 2025 05:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762751994; cv=none; b=oDbnEOkPXui7X8n/jUASvFNwEy3ljRuquU49KTiiipUrKfwkbQ9/7IlV2lFpAjwzQ4eOE+8pEyn8XQNxq2c+7VvGY1+l/wCaMO7j+Z1a8FJV4KO0dTtuLOwzpQiDIrTXRIKxKq620EMzO21ir75kN7ZloC2lrUA6r99OBOLmJoI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762751994; c=relaxed/simple;
	bh=fhqdbkhZ2mH1fQ7+awcsxmShyG24oCqWHjOq3U8qzgA=;
	h=To:Subject:From:Message-Id:Date; b=poHYm175/C8Ap99lSdZ0FxuQoq91ZQJAKR+Zldtobo0Cu/cI/nfg8QcpyR3+knFlTaBuqpKNhZENAA3Y7Y5S0Os6ju24XLCARtBmYEcMaf5fpVxSqy0T+YyzFBje1XN8O24Imudfdc5IQMdfRJIv94haBKNQxvm46TNxxltok40=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Rqwd8cTl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Rqwd8cTl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A96DCC4CEF5
	for <ddprobe@lists.linux.dev>; Mon, 10 Nov 2025 05:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762751993;
	bh=fhqdbkhZ2mH1fQ7+awcsxmShyG24oCqWHjOq3U8qzgA=;
	h=To:Subject:From:Date:From;
	b=Rqwd8cTlsk6LP6kxdSHIn8TKqKsrEAaud8ANUML8s5nnXrcrvirPchIRN3nW/y5Oo
	 5y7EzFgWKfS+dLHIy4ZGG2DUvf10/ymqtxv2mI1daSBtRWi5ITYnQeZHd0LbowXZ/X
	 vjDUsswaZjlgpbrR9zfVHphw0t3KIHXyZqCb1SxwMVdR4H3b/Q37qdiB6kW+lgsk/R
	 a8j5wQSsHNooGzmf1oVUQpMPVixMQyrtpEEQsNLJUbO8S3t6ObnAfAdd4Kw6sg9bkV
	 jIb71h7JXVlJBgBNKXAfkC1D3gFtuxxWyME1858SM75D5rkVCBSWjWSbewqpmEj7O1
	 PUgVzY070dEyg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99FE0CCF9E3
	for <ddprobe@lists.linux.dev>; Mon, 10 Nov 2025 05:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176275199359.23327.16413283539564509543.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 896e01db777396a7b55eefa22db7b21183c37df7b5be786e0100b78e10ec0edc
Date: Mon, 10 Nov 2025 05:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762751993
