Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41C62182DF
	for <ddprobe@lists.linux.dev>; Mon, 20 May 2024 11:12:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716203543; cv=none; b=Fe+i8sq8SNm/USAulmtf+it+FX//faW+a6T2Wn0Hj1waPpqsZrtBH1mLACjOnztKHQKKbT8f19eK3zXPaVqzp9xp3bfANj8W98t1nGAogzpa11RF6XmMRjg7uF2KJ+XyuMCBr0xqkHJVhqq8ji7DuiaF79T2rFeCk4I/ESqOS5k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716203543; c=relaxed/simple;
	bh=b+xTFn1MB2phTLMtR3YA/f6AfSyeI96umcEoikjEVrk=;
	h=To:Subject:From:Message-Id:Date; b=XqMTrespZ51ems4hqcDjDJTPsPTZ6oPznjmg4FJ7daK5jW/J/emqoXI/ed0eTPjSfHU5dJrxGEmvhIMF9x+WULLmBEy9bPvGsJYzz4ds+ISxHGnN7toxfKQw9pBbnYrka7CO64ALq0aZ4EjK5OcOfZbbxU/l/9IzU/3p/40y2kQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=W72849IR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="W72849IR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D09B3C2BD10
	for <ddprobe@lists.linux.dev>; Mon, 20 May 2024 11:12:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716203542;
	bh=b+xTFn1MB2phTLMtR3YA/f6AfSyeI96umcEoikjEVrk=;
	h=To:Subject:From:Date:From;
	b=W72849IRKpoodY/yzqqGC3hNSGy08qJLa9m3/1jyYglnDTK871s3CXpyVlJ35PYCU
	 OmMxHxyJICKeAJBcvIiTg4Za3MPvzAcFCTdNlx922jUxhzEb6AXlEiEPQ41QgM0uV3
	 120xMtUpnU96hgOP2J4YjOCa7X6UX9ich3uf4ol7MF+GWZ2sgHm8CwqqqY0G76r5tM
	 TW6T/KTTlC+d69QEhkv2u+1gWLrL1Qx//I5m+8j75oQJfvPifpW4VQTsWP59IOR66r
	 KBRxBLb7lGM8dgvVmCv68+enxWtDmSkIx2PyHrFU7im4TdsTVB1YMq6iV7BOG9+LDd
	 GXGWa02IgN0OQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BC2D4C04FFE
	for <ddprobe@lists.linux.dev>; Mon, 20 May 2024 11:12:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171620354276.9642.12383546517178618172.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 25f8373463c7e316c2428496ef0c4222c3d79a9dd3b38045c2b08d92e9b694b0
Date: Mon, 20 May 2024 11:12:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716203542
