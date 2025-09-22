Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 07CC3770FE
	for <ddprobe@lists.linux.dev>; Mon, 22 Sep 2025 09:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758533994; cv=none; b=SARlzhfMJ4gS+zcqcBeYYERLsq6G1QaKxNdtNN0HXSXBgIIdsBEZzH3P2FJm0KJUbnA01QqkOsAxpRh1LD802S3rVAf/bCqxzDAvcwbTm//ORemGfxYgdZIfrppRxp3pvZOh5LeVRTQk1MCn/h6ihwej8xUuv46T/hBsKljHn7I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758533994; c=relaxed/simple;
	bh=I/IhUmQm00pyj96tM6EAsu23mPcaaM1mBdWa+t+tF60=;
	h=To:Subject:From:Message-Id:Date; b=gpoX0metd1El7HC1ENRaQcAR+xLqto2KkdK9pqhEqVWJWZBO1U9rHRwVI3iMIMdyuD6Y7y3nNmBgyyItAFN7pn9YUPIkh9LxJ+Bp5n7QyZjiFL0sCljJMIpsZE5m+mgg/WZOfcawIho+9mnF8UESBZ0ej4WeetbPYjGRe6UwOqw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=o8sfa5Z9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="o8sfa5Z9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A34ADC4CEF5
	for <ddprobe@lists.linux.dev>; Mon, 22 Sep 2025 09:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758533993;
	bh=I/IhUmQm00pyj96tM6EAsu23mPcaaM1mBdWa+t+tF60=;
	h=To:Subject:From:Date:From;
	b=o8sfa5Z9Aw0v8H8d2z9sX0UEjJZuUty/g1n8T3xKxG8ecNe0s/vHJH56lhnQqYG48
	 b7BwdAWLsvpD1/nnceVZ5FTpmY/F0zzDSChmG3E2pFYCmR5iTifJt3hS7fhFtMQS1d
	 T9oyVvCwBFPfw7H4kg5+nBPYQ7IriNAsd0SUwR0TBjJSVNHjCLoXMvT0faUQaiamPJ
	 D7smJV2yWx6vZfSFBZs1Fjmi4hmPqmssGK/NSe9RGSM/j4p7Xwguu5kFkcGaiLdx/j
	 Bwn7iZlkoZhPMs71DL1UDE3f2q1K+UDJOj/Re93Vy9CddV2cvFPv7DiwW4DKkS51LU
	 dl0g8mEHwdEZQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90A95CAC5AC
	for <ddprobe@lists.linux.dev>; Mon, 22 Sep 2025 09:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175853399358.17979.4070494608075972619.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3d6ad0bc0f50690e0036a2acb986d4284baf980110ada747ea541e537ff80cf8
Date: Mon, 22 Sep 2025 09:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758533993
