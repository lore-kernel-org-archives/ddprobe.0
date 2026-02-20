Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20F4E38FA3
	for <ddprobe@lists.linux.dev>; Fri, 20 Feb 2026 21:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771621494; cv=none; b=btWNS73L/h172FN+gPYA7u+OrWRs2OR/HGE+dqpr5FVt64dMGwLnJ4TLSM9dnQ1K6LsjSyktyAGlCGP59v425ww5JUGVYEEpymg3B8LrxAFGxIDNkNuNnZAf8WqwlT+DVY/iaI+Q/OC5SG1S/De8VyIcy1KDleh00BcEbuqP98w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771621494; c=relaxed/simple;
	bh=32C/+ndfpkwSQwaMG26lY8AW4Ca0BLtycyu3YUvec8E=;
	h=To:Subject:From:Message-Id:Date; b=Yt6Qx8orMihCdQhZ0mTa1JDDeAjvL/uMRpeAtM64tWfx221p+wz29/pZPf6BKVMbtA8KYzslj1Fz1sn/YvC1+w3A//4SkozF8WNme2wZ9DaY4+OQj/D15IukKl08PEkCwUAiVDWpvsm/WJtl7k8RzpedWo5DlQ/ElS1j6CC5yRw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rgJjlyIK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rgJjlyIK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BBFC1C19421
	for <ddprobe@lists.linux.dev>; Fri, 20 Feb 2026 21:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771621493;
	bh=32C/+ndfpkwSQwaMG26lY8AW4Ca0BLtycyu3YUvec8E=;
	h=To:Subject:From:Date:From;
	b=rgJjlyIK5bbUlJ2JawoC9GLhATV9uLZwKiIeiWAM2ygh/WqV3FWPTq/kk9tBnuSV0
	 xDP0Roec5PCNTQ/ohuCXnaUKogNcmJUluWIBkgPAD0SNXwYyLLKMCxBOgg1Kw41niJ
	 dFCwGn/II/ARXZy7q3umCu1YuRadxL56HhJpvtbFvLSGFgmjZFNcosBFBVvrDL7xxA
	 bwaxKOzZ8DK7Vl6HWkb8S6xTzJeULiEi+Wt4fryeS+j2OXywSG1wtCLOY8LS8KLe1K
	 hVYCQRuDRNg7VyA1nkNYQPM1fXLTZDHL/FrI/xXveZxmBdKYGD0eWul0CiEZKjKKMe
	 yi9ixTU89H6YQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C607C5B55D
	for <ddprobe@lists.linux.dev>; Fri, 20 Feb 2026 21:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177162149362.4391.2065839458686364181.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 305e8d0ab5303bdc107b265cf06f641abf3b22da8585506360dfe619ff8412f4
Date: Fri, 20 Feb 2026 21:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771621493
