Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 102BD30F931
	for <ddprobe@lists.linux.dev>; Fri, 17 Oct 2025 06:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760683195; cv=none; b=KqolhuCmfhYBAK/7vHG72MgBM8Xa3iFjG00ZxzS7DFKIi0oNsGpoPkfseEvyhsU2NWlbBOPAB08+sWkKWjQRzcxjT75AMP4/kbRSwQU1NiIclg8Q/rcjdCL2Kjb07/N4BoX6Js/UBM6QEJzb2YMgPALEJPhkIQ+A43/P3FgvZ10=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760683195; c=relaxed/simple;
	bh=qj6yCw4R+srOy+KoT7GTv4fNakAJ3yRKx41R9nBQSOk=;
	h=To:Subject:From:Message-Id:Date; b=bgGBXn7rOmEzomurnPwIXbexKmfH4GBghjuhj/BjJMz0dqb9ToQB2cj3x4vDpubBIIbm8IGIs1yDT3LJ9cYgi7VNJVxyrUQEOQRStL1u8/Fd+fx9/qlsD0IvUoDs/EY7cywDioO/CjFs/ZU/jeoFxVtJXT4ksYH8UoIueEVXeFE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KviCGFt/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KviCGFt/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9CA0EC4CEE7
	for <ddprobe@lists.linux.dev>; Fri, 17 Oct 2025 06:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760683193;
	bh=qj6yCw4R+srOy+KoT7GTv4fNakAJ3yRKx41R9nBQSOk=;
	h=To:Subject:From:Date:From;
	b=KviCGFt/RVgIAgtzQuSclNS4wOArGg4X06VVz/yGjVjsTeZ2V4BjkrqYMvcLywR2a
	 bp3KQWxH61PR2KZXpg1hdHN9+y4PM3CBDwks4KKfjZI1ElT45hFM6L4YFseKJbLwok
	 zrKwyMBDKxGyKEreDn71wHmjFud61A4kTCfJT56978rwQfHGC1FVsZhPtlO+WYCyYj
	 RkydXEBKScHWFAP/x2KNhS56XMfyNcb81X6ffewv8MoAD0Xlrh/mcSJa61yygzNNjj
	 p6wjasIsj54cy9q7VkJU/wOMiehfHAoKVo9ZPV1YhH0wynAWdeG4AxEG7C+Lc91qOc
	 ChuesSUne5h/Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F00ACCD184
	for <ddprobe@lists.linux.dev>; Fri, 17 Oct 2025 06:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176068319357.16722.4650680333566071762.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 99471032205bf39ec38002e3dc376d19ca7a740c8e9b2d770ef4069d6df13027
Date: Fri, 17 Oct 2025 06:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760683193
