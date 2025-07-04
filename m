Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B7311922ED
	for <ddprobe@lists.linux.dev>; Fri,  4 Jul 2025 18:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751653794; cv=none; b=hpVthEk5t2GFFZooA2BwFtIeMxWC8kCiE3y/ICa4hk/y+5lojAbYLiIeNnvmsC2BZx/dUF77+yZQjvWO5aLOBNJWM+OAgR/kWp5UFbm2aVc93Exfzg5MhrKQnap45gHNn3NKGg5KTAuc9M4lBEbbQ2BEtYbBXmulnaUVexgrNLg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751653794; c=relaxed/simple;
	bh=9/wnZ6xapybq4Aao0Bh0niiFBvZKBnHaWFHb4TGqa0s=;
	h=To:Subject:From:Message-Id:Date; b=Fm0KQvOwC8LpJjfrjWUkxXwn4Pp2DjSjmICETj/fu+nO2mDkd7Oa63D41KKouAqmqCLPOyzytRI38PcVvNaDDiAdfrNPuxgOOP6dzMSzxb+7s5y3B38XHgfk4WD16EaJTh2HP1e4604QYO61okXeSFMcFMVaEvZMjrIhsNQHn6E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rMYHjTpV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rMYHjTpV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2F3EC4CEE3
	for <ddprobe@lists.linux.dev>; Fri,  4 Jul 2025 18:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751653793;
	bh=9/wnZ6xapybq4Aao0Bh0niiFBvZKBnHaWFHb4TGqa0s=;
	h=To:Subject:From:Date:From;
	b=rMYHjTpVIiXr3Sjldl3wt0Lup7k7/G788FXdO/4fdk6rxTJM/eeX2rkqVT4TAn6Tz
	 5R9sBwEj6b/6VpXi4gnWwJUUM/PRtu/li5q/eXqGFcb3cLCxt0RA4rUK4bxe19I3SF
	 yGWat86GNjqxaihmDdudXD+VkCfqetqQ9Q1vXg80aMfTZf36QmohELWYhAqX5VQDP+
	 bSmkF6JWE6zrldyUXRikHiW/4+MY49aAp/fEPur0CnZECWn9jm+Fba+O8Zgdk4hto+
	 s1HcDmlWr8zqWfHAwdvfynnlGxPGYvnFWjm98RqpgnpJTr/zQzg662fS4YMYqDQ9Hu
	 6msllmcL09pJw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92D9BC8303D
	for <ddprobe@lists.linux.dev>; Fri,  4 Jul 2025 18:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175165379358.28516.981658072730583162.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d5b3f9bd93f158f6f8baea6186f2a3ad67caaa2cd53f749ec14bb2104aa65c81
Date: Fri, 04 Jul 2025 18:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751653793
