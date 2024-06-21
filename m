Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44F2226AD5
	for <ddprobe@lists.linux.dev>; Fri, 21 Jun 2024 06:42:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718952143; cv=none; b=AMQfX2n5MPH6ctxJf3bDywFgQMHEXkpomw8OZk8tF+oS0epIESTeO9kyllO6OwcheJPfcxgnxSJt/Dx0rMh+KaX7ba3gcLoHixV+uv1q35X01DKLMAHIjhlStx/+EBV0zDhz6KWYdeIiMzRY/Z3itaHvSWXIszDAAclG+lfPmMM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718952143; c=relaxed/simple;
	bh=TU90QaZ6oXvmvE9TbprWbuEumGcOdsGZNy3aFWRxzDU=;
	h=To:Subject:From:Message-Id:Date; b=m2GrAwaLrdxksoWxpthINBbgc91ccLLE1eV3SmpvrTM9YDYIrk0vlPbeNTPmzuCTvxMf2Oww2+jk2MRTNUiBZtG31jTWeNg/nd4VNjb9HCCBwcHfv7cPXxXqgBrsd8C/HLxdMyFtRAV3XiSBvjTaat0HSYZmQrH3kM/JTLILrGE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=u9x3+cjj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="u9x3+cjj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8FE7C2BBFC
	for <ddprobe@lists.linux.dev>; Fri, 21 Jun 2024 06:42:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718952142;
	bh=TU90QaZ6oXvmvE9TbprWbuEumGcOdsGZNy3aFWRxzDU=;
	h=To:Subject:From:Date:From;
	b=u9x3+cjjt5ic9m0r9rAPTopI8CJPfROhJB3bVgxZWFVlVMe2GX2Q6XLFQfQbvrMAt
	 nntCQD3eSVb8/3VjeSuVNCWeG2oUPATmct62+fHKlmSzAgMsMHRjdYQsurAje2JqaH
	 +/CIAXb2MI8bvdJNSPozbs0ZLBTeP/RsZEcEZ1WhMTeje0B2MSD+7eOV8t4k6LWNAh
	 BROGU/l0GtVGBKUciUVrsLl4wUssc8veDm1qIklNYFqfCCsHilil8wRQpgFLxR3BIg
	 PmFf+/FVPbd6QfFfy1P2xC5Ga/0X863gWZk2XTnHvVPxJYKBZ5On5beRak5/1u/61g
	 NLu1F8VLG3trg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C613FC2BA1A
	for <ddprobe@lists.linux.dev>; Fri, 21 Jun 2024 06:42:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171895214280.15958.2700264232265399002.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 23de78e30f8bd1c1efb7f957212abd99ef502c94a76fbe4b68b41fd2d6249cff
Date: Fri, 21 Jun 2024 06:42:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718952142
