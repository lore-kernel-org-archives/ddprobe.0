Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23DB827453
	for <ddprobe@lists.linux.dev>; Fri, 24 Apr 2026 21:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777066054; cv=none; b=kz63PbxdE++gdlhQwfs+1GuIILxF+buDlx9crXBe2YZbjk5FAjxHSjtSx/9f1Mw4LDR9ELj1FQsmy898Ds5RyqxrJdZGKSHzzrJR+yWt9AM80QHHGxuiUQ96ShEvtIVYJOzj+ZyqLfs2Rj/kTrLsdTBRTSrbqCbFriC3CSLtRdY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777066054; c=relaxed/simple;
	bh=ksZNTYTccwvdyhCjwjVCPeB95iKohENPIorvtjrDQgI=;
	h=To:Subject:From:Message-Id:Date; b=YHMdBzcqRBhgzzjcbQjDFjlMITqEDndqB6ndESV3RnMmRHwh19htTeD2z8a86Ne9D1Brf7wNB//Ye2hoSN5YfDu1efOiEAPNgHNiGneBJcULB1YMIPTSoFxzN8smSHNZgqpFainXrnQbikOYfv3oZjIJXiwpGIU4wMUTTFcEBaI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GF9LfE4l; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GF9LfE4l"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B658AC2BCB0
	for <ddprobe@lists.linux.dev>; Fri, 24 Apr 2026 21:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777066053;
	bh=ksZNTYTccwvdyhCjwjVCPeB95iKohENPIorvtjrDQgI=;
	h=To:Subject:From:Date:From;
	b=GF9LfE4ltDwg8pgPs7FRDEixRbvkVKO1242SXcuczX3n/Fi4f8ahmevuyejL8p+h/
	 PiXDLvbpMubBUpxU7D1GLk9I4n9pht+knloe3q1ZK0Hlu3drQM59zLgklGZBOEcm42
	 J+3yqlPFX5zmbCcdsf+n39AejeFjnDcaaoKbd9vpQHrKWQo9NQDqVDrhJ7enLniJfg
	 8m3iBH5euPYNIisZqVSt/qE/ziDf2N1b4THfYTJJwZ2kFwlrye5bhLFsa9+tVCjEOj
	 sf4UUnZrXktbmNieWXWbOnvyPlxFu18Fpg/qznS+V87s9RZ6BVsOxdcSIVJQq6/qdb
	 ABIqWKDR58Z8w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA12BFF885C
	for <ddprobe@lists.linux.dev>; Fri, 24 Apr 2026 21:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177706605368.16049.6168483409224014762.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d824d145ce7846cd1c312163b68ae1f348da90f44ea050c47c3ca95ecf7d592a
Date: Fri, 24 Apr 2026 21:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777066053
