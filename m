Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 13CC319EEC2
	for <ddprobe@lists.linux.dev>; Sun,  8 Jun 2025 13:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749388194; cv=none; b=Ha0Bymc3qStEB8CTG1F5+gjhz2grHZwuKOZRZb6QHttdnDU2HIgxgxUOwJDo88hoMsC6EytfPh7VfKC2ywhGCh0KYQp7ubUBydpuFaySiXYIjC17VahaYvYdGMreBkCShfLkZxO30jqaQACHDS8YEhhKY644Pp4aqBaMSntadKg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749388194; c=relaxed/simple;
	bh=5wd/g5yHzRXxKZ6UWK6iDRq8Utz1OQEBU26RB+jgiuA=;
	h=To:Subject:From:Message-Id:Date; b=olv53bJV+D7rfFYPDdz+cwHMyh/3t6RIxPYznt2DT84IA++xoHdI2sNqvJgtD8YUPJxxGa4Q2eMTD+s4ooMaU8lpGcXIQDWlU71CsiLMwywrtzINgWb19DOn6A/XVn7WiB9L5oVfLXQ6DZFW75DRr8seOlV+Ti55uAgDuIHl2a0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=J3NtKLYC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="J3NtKLYC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2625C4CEEE
	for <ddprobe@lists.linux.dev>; Sun,  8 Jun 2025 13:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749388193;
	bh=5wd/g5yHzRXxKZ6UWK6iDRq8Utz1OQEBU26RB+jgiuA=;
	h=To:Subject:From:Date:From;
	b=J3NtKLYCIoPXc5WDzE3Rnx8FhRHdEF8E15l+r7G+RwkXKLpPxm7/aAaH8SVEudG4y
	 +IouwBYlGY0EdESijjacOxjba/vkyuGbfnlsvIdF5+T06wRyimDW90rl1wdEsDlhFw
	 QJ31HDBdDHacC/3rBFih9rwV0aYT9QWoMGRy6o3xJYq7GX6wlqCiHIN220q/KDYt/s
	 olPahF8AJH8aR+Y2kl5XDfRHAHHOzBM5+W5qpiQNXuzBdYeWhGGFcRdZhldn4N0kHc
	 R5UFkQ2GccUt47lcDS14szbdJ8CXMApEyK4G+aOjzba89XBWFfdjlHtiCJpUc3MT7T
	 QISjj1Yg6IJOw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E4BBC5AD49
	for <ddprobe@lists.linux.dev>; Sun,  8 Jun 2025 13:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174938819357.5831.14805087057372530473.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5b40c352c7ffed4201758d777ceb69357368b7c17148e0059869e322f46c583e
Date: Sun, 08 Jun 2025 13:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749388193
