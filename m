Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38FDC403E8C
	for <ddprobe@lists.linux.dev>; Fri, 29 May 2026 18:42:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780080154; cv=none; b=Oc/AVzhNattKeAZ1VMaPZ+sA15y3s69bdD5JFyOZYv5vHmgJNzYsQhWZJMB+cyA0dkhbpj68PCfsgy+M6MBjNDN006sN2oorGT9tG+oklz70GxlXQWUjufqClzJwsstZAjbnSfdXfbzko1IRlv+HuWYQlKAVdm5sGHP+7d9QI/o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780080154; c=relaxed/simple;
	bh=ws23j7kzhGx5Th0vdHlc5X1lqCSFtnD77lvzX86r70o=;
	h=To:Subject:From:Message-Id:Date; b=B1xYIdWoz2zU+7Pfe95XpZxMioCcGynY72MvLr+utsAEECchOZCzXulNIj5TCeOri6OU4zfyNZwh8EHBu4S1TRnbM5qumJUlrgEg6ThzugJTjmakFa4CUsYstPUd0BFeAhrcXjfXNqonQ/zwdAWxbXJhtPy70TdfQbJBVYjdoFw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bDX6nd4c; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bDX6nd4c"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C923BC2BCB3
	for <ddprobe@lists.linux.dev>; Fri, 29 May 2026 18:42:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780080153;
	bh=ws23j7kzhGx5Th0vdHlc5X1lqCSFtnD77lvzX86r70o=;
	h=To:Subject:From:Date:From;
	b=bDX6nd4cKa0lnCBIbpQw6NKBaCl+ubOT6Ey5ZXNekd/HC9wZHltPKlBgat6DF/2tU
	 uUDYfDe3i9fOTaMtv78WwN4KZv1ECCD5kFiSo9mRRwILnxswjrCrsN1iHGNE/Ak01l
	 uyyh1A1RJevSJ8trPXlifxp2ssINRoJZ34MlKhxN/B0KdBl1CR7tZqP3yi5jrSgkZ3
	 +aLsSzECRXw9lve9Tt+y45OY7YM/YzJioyG730H0XXy2u8LHRxm4y76mX/CTH2lXIt
	 pmMvZxMk+krcWlOrKoytW/u0yac1UsW26Hjs8ZjR3NNQl839fjMznsSiu3Uar2MKkB
	 J2kGMKdK+eUUw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFF42CD4F54
	for <ddprobe@lists.linux.dev>; Fri, 29 May 2026 18:42:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178008015371.17590.4680219921387665397.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6531a955d350fe47cf847a64ad5c58c4f2fc4db576aef888b12d35e690ab63d6
Date: Fri, 29 May 2026 18:42:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780080153
