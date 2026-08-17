Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26A5025C804
	for <ddprobe@lists.linux.dev>; Mon, 17 Aug 2026 15:00:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786978834; cv=none; b=M7vwmtV5zTBe4865jJ5H+Poc4ewdkoXKOifE+7ievtvJA9u0IrTkT7KnuRRljFVPK8DVyxLlv4iCeamx3OZ94zFT4V4OXyG84fHm7LNPFrCFR9HVFCVK67WLeV0H4a04XaveFOK9Ge6Xl3TzWi28fx1NlDfDqQ3xlviqTBd523A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786978834; c=relaxed/simple;
	bh=d+dEuxTTHHoS6cw5bLLFfkprWvT9MjS8n/0wuE4+6kQ=;
	h=To:Subject:From:Message-Id:Date; b=IR9Gtx31cxRSwUnR9oqOsfH/DhRoxpIUtUKal5nUTf7od3uBghQPFWItyrBxPj+MZUNqguXqGjtuGEvCdxxBr5ZAf+ttHelB0O6bY7syop45IcNmmxUsOWLsSaIfV4++VhPopH1v7QeRQUqJvkvmdpvl/8BEXE5XCX/kAui+8TA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YOttQ6g8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YOttQ6g8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C25B0C2BCB3
	for <ddprobe@lists.linux.dev>; Mon, 17 Aug 2026 15:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786978833;
	bh=d+dEuxTTHHoS6cw5bLLFfkprWvT9MjS8n/0wuE4+6kQ=;
	h=To:Subject:From:Date:From;
	b=YOttQ6g8h5GTKF9JulL30+TufbhqAnrq4GfrHzGK+qHZVT+kbNVi6jcv8JjmJMBrv
	 tZmTjeBFdVl/YTOCUgtFk9wdMX+SBn2DrHx8MksDuU3oylDLYC42Gp9zdmxejb4OFR
	 57ah2eZ1hiqztHvEAKgqXL33usduGei2GCB3Jiz/zkphUABNdimwvajCk89EAbpSKe
	 N3PczY8/AfmXyureRXreB9GahTyC3mvQQebBRPYlLVeyKIXsz8DCruqGsyaQ8RKW8v
	 j87FQBCb8jMWh64uZ9tXuG33tvRK2wjNJNizWx6mJuaehluN0W3fGkLdz5IWLKkFno
	 J7yZ5659keyYg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9E8EC5DF66
	for <ddprobe@lists.linux.dev>; Mon, 17 Aug 2026 15:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178697883368.15572.4911976347755077322.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dbcc425f2be31e6a631711733f6f98648a3cde932a84b68f1e1362369ca1ba3a
Date: Mon, 17 Aug 2026 15:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786978833
