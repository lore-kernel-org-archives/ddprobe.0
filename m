Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 67ECCB669
	for <ddprobe@lists.linux.dev>; Sat, 20 Apr 2024 14:10:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713622223; cv=none; b=bBElEDiF6YHmWcuXpwpErGGR6NdBetYrKHX4n37MtblgezgNwhcEQud5S76YH08a23gq4lWBKAZ2m3YOrttCALnkr3bD/0aFVfcGcAQ9G0VpzDB2aT2CmLhjYQpNKkX9OtmzyJ5wn0A01lw0sOC+JPzlwFi6DGcIWeJLe5gCKSs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713622223; c=relaxed/simple;
	bh=RnWvremd8SLAGhbMmWWNL0jPtayKHVqAAdO3GYqAlhs=;
	h=To:Subject:From:Message-Id:Date; b=Sk8Zq92J4fOPJyiA4gc3+85buMLePWZ6JDo0EavfqM0HmbNeLxRiCGe0tQclzRxFvEDvSHRjaASRHYvkUtdF+5+C+4WnYm4mTcRCDqGPezBpXtS+hNCfe6NxErMwemZJGhceN65st4DbZXSdRlg91RHildpGTsLSmcjMcJONzng=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jE2kIiqj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jE2kIiqj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DDD6FC072AA
	for <ddprobe@lists.linux.dev>; Sat, 20 Apr 2024 14:10:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713622222;
	bh=RnWvremd8SLAGhbMmWWNL0jPtayKHVqAAdO3GYqAlhs=;
	h=To:Subject:From:Date:From;
	b=jE2kIiqjgg43jO+yX8ShwCRpSZANVLRTp0+WjG6T125sGMN2kdbLpQHU4tdrZfnA5
	 crUO9SM5a1ve+Xy03QiitNuzIAzR5EzNnC5n66NiFPWb9jkT9NOOBcFgX3qhUd6l1D
	 mMaRvcQpRDUeLZVT5p3e2+RFfSro4lQWuuCB0lSC3HuqDVbbssHov1aszu833R/qMB
	 ZvrVRN802mC1R+UTLm7uIWgd15UF6mDfagqZQwBBrkR4U+MLx9cAuIBFAap9KTRLTh
	 5dEhUKfonDTfa2l9PnKyidY7JNORFEowaRI8zambbe0p5jxSjeCIaRHJXehe1u2XPi
	 +zHA8C1Q5rddg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C019CC4345F
	for <ddprobe@lists.linux.dev>; Sat, 20 Apr 2024 14:10:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171362222276.27915.6795350414711635288.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 992f3fa50deab79dfc1414a32b4a63548ad48151cde6980221e23714f8fcdefd
Date: Sat, 20 Apr 2024 14:10:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713622222
