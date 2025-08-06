Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 144CC1D47B4
	for <ddprobe@lists.linux.dev>; Wed,  6 Aug 2025 18:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754503795; cv=none; b=L8nRmV2i57k5teeqPvshXH7cpw8DD6zbGYcVDbIO94RxO4RXtgIIs8UVJp0wZl23QiPoHLlLGzpH19p/jtY7rV+CgZppvpi70OgMJ6eckROOE7OeMlGWZ66fRVNTQ9LLBo7chb9TsDHPqvr7nvZSvd2mhxYYPJIx2i0plcnF/4M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754503795; c=relaxed/simple;
	bh=MCsRxl4pqDiVjrFvUNtIdiqoL9o1HQ8ZYj5WMeBiXmU=;
	h=To:Subject:From:Message-Id:Date; b=PAlOGyFR6yEJLY1BdFxXxB2MddTpvCJViU8GJ6iecpzH4aEUnZxRtDH+HzMUtS5cNcO9S9HFf9FQPCvE7AXjoxNZ3Ks+AvL/+G4jP4BYDRYrUua4RSuKF4vjb4F2XksZfBYxaAbQVU01SepR/2mm4dlKqzE/2xSRaxA2K3V6w0c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hj1qFsIK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hj1qFsIK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D6E5C4CEE7
	for <ddprobe@lists.linux.dev>; Wed,  6 Aug 2025 18:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754503793;
	bh=MCsRxl4pqDiVjrFvUNtIdiqoL9o1HQ8ZYj5WMeBiXmU=;
	h=To:Subject:From:Date:From;
	b=hj1qFsIKJkyEePDVfDqrnLOHQgd2RUVQE5YDz8hkQLl4tB4DDYb8UfQKdOpa8SLpZ
	 VLJyTa3SbRW3LBA2Nz4DSMufbEUjQnWakxD7PVKXbx3pL9k89VNCbq8zy1t6a4EESE
	 epC6mKx6BxxcJI/1hZW8SQyat2BJUNjDOVvu8fAIPMTBqcfHrm4Gy1g+L4EtIWGgL2
	 xiS2mXGN2UTtG9PmrSISL6ikMl5MpQGzo0jAn/qTEKpWfPXR2ykEH2T+qJ/dJIkOGh
	 619GBDMYNIJImptNsL6wcbLL9pb2PQewoKn4JMJOtg+t9Bo8hgt+FTNOhAnHw+JCXf
	 C0irZltSe3XMQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F300C87FD3
	for <ddprobe@lists.linux.dev>; Wed,  6 Aug 2025 18:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175450379357.10433.15309301694128726910.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 178e7ee05a7a934badca548cdeaaa56e0d730e506cbce343fcee3b7954e5a728
Date: Wed, 06 Aug 2025 18:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754503793
