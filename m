Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 82604209674
	for <ddprobe@lists.linux.dev>; Wed, 12 Feb 2025 11:21:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739359315; cv=none; b=O26mNCRf0bJpvRKn1GiFT3XNFeXSbGVxLsvoAn2JGySFFby5H7bta9bIKXehpPraRAB3BTMUaE8/tnkf/Cmo8mP7qYu5SnmyuFdpjWVGMMWRm1LhOpokH9LD9d5ht0yX9JbMwiETIBYUGgaWsjbrulEtUCh5wLWGRk9PPOdyVhM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739359315; c=relaxed/simple;
	bh=92ZivS5UwXFCUZHMDPMBaED6dkcsHnYDuz/rgCBGcrA=;
	h=To:Subject:From:Message-Id:Date; b=Bh4oN1SPFzHNXPpT73zpczXw1nm7WAJnlTGAnZ/mugEs0Jcn73hxRmNrQOoyJDXzS7FuCQLPyDSoKKSR3sNB/Nu/3W8+PpKkVMxXlflD+XYJGQ+dqYXZ2mweoAhAO3s/mV04W93Vv8zGOnuGNQR8aTwmQ3LvZ6WAi5yUHAzAHSw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PA9obxM0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PA9obxM0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id F2574C4CEDF
	for <ddprobe@lists.linux.dev>; Wed, 12 Feb 2025 11:21:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739359315;
	bh=92ZivS5UwXFCUZHMDPMBaED6dkcsHnYDuz/rgCBGcrA=;
	h=To:Subject:From:Date:From;
	b=PA9obxM0wd0p8FAZLHOHebIIg7L1EPlGyD5kYFJkggEQBDbWm2YOVLJcqTptYB85Y
	 dzIzblb9Ht7tG3fBW1wZaVMdNLHo/UGOHtE+Nh+pZ22S45L+Uud0d5KTgQOKz0EWNB
	 QX343+W87V6vKvLwOpHpXkZBidQtxJO/pX/sMkyqdE4NyvV6QNXVSj6IOAGYintL0T
	 PMcQ9UUf86JVFs1QOWQMhpXWLNu01LwfY+fxcufQx0CXn3Vi8oA9dsTiG6RJRdNNvl
	 /45EIgL/US6QbgrqHMdbiGYo9ld5PtoDwnFKHV+mgEpV5kriy5Z3Y0P7o/tuxmmIxR
	 UP9gj7bWmQB4A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 71F57C02198
	for <ddprobe@lists.linux.dev>; Wed, 12 Feb 2025 11:21:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173935931423.22098.3370849915802868982.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d047a4a15b2bac7934e3745352de5f19d3403113bd99f0df90905fbb32db5a80
Date: Wed, 12 Feb 2025 11:21:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739359314
