Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 511B2382F2F
	for <ddprobe@lists.linux.dev>; Tue, 14 Jul 2026 06:18:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784009914; cv=none; b=dBUGX4FDHOFFNvZKEAiIQspcKttJWxHE/JkGDHnSw3J2Yi2q2f8Php8okrfzDgqXLjoiw/uBZIndRk4B2ab1g2Fuw7GLk+7rLZAeqk97IPdOwDwxi1wAMl6sRsAAO1yhsFrC8BzN1tvJoBzrrcSA6CxAW9a2peeRfJhdKMITsFI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784009914; c=relaxed/simple;
	bh=sXsjh/Q9ErsM2A7eoaSBTVxJjYP9Ey2s71KFkS4TjC8=;
	h=To:Subject:From:Message-Id:Date; b=BYXlwXnEeGJYEaHLlatMRg+hFwGsPtQn3vYPk2i8bQJN6cLrF4DymoGCw4FQ91WHAXuB690Y3I+RU4Zp9iCXRHB/vX0z0SaxLFAPfdGDoyS+IcDOjJ9hVRVcphNN9HTe8ZnRFXPmOxuXDXIsJlNaU8pTD2YQYOgryAMGHMV7cjo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FuBLeauu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FuBLeauu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C9E2CC2BCF4
	for <ddprobe@lists.linux.dev>; Tue, 14 Jul 2026 06:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784009913;
	bh=sXsjh/Q9ErsM2A7eoaSBTVxJjYP9Ey2s71KFkS4TjC8=;
	h=To:Subject:From:Date:From;
	b=FuBLeauu7+nJ09kE0ap1Z00VUk4XKiC9YMeU8Cm2GVczcCGLsHZqjfK78xKnHd3Iv
	 tzrwNNEdAuD1SvVJtbxmnodUvwLoNAcweIRSnkyb0rBPHT0w1c570d6AfDZVjBAQLM
	 VPvN53+9FhJ28MkzMv6KPccS3JDBMJUui7CM+kk4iyyNbXJJRJOfiN1oEvZAgiXjo6
	 JtS3X7gI1+MvdUDPDZDk8J8+6/kfwBP3EZv57su7wCXDNXNSgisUa3tHOijXdpk+Wf
	 d+dyXcCMGuRermViImKfhNcJAqvpjvpCAf3wT9KJ1+2675GZoCyFDhhC0RUDpXCBbL
	 m+1D5GaUecTjQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8A2BC44501
	for <ddprobe@lists.linux.dev>; Tue, 14 Jul 2026 06:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178400991368.8629.10684666325027575775.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 501cfe75319612674c5c85e8e4a9d28bedfc0d3a9773b6a61cef796026cd3c50
Date: Tue, 14 Jul 2026 06:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784009913
