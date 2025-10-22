Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2033827456
	for <ddprobe@lists.linux.dev>; Wed, 22 Oct 2025 13:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761138594; cv=none; b=bXAKKujWZmc4xb88eaFKHqcR933j5+YVBR4rHna9aE2W0aHXVyh3w9YzCB1eFfUdhZsyxxSwgPijYvcO2KDTezM6NwcxjvY0V0a+a9cTkHi3eSRyw51VQhBkIXsEgUOR4apcWjkU7BbndxNOBAZ8Y/W55XMH8v1Ab+X58UZBwns=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761138594; c=relaxed/simple;
	bh=Rjc7ME/KTSAMSHF2ju84RYglIerrR3dnlJoyg95AutA=;
	h=To:Subject:From:Message-Id:Date; b=VW+uMpw3E/CNS480BaUCb5Al12MhQKI35rtOsgwDOOUx/5aK+ar9iGAev693INL2hXjgtDfxlqCiajEwFuyEzh01wv3FtvgRkpGNltOg06wwVaujhER5+UHlQdQRDfSCQXcwDYB1OZerGoyFujilX+EvXv8YCS9ukr7Z1PNMg+o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mvtuUt4z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mvtuUt4z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A96E0C4CEF5
	for <ddprobe@lists.linux.dev>; Wed, 22 Oct 2025 13:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761138593;
	bh=Rjc7ME/KTSAMSHF2ju84RYglIerrR3dnlJoyg95AutA=;
	h=To:Subject:From:Date:From;
	b=mvtuUt4z9WB1uWI6TtdTMW93m2ihmWg3hjop2V8jT3vK+94ss5iGlgZsJxN3c4kVc
	 d3Ij0D1sH3R9+JnSFpv+b8wewRJ2eBVeQntfz+zQWVcoaHEs4PlVFYavd4iF5AwEnd
	 RI5HPKLPlwRhQwLXirpoI/uvAQucEJapt1x8Tw+WvN+75kAW617hEpynHN03Oz23A7
	 NVns4icbFjvjPrMOSLNxsER5PO3CPiAGbNqxeg2s4XNSUCCWlXQENw3hhe3NnofdFJ
	 KXJ2JiDRqCZ65hffwSEje4KVBE4rUFIOI6Ba7Dc86BDZbbAqdyEARFo8mNmAomF35a
	 MON6NAa+mSxig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93998CCD1AB
	for <ddprobe@lists.linux.dev>; Wed, 22 Oct 2025 13:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176113859358.19739.5187596470006779039.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 438e2ccffb0c451d20e9bbe84e7068596e4fec36b9a2fa4108cc4800a8beb6d8
Date: Wed, 22 Oct 2025 13:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761138593
