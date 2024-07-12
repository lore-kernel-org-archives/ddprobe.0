Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5EB64154BE8
	for <ddprobe@lists.linux.dev>; Fri, 12 Jul 2024 12:08:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720786103; cv=none; b=bxG0H62NFQAbxGqIzjiIf01aF2bDYYuru7LsG/P2IqKUfMicL8aOINkj9DIn//QgXnFCDpgDLuG4MGXYu3nv1N6cYFdlt+GAAshkawOt4OMpYRp0hnp8FW/B2KFpogz+YMrS5T7wD/0MRsKISmR72Zth76WdKKJKaqhsGQxuvOc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720786103; c=relaxed/simple;
	bh=ioObGvChyFoqhCiL5nUyPLMrPrY3dstfEFhED4F56Tk=;
	h=To:Subject:From:Message-Id:Date; b=oOOFBhXQJ6dxY4vH5LBMaUBIjsreAQ/LfvmPYDMFyNxzac9odsEyAJokZBWGFUr6QGzsWuJ94psB6mshW18jNkbB9viKyE9E+Y11LTMUXPCMD4M6d/MN2UQpykD/OPuRnf0Zv9aHJtMAQT5yXgxxufsRTmhqlwf6/2xBxJlPGRE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ElI+B6WV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ElI+B6WV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DEA22C32782
	for <ddprobe@lists.linux.dev>; Fri, 12 Jul 2024 12:08:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720786102;
	bh=ioObGvChyFoqhCiL5nUyPLMrPrY3dstfEFhED4F56Tk=;
	h=To:Subject:From:Date:From;
	b=ElI+B6WVbIzzWuKW9uEG9Xjrua+f5Kc528UyaxIqaMZVXf2ixBQE7y/I1kMa5Qt6L
	 hOO6TJq2OXJc6AFJ3Jraqhgq19LbqjzC7+nKdWGObRQjZpwFy2brtV9UJCIyACXZXm
	 FXbVCCd4YgeZZq9HiSpXZOlEpvkpp/SusxDoHmA7eN7DfkwQOaOhwyZbrVjCT8jV1c
	 gHi+Oex7LqpzNN317vnU02JOqfotRrDXQ7fUXLC3nRLsDMF883ukKXKfPxD85WYP3P
	 7dbDAcmfRDH+KsGsbweKbUY3fRCZe+l3aS1+Tpvq5lOAy4CtDzA7KVupkc3y0f06kc
	 ZZpU+F4DqU1Dw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CD0CFC2BD09
	for <ddprobe@lists.linux.dev>; Fri, 12 Jul 2024 12:08:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172078610283.9914.13341966245904594672.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0f0526b0a3e43cf0851bd7935f3e58d19edfaf0656124632aacb264a0487059b
Date: Fri, 12 Jul 2024 12:08:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720786102
