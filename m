Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 268EC1F9F50
	for <ddprobe@lists.linux.dev>; Fri,  3 Jan 2025 11:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735904754; cv=none; b=st0657kA+pNj5Jl4EosaaeUTgMyeDm8eN0Lg4dZae9E+dvPxXz1Xq4qp2Yo8Oh+qCYU0jVSVCMycuqJq0dQC2Q3SmHPogo+wgyIqjHY/1PiniE9z/Kf+mBE9dx6sUveAx0zh5jQwKllsHWFxxWchtw9hp2lniPsRBqPGK0EMTdA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735904754; c=relaxed/simple;
	bh=UgxcFMJ2lXfeyfXpdVoEQr93oos6FZsmAEWDr1lR3aM=;
	h=To:Subject:From:Message-Id:Date; b=Meugc4+GPS513FWmZEKdqe8zKwjDY0S6b7McZVniPjGTNrnaVs8QbJ1VpwxLQAm4zOpPEVz9d1Zuq/n3mbdjfBR8RL7Sq5LZssqjlczseQ+dHmrBzC+xJ808ho9FmnqHDsg8AOHa2azttWkEU85x/yuPqeH7hLH89xgqcCvNbPY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hQmKYhGj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hQmKYhGj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABD95C4CECE
	for <ddprobe@lists.linux.dev>; Fri,  3 Jan 2025 11:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735904753;
	bh=UgxcFMJ2lXfeyfXpdVoEQr93oos6FZsmAEWDr1lR3aM=;
	h=To:Subject:From:Date:From;
	b=hQmKYhGjyao8kzcLOs4bpocWKZOQnVUsek92OapPpAYRTrKjMLmZSrgQ0OSNCWnSj
	 eBl+cyndBB2rfmj5HfwCRSsuJbKqnAQbP9I6/fHW0cWWkEb6L8dynmnL+dOAH/DKPJ
	 iBIuFaGaLl/kj4qXZu12hbcxeY2VpBOi0WbTPbQpWz3eisEYyA89DhgdGNPaTrf/6I
	 58zsprHNTk89uCBKH6aOz0tOSE6a7Gs4qjnbICWPJBnw/v5vMKB29RkOWn2/FUhnrE
	 wtKS9o0RauFCQXQqj968qTWrlgD3T5BQ364oM8Q3jp4kHmFrzlg1Pv8N3mzD90I3N8
	 UhFyb9VPY8hEA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 970D3E77188
	for <ddprobe@lists.linux.dev>; Fri,  3 Jan 2025 11:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173590475358.12015.124588681413168145.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 356d7128d05c857b458c97cbd416980affcbbad3cacda0345d4647a4619934dc
Date: Fri, 03 Jan 2025 11:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735904753
