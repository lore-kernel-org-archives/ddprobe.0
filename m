Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 029AE1E5B63
	for <ddprobe@lists.linux.dev>; Thu, 29 Jan 2026 04:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769662434; cv=none; b=BVmGIBVhjM+Wfk6QhUPp07f5RxF28GwIxCiHGlyG997UZxzBWOHAL7Q1REAzbessoNnUjY7g9SEZhLbTkzJzMMhd4LBr62BvLw0quSvZoj5c1Z4d8VXPNOci4wosLTsEt1g+lpYNmP5pn3w4C65w1fTLWGDwp/VHis/yCg1QruI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769662434; c=relaxed/simple;
	bh=9Foubwzj25RSWt10VRF4vfWG56lQTgQoEx4U1CXjcyw=;
	h=To:Subject:From:Message-Id:Date; b=YaewgwZD7WTpVlLhSdbyaGTBg+3oHtpvbZfO0x2uouT849zPvCbS1yZE9yQCaTl0NpSxexhg2nCrLQ3G1iBSQOUZUGchPCcCZ9CnwU9Wu34uApqbMJ4M5F1yqEjetAkKChmInjQthjjcc1ptoixozbIwOTj6wc8dM1b4Jqkev98=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=W4ljuuVt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="W4ljuuVt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A168CC116D0
	for <ddprobe@lists.linux.dev>; Thu, 29 Jan 2026 04:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769662433;
	bh=9Foubwzj25RSWt10VRF4vfWG56lQTgQoEx4U1CXjcyw=;
	h=To:Subject:From:Date:From;
	b=W4ljuuVtTXgy4IuPk7sRmUrTjSY6PGVb+wOOCnYVWiMVlutFHK5MuBLJME9Pd5HBV
	 XtT9cYqQEfNka2AIqHHqMlajC+i0RYlkr9g/PH5DL+j+F9HDIvvJJnWocUsyyVJi07
	 l9ryEFXPUF5iYbgtIGloybJNCJcahE1CKMdSdFSMENZR1b3k4ocxqoNg05rs9q5rhq
	 ZBHoc2BlzqTYM1N+FdHRDCyp09o5pi2isoH/rLKkW0+WoIjsLYGJ6PfoM5R7OrAz5E
	 SSkNf9BjEwdmogHos20zOFQiX923WvY8uqy1I5Gyks7vr31/e1if78tsJT8AE10PdR
	 eF/WQaRTTqs1A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9123BD3569F
	for <ddprobe@lists.linux.dev>; Thu, 29 Jan 2026 04:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176966243358.4267.7817378812768708134.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eeda5a4c1ac7dd946dbb6511c800f0794c6f565fdc6585d02fab96d35aa9415a
Date: Thu, 29 Jan 2026 04:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769662433
