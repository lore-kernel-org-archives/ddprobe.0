Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 103AD20C47C
	for <ddprobe@lists.linux.dev>; Wed, 10 Sep 2025 01:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757468395; cv=none; b=pwUKae0MfEuzB/pUNLV4o9sDWBYLOgh8yvFOyx2av6CszsDObhV3XGQXYfZH2aEOQDQ8laUIQLJHNb9dLHfoP/6FHadfDav36UQ7C7qkQ0JvMdNhI2ihFAEuKEuUXCjWBxVbdL1MCLLlpf9Z6rQwaZBAxXeeRBOW/MyiasRdT/E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757468395; c=relaxed/simple;
	bh=H0SPXwwatIV44q0ozrSAYoaFrus4NwjYUeG3XL0d1+4=;
	h=To:Subject:From:Message-Id:Date; b=QgakYnUlojCHQcAFlgiHeyoByfqUmC0zw4F6ZtSt4OIH+hHG1Dnhc1uUYva6z5HEE9CtR7ehJ7M7bjp9hOKe3vTOqMEhMkbEQ86Jl8VgfdJdkIk0bZQLzyk61iecCOzJV/WDeVrvuQSGxIfh7T1f5fc4Kgw2xAgC6T0kicbOSnA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=a/nN/ImS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="a/nN/ImS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1908C4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 10 Sep 2025 01:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757468393;
	bh=H0SPXwwatIV44q0ozrSAYoaFrus4NwjYUeG3XL0d1+4=;
	h=To:Subject:From:Date:From;
	b=a/nN/ImSMhkfhgIKysSqaPINQiaZg3QBnRK7C/s9xjsBTy2bxJRPSXObIn6+lVbiD
	 yC9qzqIUikd+vj9m2eDnV3xJPhSI+CUbi+3tGOt2IfMkIMpUzgpCk3GnyLzwOExrqD
	 8oHzm9qn536hfXsQgXjI3en0Q05ik+hhtl4HdhL1+SeQFn155KYZ24owIkkrmeNP/G
	 8znB1UE/m56Xckh2AEbon0HMVqYPAQZy8gjRreLUwOKS2PxCcEhHA18jSgbT4vCsBM
	 hJqvdAMPuJkqk7veslfTAlbSMa2vBh5TWqgEbGKVQUcHVRveC0/O+Ib9a1zqt5FNG7
	 KxZmsbZ5FB+wg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F272CAC582
	for <ddprobe@lists.linux.dev>; Wed, 10 Sep 2025 01:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175746839357.16740.10208601445427237366.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 937025302475d2bcc3dbf05f2ecdfe07cdefd557461966cbe69ca27adf915147
Date: Wed, 10 Sep 2025 01:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757468393
