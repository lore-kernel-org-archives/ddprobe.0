Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E747148FF3
	for <ddprobe@lists.linux.dev>; Fri, 22 Nov 2024 17:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732295154; cv=none; b=HiXI0v2MFcyoN33Y14P42E76ikGLv32pNeug5MyVMl6XYqAX/wFYGU2VtgPhBHdH8CuTqnYUmXHJ5xylkhitvKEWjKUd2LiBHYinryNkrtX9Trda+u1PKn4BzEsfxbOR++m8mIYjfLV8ZL0P5kOIqFKfWny9Iy4tUCiHCyKu5DQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732295154; c=relaxed/simple;
	bh=IHwEzJblEce+BrsY4/NNS2rg3b0Nsvj52OB248uwt4w=;
	h=To:Subject:From:Message-Id:Date; b=Q1Ry9ZT3DJcZ9BP/zFMG4grh2xXo5z0ukWgt8+MUug7HSoql978ab1pGDl2g2TrkPB57bG1tj4eXLBNi06ScPiw3cZSj27TEbMa5HF+y0pWkjIDeJKscVOCalLwmkw/b2TdC2sjpFN9LpjqGU5xWWsQsROyp/Z036ZGGosxFnFg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iX2ZWPs7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iX2ZWPs7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA829C4CECE
	for <ddprobe@lists.linux.dev>; Fri, 22 Nov 2024 17:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732295153;
	bh=IHwEzJblEce+BrsY4/NNS2rg3b0Nsvj52OB248uwt4w=;
	h=To:Subject:From:Date:From;
	b=iX2ZWPs7T8d2MFzhID7KfUV1mkYWxRyhkDfxy0ibtQLDb20PL5jAeRkKpy6zoAE49
	 Rk+3b0gnAZVPAR58ot55xur2nca8CX6CsIYy7KC5PRQNryABI8bmkeTtDPC/qtmk+t
	 ExposSaTSEnFuMq9tuwr1M+a2ta0GfPVUm6QLoX23xMgfsKlOkZpBpS51NqatBfzkR
	 p8VslHKER869zaUd2Nl5OnpqsmxFCQBsXglaZ/AcTgf7SGrNITwnnLa3LiuZqIK+9s
	 CQYPW7rVqvf4K9Xi415oC2qwhdzgBzrnM8KkAcZ/rez/dLHjW1+fTh2LzBMxm517MA
	 UkiRnoacHiZzQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F4B4E69183
	for <ddprobe@lists.linux.dev>; Fri, 22 Nov 2024 17:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173229515363.7545.16127604176890554174.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8402053cdee2f0d35b63545b50c6ae251efab6ce23f391348a631607d5d52674
Date: Fri, 22 Nov 2024 17:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732295153
