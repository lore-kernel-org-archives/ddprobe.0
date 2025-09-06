Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18FB8239591
	for <ddprobe@lists.linux.dev>; Sat,  6 Sep 2025 10:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757155194; cv=none; b=Gd1o7X5Ji+XcKF8NpL34BJiv7yXGaRmXDv7wYJ0xDV4wtWt5+uRgRmkZvYuNSgVlFIkPoEXVLTwrGxqRQoCB9bWviSF6FUzYmoykMlVaARi2CgS2izBLAryoGmMCm3W8VtLAnKMi0DWYX5jS6pPOPTApBjNDK7Mnx/p98dqqRjw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757155194; c=relaxed/simple;
	bh=Gsv9ECPGAVRhNlZrcggThDri3igNnlVDv4rbgyr1SUI=;
	h=To:Subject:From:Message-Id:Date; b=IuLAL2nr2f4hL3JHhRNWtFISRhVFL53t39N9AaGfd0Lk+SnSW11sFLYJ4ldmNYWf4Lx8u+9+zzz9vYSGBqwGAvGMfOhhVzwPO7SzlRl1PfV5vAHiDB8vm/Db6e9o1bvRtDuKy2YmSx56NQxr2i5AhTzg/0yFcYvKrfjA0ivhHC8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hHV/aC5L; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hHV/aC5L"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8508C4CEE7
	for <ddprobe@lists.linux.dev>; Sat,  6 Sep 2025 10:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757155193;
	bh=Gsv9ECPGAVRhNlZrcggThDri3igNnlVDv4rbgyr1SUI=;
	h=To:Subject:From:Date:From;
	b=hHV/aC5LEIkmSxjCrNiKmMXO5exhHWSPicBOVxE29lRB/lRjPGtZp3aQSVxbszPqV
	 /UEQmFykAhKrW5xuv/9/VAyOnWXvl5+f/SadeCDk7x9CVT1lMgS3iZVOevZSrdhtoL
	 l21ELquheqeuCmLWxxSKXeDNzcwOXDbcO9yz4dxi0YWrLYCleHL0sYJsjxdBmJfIOD
	 o1i3uCh4emSJzvbYlPhgPJcTVD1suCoVVJH+86C5iX8aYPCE0plQugHCN22GwCZK0l
	 MRh1KC/cx6gLaNzUE2hDeMqm0Qzzihq76CqA40vEjOXF6uezMNNBvc6w/wjl/tns2n
	 6koYkMKHZC3OQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96E3CCA1002
	for <ddprobe@lists.linux.dev>; Sat,  6 Sep 2025 10:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175715519359.9056.17395429443053833523.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e5847845144aff75e242e464b51ce7d956b652fcf2c88f7f7fa173cd10d9cb2b
Date: Sat, 06 Sep 2025 10:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757155193
