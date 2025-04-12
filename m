Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DE9719F12A
	for <ddprobe@lists.linux.dev>; Sat, 12 Apr 2025 11:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744456794; cv=none; b=kTOxH4OCU5lBh7MSeDLz5HbBflvNo+IkwpM9KL5qy5SlJwmU+CVs4K6Kr8F8RmA04b9IeZc/ZOFaR9qnXNrYKogtJVdNQVwas3J0XBmctECMzl0hJJ63cnB3kQ1bCnV3INLS1b5euxta6qFW8t2DEMEpNfdEpfmg1suVHxzGnLY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744456794; c=relaxed/simple;
	bh=r4wSlBgMi1dgj4nW4zxv7220sGQSS8/nnDRsNNj0aik=;
	h=To:Subject:From:Message-Id:Date; b=pfILsWPen45w/JYHPy6xM623IBj/nMQFWSNfHz0Wpc7rMPldpEcp3TpgJMwTlsKiIN2yfHlPxG6+XBufzTnE8WE13MYSDvk12RNXhbHAZOGzKTuqym52/AaSfNwS+No8z0l4v/vsPggajcqKPOE0CAng7wVw0SufePa69D7j/9g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=d8bLnmju; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="d8bLnmju"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAC78C4CEE3
	for <ddprobe@lists.linux.dev>; Sat, 12 Apr 2025 11:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744456793;
	bh=r4wSlBgMi1dgj4nW4zxv7220sGQSS8/nnDRsNNj0aik=;
	h=To:Subject:From:Date:From;
	b=d8bLnmjuOnGsrtNocEJIMLt+6JKPSTpor53d+o7hZLpTq5pzc3riR6nfXYhEeai4p
	 GmUpHHL9MUXTwxirBx4lOutSbmbdGHUrvoJoQXx4/OHyyS3xDc9bQcuRpg/SemXIyW
	 ECg/m4YhcbQt4r3lj6soW0Xoa+RzlffUA6+A998Jym6mHxOQiSMTIVovOrc0qgYBgu
	 +GmCOBsE5xwGeh32GqsDQcsttcKkwDUhrdGpjIrwdFd69WnkMzuwcvj+4eMDPVh5vI
	 Rhktn0AVqjgfKB2IiJmIMuacKLb3Z4DeYwxSfn2WnTQS+RdkTjhJBuuD2KPD5Oiykn
	 zkbOj/8F07b0w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A793C369A1
	for <ddprobe@lists.linux.dev>; Sat, 12 Apr 2025 11:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174445679362.19540.10222178248185640153.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 786df3ca9cee8e71c7b900ce52af8f40bbfc656bead53b19de74facaf298389b
Date: Sat, 12 Apr 2025 11:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744456793
