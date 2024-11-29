Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46D8A79CD
	for <ddprobe@lists.linux.dev>; Fri, 29 Nov 2024 02:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732847754; cv=none; b=H0ENwTq/lNYYweS6Cr75AGjIWCcLpfVsr1X6xBjubByGxdSXOzv015E2SFrSdWcTiTfv3n8uITLBVkEs6oIGNYg4uFv7bQZuOtOvO+lo558zCD1xB/9Iti1b0PTyN+sgSDsJH4NGYAnEJZ5H5bTRbbRfmAWuE/ak/+/L+2ZyOao=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732847754; c=relaxed/simple;
	bh=z23XjSbExeuwQa5nnM0DMy6xJSmIaEaJiz3HbHSGERI=;
	h=To:Subject:From:Message-Id:Date; b=IsGlq5rZmEBMOWUHsv22rjf+Ep+9eKXxsij6MojVePFl/EX02dtJW8qlRRdTmZ2a13MuHVvK2c6SrIJfo4jyQzDB/iGjQHWosYzA0Ts67A1E4YENekgakqjicK4TAs7fYkaYYgQ3AzIgmmVuTHgnIrMLno9vqHM4BtGiFlS4h8w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rSqEJvi5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rSqEJvi5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BF92DC4CECE
	for <ddprobe@lists.linux.dev>; Fri, 29 Nov 2024 02:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732847753;
	bh=z23XjSbExeuwQa5nnM0DMy6xJSmIaEaJiz3HbHSGERI=;
	h=To:Subject:From:Date:From;
	b=rSqEJvi5Djo1VO9rhX85YRWZuJ0tKvdJkjNW4VNEA2W+pXuwzb/f7yATA3FONBR0x
	 1pY8gCd5YpOMIYP78sJoodOWQ0QZQsimURE+FFyEj6K82ubk2J5LNc5Is23bqwtr5V
	 bj4gvB22SB6CqCgHdHC8pF7OS/DxXTGCgx36eQ//eJ9KWCsTXhHAwm/1/xqFEYtDsN
	 t1rCwARB2YnUni4KRN6ihX5HEATY49JITFQnBqiDTxeZJYnNdrKiuzbsSFrN5RGUo/
	 EEanlh4j3haTe+9WeSrMqvMRybqe9i1I6Fu5ywMfv12wBKlAbbNGkvvZRRjcNLPjEs
	 VT2YQec2l+ETQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A6606D70E06
	for <ddprobe@lists.linux.dev>; Fri, 29 Nov 2024 02:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173284775360.22761.14034748014409282677.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9989be06685084b69be643141ef50fc79660cfa581a6a39274818c007527606a
Date: Fri, 29 Nov 2024 02:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732847753
