Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DC141D5AB1
	for <ddprobe@lists.linux.dev>; Thu, 26 Sep 2024 06:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727331354; cv=none; b=AlJoWOvXh8aJsrTJO/irhrHx1+fmucu8N4x7WUr4R3bx9gZw6ecv/gSNnjnhfx8ChJcNVg1xnUqhY9+u26q0e2VnMzibAJSm2ARoSqAJvjl6jwp+qn6f0utTME8mqzno0g3GLQGBaxJP7JOGStIXzovKgSFMPtPBL9UyUVBEKiU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727331354; c=relaxed/simple;
	bh=hvd834cB2o3xzzR/hyUEP0CxcGzpWH0I4xXwsG5y0w0=;
	h=To:Subject:From:Message-Id:Date; b=u1Q7+MhsI5joQmbSn9tix9UUDDmhg3zUEazf/y0ha8wfBmOdMrOAODg8/8MstWTNe8n0gpSBiJK3p1GG6+ddugpEBp/W/jI6wDU/n0cJkeiK6fryhZfyWO9RHdvXsa1YsiXcTLGEndPFkJyDszOpB4OV5WNmL+TvArTnUubKNgw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=H8XqyrZA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="H8XqyrZA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6EFDC4CEC5
	for <ddprobe@lists.linux.dev>; Thu, 26 Sep 2024 06:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727331353;
	bh=hvd834cB2o3xzzR/hyUEP0CxcGzpWH0I4xXwsG5y0w0=;
	h=To:Subject:From:Date:From;
	b=H8XqyrZAYfsGzoaE1laiaJqYV/KYgxcD9P3r0ZAynouY/OUeenvmTdUC3wSYtvGEx
	 u3Ocjb3HprpLBG4+anY2O35D6Y2+71JWYukylRzzoUUs2nUoLW79crc3ruqwhBu8UD
	 mg5S3ee8b9Xn/5YKS4z+hDVoydoUEVvK9ZK10K1w6ihatRK3HP3T8+OBAOBvACCEBK
	 NoeBRrJUjXhMNejccn6K3e6EqRbG8a6ncE4yjRIGOYOlBIVvikVK+2jsjRS5nOWuJX
	 b6q3lpNlIWbsYN0NtXCcST8kL0ii3aqm8LK6kay9po+B+pLrPPf8KX3qmCqulXev0S
	 y4c/v7sllTX8w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97C82CCFA07
	for <ddprobe@lists.linux.dev>; Thu, 26 Sep 2024 06:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172733135361.15754.9994050618881944606.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d0bdeca66352ed839397ab24b2bde91bca8ddcfb7666f488985a5488e2c572e7
Date: Thu, 26 Sep 2024 06:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727331353
