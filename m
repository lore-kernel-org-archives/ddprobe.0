Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43C2A211290
	for <ddprobe@lists.linux.dev>; Tue, 30 Sep 2025 06:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759212594; cv=none; b=uWfx7BTr6x20CdktjAFe4jGm68fH3r9gINuga+C6D9zGhOjVRj7w+I9WH3Rbf4w7eIJ6oPi719fe1WO5R4QDcS157jBhXHG9VLsHhEwuCUdWIDmYMvfULFfiOrRZS7Yok4Bfn2AO81g3Oz94bKq104LgZky0zHwCgXCjOBtUlTE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759212594; c=relaxed/simple;
	bh=wUlx0j669I/wXQzBHwPZPAV0Ng2LCY9DSGr4tYTv1pc=;
	h=To:Subject:From:Message-Id:Date; b=hlIfDeS52u7bpCo/JC5zgVunFPbZC4plGX319WvRiQqFX0b3E9wo3JVswHncqoVjm/lFI2QzigjmEEnWMOvzdLoDynA+8HKSSYpNt60Xl2ynWHTun4ASfxEFcKuznGsFcZaN1xZ90c55eA2UQAw2ooeqP6J1lpZtPz2MvW6A21I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IbhKOuHZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IbhKOuHZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B4237C4CEF0
	for <ddprobe@lists.linux.dev>; Tue, 30 Sep 2025 06:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759212593;
	bh=wUlx0j669I/wXQzBHwPZPAV0Ng2LCY9DSGr4tYTv1pc=;
	h=To:Subject:From:Date:From;
	b=IbhKOuHZbhED3PSNYo4JicaC15t0kTtsUCMcnG6gCQyIQkK6nH277hGUzvZ1OvWJB
	 LtxbYGDVLSulTxWWtgjrKxWF/RDYUGiMFEsKVVaH/1PUxqfFi3aYBRSj3ZycYLgpHu
	 PwcxBhA20zZqoXbIRJSaA4X/7w8pULzPSHAC/VJcGtiWx1u0JK6Xv6WaMURbsKrDex
	 73sN1hOr4v5Y30GZhqXe13JXmn+tAE3C2Fz27MNC/rp/myhbrazU3Buv/zZ0p9AwfN
	 tHCM+dlwX+pZIO+daV3zLecJCCAn1xYdkoEq4HbwFiRynKP08hBdo+Njaf79HyD5sB
	 r62Ih847szuKw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A30D3CAC5B9
	for <ddprobe@lists.linux.dev>; Tue, 30 Sep 2025 06:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175921259365.5399.12581478089311767964.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c2a173ff0826d8782ee5fae03047b351a7ad8b9bfed59c7f10ec6ca429e2249f
Date: Tue, 30 Sep 2025 06:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759212593
