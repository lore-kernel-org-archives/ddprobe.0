Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 395812528EA
	for <ddprobe@lists.linux.dev>; Fri, 18 Apr 2025 10:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744971594; cv=none; b=pOPhBs1PNVgje/siVuP35DK4Y+OxofJitwoMHlimL8ECIGnBTd6VV3rnukY46GDI3ymLqU1EK2l6vduMLghlRDT1whMqs8yvvtQZrUO0jDuirYByCWJwfCMYbS8qYdNlEhsgaGmGx7ZH7z+SXj9I23AA8tdJIyT3IXRvQGKCyMs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744971594; c=relaxed/simple;
	bh=MiJv9biGr20+j6eoYYV051Q1gfSNFFBMF5nMTLNLOBM=;
	h=To:Subject:From:Message-Id:Date; b=YN16lHdTkfTN42lXtGRhu3eqJFTyrxucztzy+pKDu0RXi6KxE9UT0zCD6XmoQAJMb2unaVixKrfFil80hHfZYrCGzlCGJ/mdYSFVq3K1ywNYdYmGylkDOKTtH2ib073iqFNaix2PI53fdLFQwa0a1/T2exjSOqNnCloMcDe+h5Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=P8CJ8IwQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="P8CJ8IwQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1BB4C4CEE2
	for <ddprobe@lists.linux.dev>; Fri, 18 Apr 2025 10:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744971593;
	bh=MiJv9biGr20+j6eoYYV051Q1gfSNFFBMF5nMTLNLOBM=;
	h=To:Subject:From:Date:From;
	b=P8CJ8IwQBM+Dwd+3y4gMIORgYcMziqRbxm1XneCzEF0U3jmem6uEcXQQLivQiDfuu
	 mUJ9PXe0P+iw5PZcvUhH+g4o9ezy6fkoS4oYW3bGCMQq47SagFGEuZF5+nuOkCF7Cn
	 TnAdw+B92bpwdAudr+oyYdMAH1l6oNDcosK2+ist7E2yBds//3q2jcB+Yihma40Mb7
	 Kp005YHYltQhUl6dz8qaqgubojC74+NR9RoDr+Cd8e3lMBq/vzDyNVt7ozwyhsM4gf
	 +i4B5QuILaovkBDDnYBnGQ1QjidVL764CrHWx/QnVhsL+NGFtbh/CRIGuievaIK9Nr
	 MhPSFVh1gK29g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97960C369AB
	for <ddprobe@lists.linux.dev>; Fri, 18 Apr 2025 10:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174497159360.8429.10443231263222771730.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 91bf7135785ece6768b163e1c9b0634bd9c26dd78d5f16164918653af2347af2
Date: Fri, 18 Apr 2025 10:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744971593
