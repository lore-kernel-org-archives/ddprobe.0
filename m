Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 561172D3720
	for <ddprobe@lists.linux.dev>; Wed,  2 Jul 2025 15:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751468994; cv=none; b=pNxUFCfgyDiQ+g8GqgL0TUMxFtPu0Ob6WoBCRfnFN1zI17fiTU+TNFd3/pCEy3bON2HhI3sLKgjcEyrziQ42yZeLk0o/2Yfi+cmC/iM1pF4c+sTaJmrdbTzHLzsAOxcPqEo4KeOJQ5mQBv0CyFKSbxwjlgTXAQZ8btVac1M+QHw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751468994; c=relaxed/simple;
	bh=zTlOAdFIgvVL2FIvvp/FB+UcZ1pAmQPjjrhNKTvFAv0=;
	h=To:Subject:From:Message-Id:Date; b=LIulEPWtks0vXt9Cc0F3qla9zQqj3T56GNLElgoK5c9/M+h+aXLZHwVRFfq92eoxw+ACsuUD3ZCJXZofxz1WpZmuShzxUcQ1phwK9XnhIU0Pxm9yFvrDu3MwV1qqKBoezK63Kcqx3fFmEW7BHSI+BWSPvIyG7s9VUYGKcL4KQZ8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=n/GEQbpl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="n/GEQbpl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0B98C4CEE7
	for <ddprobe@lists.linux.dev>; Wed,  2 Jul 2025 15:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751468993;
	bh=zTlOAdFIgvVL2FIvvp/FB+UcZ1pAmQPjjrhNKTvFAv0=;
	h=To:Subject:From:Date:From;
	b=n/GEQbpln7a5FRL6kxuWvduGTRipm+iJrmULJSCMokvaJVUhTVJ2icpuV3Jd3BHAL
	 a4FhM5UDDz3fJO0xgW3SzGUP2v6Z6/AB+BQAo/i9gcHoU8bfgp/zXrboe7JeFSeh8g
	 RLMvrQTnWEHJZ/9hI8gYjihQi1jUizesXNHB/Yxj/WNWb2qG7FOBxEJRpN+uJ8Bf+I
	 pSVQSsCCXMEo+YSzjZfo0fGdrYM9+UW/ij7/bnJXDZOdR+/By3qgJZ9kSL4M3WpEzw
	 IGmHG3JuxadYL+QGDgwxNeqx5yC8x9aAkxmS3ziik5BoTYhCk1NS0CPBoT0pp0CvB4
	 gRl3QxPPlmmew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90313C83F04
	for <ddprobe@lists.linux.dev>; Wed,  2 Jul 2025 15:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175146899358.26103.13165657711357105873.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2d7b213fc77c35deffe7919040d69272af89f063cb70cb0e15c53fd8ead60623
Date: Wed, 02 Jul 2025 15:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751468993
