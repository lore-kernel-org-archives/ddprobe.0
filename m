Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 078F5153BCE
	for <ddprobe@lists.linux.dev>; Thu, 22 Feb 2024 17:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708622297; cv=none; b=LWer1zlY6j8aqFFlcW8/7TkLbLYywMPOj4DMnfSaqlwLb45/IPQXW2hcfONJMRljyJ17CZyehs3FOp7VHp9M7tp5Vk/7AU1OSIg9+/Ja7B/evi2H/fVQuTHrTxBMTqzsfjP4e1iCm1UmcMx2eYo30BuRTahIaB1If39RUROWEwk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708622297; c=relaxed/simple;
	bh=tXbnTWaEzPMggParF+yx45O1i1um9CUJvClxyyIDbOc=;
	h=To:Subject:From:Message-Id:Date; b=A4EbUXCM90Ymx7JRHmqsWRR2tntyvR68orhskXjODPXPjzTLFYfTKFT5aWB4kZ7WUBqiINMqiKyV+AK8KF4dxvoRL3HKAbnMP674KEffWWBTUdgcDYfzsLCpAM9C2CHaRw76FaQ1KsViALZJ1QXeydXa9fGTFmsYExnZ2njeJZ0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lswSft6E; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lswSft6E"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7DF97C433C7
	for <ddprobe@lists.linux.dev>; Thu, 22 Feb 2024 17:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1708622296;
	bh=tXbnTWaEzPMggParF+yx45O1i1um9CUJvClxyyIDbOc=;
	h=To:Subject:From:Date:From;
	b=lswSft6EWKNt1WFR6kJXJZxKWVYzTAV8svI+1mvpoBDwIxiE8AruX4fKTFCOtlfk+
	 X4gk8nv9d+UW9MTbYWj63wCzPlp1TCqvRUm2WksqV6k7sfGasySVv/5mI/quGAUVJ+
	 /Y6ePFdJVJMOZGyHR4tcL7NINdv4q2LHrN+GAnU0pOgvrf/NFD45F5YAYZaC/fte6d
	 b8JesOB+eyPAUY4Bqm+53Zysndf9vNAmcvPdm7x/aWoND4+TNxQjBMWmVBiQkanMNI
	 IIAHlJAsYQvgJqIgX1a0GY+dgJ6VvvypGY5gowaINwMOkp4oG+PzHae1h5JjoCERce
	 3aKensH1ELlbQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 64197C54791
	for <ddprobe@lists.linux.dev>; Thu, 22 Feb 2024 17:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170862229640.17654.647843150662161253.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2208562187792d675a7c6b157b39cb429e17f54d1ade5d5641330386a2cd3422
Date: Thu, 22 Feb 2024 17:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1708622296
