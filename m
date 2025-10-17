Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 234E321B9F6
	for <ddprobe@lists.linux.dev>; Fri, 17 Oct 2025 05:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760678394; cv=none; b=GyAm1Wlk+SerlgrWd3qOlbNRdKZJBYFbhPBRzIHVEvdx1CLavFmmez74vm7AfwVfHSRXRGbzMBIJ75L1B6za8eCOqMFsFnjuvawR4FRf6fBzaE2X4Mk7vIO5iosPvnzYLRvKZ/+7c0koPg/UixXT4vM+dNZJIWBS1BXXPtMI/M8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760678394; c=relaxed/simple;
	bh=rlI0ekYL06YiyY5QRfaeRZ8yYaBCGg3cJidszoA1JR0=;
	h=To:Subject:From:Message-Id:Date; b=PETRdqvjqyIEACPmDVo5xj+ad+e2FujLWct+7icUUfpNFZg60vhzjTb3N8Rxww7QbBLPqocwM6MVbRfNAPCuyaTjnRtn8yhje1dKCKx9dYgNfOnbc5MQZKK29c2XII9maPjUt3zYzuIDlU8/tPSsdtvbiC1tp+cqpCuvEAj//No=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AyctPh0z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AyctPh0z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0C5AC4CEE7
	for <ddprobe@lists.linux.dev>; Fri, 17 Oct 2025 05:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760678393;
	bh=rlI0ekYL06YiyY5QRfaeRZ8yYaBCGg3cJidszoA1JR0=;
	h=To:Subject:From:Date:From;
	b=AyctPh0znT0XIkftrEVMb0fJwBJNj2/XPWGIzJ0jK8gXSXMOG8fRnbkhnZg/GU2BP
	 xC6K3F0Y0S+6KtKj7J+lGbEOy+TsHCwJp4BPpKK/g9whl5TmnRglBFmd1hRQ2qsFH7
	 vQ6yg6FfOsQFufqsdhFpYTz+VF/DvKMmxcT43GAkVEwuH+YrQEt/S3cjPl84paePwJ
	 b3Ste9nexi+6LuwWdhiMkZSVOQ4a4evZrhs4hVzRVcSA34i/bb2tBitOVk0xlDXTRU
	 V4ZU2THW52fxKpwSfbWcDIF7wHSUYJEHKPqaz1j1WrbGmySuHVWqskph8Qmz31nmDi
	 MPec6ISJ6FVyQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F590CCD199
	for <ddprobe@lists.linux.dev>; Fri, 17 Oct 2025 05:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176067839357.29319.583560546867450383.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f0bb23a554001a0f9c287f4f207cdee321e8c516fc5f2f33c33310c85558ad39
Date: Fri, 17 Oct 2025 05:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760678393
