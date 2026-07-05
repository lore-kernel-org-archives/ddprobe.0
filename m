Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4135412D1F1
	for <ddprobe@lists.linux.dev>; Sun,  5 Jul 2026 23:28:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783294114; cv=none; b=hZQlPR4er4CFILZvE+r2HtlbQYmjK7QnsJkOd8od7NJJ76CoBmPWfq25UUBTBxO2BtgfdTXj1Mh9I52zWU2iq6ura5JBwZgS9e7GCRqHVyWQysZBGld9UDLm4e9KEYzPntn1rYtxYi0Czknn6CD3w1JwdUk++0n729PNe3x2/GU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783294114; c=relaxed/simple;
	bh=LHmgjyDkO6ve1sL4JMPp+DW7oz/xJUH5BDGAhKRA150=;
	h=To:Subject:From:Message-Id:Date; b=rGZq7dCDNRZrxXBKBAOnqNwMdamX6lDzYxnd1oea+4Zw0xwuDaX5w2L9k8r6M0l+4kH40fWRBMk4FRSzYgCZAZB3Bd5VHfhsL2ICf1lZph53FzPk+SjfiAmfk2GBkaPybqYu+gWM9PobAc1Srs6T3h2kSlWHV2c2j1q6GoF4eiE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Q2d+IHiX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Q2d+IHiX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D53C3C2BCB8
	for <ddprobe@lists.linux.dev>; Sun,  5 Jul 2026 23:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783294113;
	bh=LHmgjyDkO6ve1sL4JMPp+DW7oz/xJUH5BDGAhKRA150=;
	h=To:Subject:From:Date:From;
	b=Q2d+IHiXfOVTQmVX4kwrc2u5rbykmKgPPmVoGSmXTzuc5yGPoFdS/o41K4WcZStnV
	 SveHaWNRQYIVEArRrxLSdUSrTfOr5ZKf+JH/TF/NiLVGH7g3y48Z8gDqcLRBjv1QSA
	 3LqBR/x5s8EMtEz9fQETcX3FsUNfvi5MlSCEKtgRa+frPe1UG4r3OlKIomjLdy10Cj
	 QkM1uHIzKud4I89x6Y+R+IyFdmhIYDJGbJqFDTGywVQz65itd7seh3k/m576OZ0+Pf
	 71PwRTGEdfTO62XjZLLsmgYs91spQKSLu0ivQu+RxQS7FcDY/qPqwGkh/0QA1Cr6JW
	 rYzKynI8eQ2TQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB503C43458
	for <ddprobe@lists.linux.dev>; Sun,  5 Jul 2026 23:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178329411368.19578.13481863833784445105.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 083ef1c68dfcf4ddc04f9bf2fb13723e85ceeefab8b733e1dcb483a8768b5112
Date: Sun, 05 Jul 2026 23:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783294113
