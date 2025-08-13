Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26252322E
	for <ddprobe@lists.linux.dev>; Wed, 13 Aug 2025 04:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755059994; cv=none; b=ZczjHglNK6Idn2jj5wzATMvlD5s+DvDXKbthnIWj4MQ3WRGYKn36S+3l6zSOq+goI53vAWoUqU7BXRVJN/ydQRXt3dfRib1hr+0PadtWQisKRIrhPuYqFbbmF89Kv5VT688NgyGnABmlnJ19564+FE9S3ndZPHXoUPaOU5Vy9DE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755059994; c=relaxed/simple;
	bh=cPSrnOWTJflGJkjdR/yfcgQIziv8wRHe9o7KRoU28zA=;
	h=To:Subject:From:Message-Id:Date; b=UJpLGWDtrIaxRMUXvK+AUwg1MFSQGc1BvVFMIRw5HuGB+IxOFFCWebvoR6FmdIjS8jWnOje6aPJNtH46/W34St7ZQcfGmcGHOEqq+sOLdnPCS1Y/z19zF6hmEvBuM21GYtm6EhWl1RMdLfwmX0cirwZQ4iHLA5jBCysLVPjfC+Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lz6b7NDH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lz6b7NDH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5F36C4CEEB
	for <ddprobe@lists.linux.dev>; Wed, 13 Aug 2025 04:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755059993;
	bh=cPSrnOWTJflGJkjdR/yfcgQIziv8wRHe9o7KRoU28zA=;
	h=To:Subject:From:Date:From;
	b=lz6b7NDHaKG9UhAXNsCfVTno4V5MzrcqUE+nmiAOYlQx2LWA7RnYmYoVHN0YHM65l
	 O7r33uzjSY4wyYYEdrlqCSFOkYopBv1kiRf1ame9l9xOyiDWCwlCDf0R0zeZJz6WNf
	 rmVz50VpJY4UhGsS7JdeCh+JJjVTIQottgWMF6ORcjv2bOETDWUrzqkOiBxqPeNei2
	 Lqi8SBiMH4ZJiM5lbC9I7E5RmiGiMfkvL4JwZKHkjqTlrqDkXPLeH3WDQghb5K2wnR
	 5pgxyWrvPMYWLLlYoW73GWAdF77GWcnlHVhYIsXFcnz+XuqVPt0POC/wtypFp5XM5O
	 gx0LOldjFdAkw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9433AC87FCF
	for <ddprobe@lists.linux.dev>; Wed, 13 Aug 2025 04:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175505999357.18698.9850027478557007756.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6719949eb623f65ac5436e6fd63582436e24d9e4e3d01ed852f23c930832105a
Date: Wed, 13 Aug 2025 04:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755059993
