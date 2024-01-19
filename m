Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20BE755E52
	for <ddprobe@lists.linux.dev>; Fri, 19 Jan 2024 19:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1705693697; cv=none; b=dFv+s3YETGxjwaLYZV+9E2w8Sghoatf2aTeb7rSIOYSwBsJ8wvUaJWbiPiWssvBuUEfBulHml9owkdHCh+IeZ98kPbq7S7gbGq6l3CdSXS2TuAHSoiMr8hEmpjN3iEGLLdVI4U1gYYG0rqkZbqSwgDJug+I/+/lMcPSFSnKbWMg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1705693697; c=relaxed/simple;
	bh=gLJE1YXnfWBSgSMVn1a1oz3xihXMrLkAMQADDThynYs=;
	h=To:Subject:From:Message-Id:Date; b=dQPny5qa4mvGp48q6rohSvx5w0wmwmFsfJbANOFu38vU/e0yCwbsHPGZLjuWJQCQNk3V863uaGvWuNtDbHXGJdvPm1FogcIV8yMd8P7mGYCgPA32FXPp4anFbEFRxPaD2XqRxFGBVUehndIw8kxmuBQnilx9N+QRVUwX6mF2myY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CIW85J5W; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CIW85J5W"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 76A3FC433C7
	for <ddprobe@lists.linux.dev>; Fri, 19 Jan 2024 19:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1705693696;
	bh=gLJE1YXnfWBSgSMVn1a1oz3xihXMrLkAMQADDThynYs=;
	h=To:Subject:From:Date:From;
	b=CIW85J5WJSoVWxwiy6uFLFMG8dQEWqtgIXiLIJNtz5QnuLTdnEX5UMIUz2uhzGSqc
	 mvveVhr0IMFMIpt3dvbW36WDP8SZFABL5N4NHTqPrWbvRMXlL9HNvlEUUTWoqMu/47
	 PhGuO9YJuBi3cKmVBEuo0y645U2bveDh/xqX41GfYBVL/NCcYgrhOQmwuG98R1ITS2
	 iFjgrNIhUnY7IpR2ZsT5Eetz/Dz4JmwV7+oLq02BnI3EsnzFXamBNxoK6Ipw867X8u
	 LKMi8Q6l4PjGXtPQLfg9ICtDwNvnz8yP+42c8z9z+y6YSQZk9byMnBhuI/KgqZqM/k
	 OdzaZSjBl1kBQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 60E50C4725D
	for <ddprobe@lists.linux.dev>; Fri, 19 Jan 2024 19:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170569369636.15467.11925241790733530785.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 94a516a25aedb6f56c4490981a4e098a1968f6f6b9b538a297fb3897a3083667
Date: Fri, 19 Jan 2024 19:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1705693696
