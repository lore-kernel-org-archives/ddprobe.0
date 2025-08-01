Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E6F21F4181
	for <ddprobe@lists.linux.dev>; Fri,  1 Aug 2025 09:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754041194; cv=none; b=uPnP9Ejip6+flaExSeXdeVoaYOoV9Y3IxeLkwPpsGm2QNw56CqzMV5vd5RmXdvEV3Ehlmq36H0e0R2bfPy35eC1zyn0oHFIXkMZLQuRMzx2v7fW8D1t9Uv6Rd/eZpyTfWdAjogibuGD91pRYboLsDUL08Vvx7EDRmyO3Yzx02Ng=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754041194; c=relaxed/simple;
	bh=JKEcVtX21TNr2mQR+0Wu5ArPQmwM9lwR+a3sPRgvBK8=;
	h=To:Subject:From:Message-Id:Date; b=TS3rkRpSlRz5AMox0GY2zeaU2BaC8VVB4Zi3bM2uqb0UnEBDcVw7wWujlISOECp2abwvg+V3jJpW/ZyHmhqD5RGHHrNVoj/j23D+PfYKh3lerO9dTE/wvv9yQ3szQSwK87KpXFExd1QCBvs5VOsSFQZDZrAHUoPuej06mL76bX0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=i3cmcemb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="i3cmcemb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0944C4CEE7
	for <ddprobe@lists.linux.dev>; Fri,  1 Aug 2025 09:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754041193;
	bh=JKEcVtX21TNr2mQR+0Wu5ArPQmwM9lwR+a3sPRgvBK8=;
	h=To:Subject:From:Date:From;
	b=i3cmcembgQ8bwSFkF3ysA7gsEHWoPoZ/Oy+AwePzkE3Fb9B6GmIs4dDKSCgt7S3sF
	 g6p8NucPYHvJxXutGTCL+lGljz8dJ+7XGfZk8RSn4elGXVnoCwDptMfYhaOdCMpFHz
	 qyp6OZycVhO778XnxrX0q7gS8oBo3OCANt06xMxxVc71de/6SZjKnPenq49gIg8onF
	 HDBHFjQksRrf2O2yTntGN96iQG/L3wyzTHVYtUUO6rS5+jb6CcFxzXIk+w1Chy3TWG
	 4Nn9Rh95EwtMogHT3xagLePhfzL9YeDu9fRsj2Ca82euPAog8tqYgwQUFNXElplUdA
	 4XWmRrJlQ4pQA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8ECB1C87FCB
	for <ddprobe@lists.linux.dev>; Fri,  1 Aug 2025 09:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175404119357.15338.4068418418436740104.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 44078ef94928156c1f4d43a603a51276b2fbada13d78f1af2173f35bed9f1504
Date: Fri, 01 Aug 2025 09:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754041193
