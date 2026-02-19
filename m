Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DF6538D
	for <ddprobe@lists.linux.dev>; Thu, 19 Feb 2026 18:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771525494; cv=none; b=sCMQcosyUFFmhiXmRs4nK0rzXCejyrE9Y6Xc/NDuYqDdKeC0lRSxIK+26ZktFdsT7iug3RahwYJVArGhlCy+xlnjL//msrQy3uMs/qTh7cJFbKQFddFdA57pEGxtp4oDgbSmluWJ86x9ruGDVvY7PZDPb3aHKP3VozZF2DgAM2c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771525494; c=relaxed/simple;
	bh=KNfEbgOhWLCDZyL80EmnhTGNGN8EHNjPS2LKU/efB4Q=;
	h=To:Subject:From:Message-Id:Date; b=VGx1TbiGWYXgICTI0h8JXaVsHgaXQZn5j47dbmX9T9id4uBLNSL+b0pH9xTi/hrGG4zp9DRFr6PqTPwcVQl+chaqWHzzlNkXbeOtg34pL1qc+M8S0PjxY/HieWjllACCIO7oR6bnI8mCCj/jyIdVmCfIPqmx3gwsDeS7Wk/KyeU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=K+TldNz+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="K+TldNz+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7C3CC4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 19 Feb 2026 18:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771525493;
	bh=KNfEbgOhWLCDZyL80EmnhTGNGN8EHNjPS2LKU/efB4Q=;
	h=To:Subject:From:Date:From;
	b=K+TldNz+iqZupfWtYgWA6SWk+Yjt9xhlkStuuwgBLwQ/1FauwlD/GwRM7iECXICi2
	 ypNxs3h2lSMQV7Br464X5ef4Wig8vGfayqiuA6fBRdM+mr3GHV4sBRX1y8Kc8sv1tO
	 0e+/6SFAeb/Kp093bg3z7r1J1qYNF1yRUkNMPBvVx8lVrQ6fl2BOv5KnqdyeeBbcg6
	 L0/Xbkw+BGPUAV1LWrPj3hGXoAisyXoVGCvNXeaEgOwEm5zwThG7i7f58NGWrpX5id
	 /sfVaUgYH5JGCynjLyfDk3AshwbUMoh/6WY9+7QQVEiFp2EWhmuh1v8e9Bc3RxOzgp
	 UqdIRiuNszIKA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 953DAE9A057
	for <ddprobe@lists.linux.dev>; Thu, 19 Feb 2026 18:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177152549358.1581.14652503725271098421.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 248e5335ebdebd757d9033c051035f3fcdbaa9bfcafd53eea41c01b5b0ba2280
Date: Thu, 19 Feb 2026 18:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771525493
