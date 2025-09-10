Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17357338F52
	for <ddprobe@lists.linux.dev>; Wed, 10 Sep 2025 14:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757515195; cv=none; b=h/IVrNERdceetyhZjy883Q20QveT/EcTdab4i2A+moSV45pYs225e5yA4oqVa/dCtvt0S8DhkaM/MA3lhJJ1aebp2I48+55Nu70q4UyBegBEevykBtYYl+p1AEPQqB7EdhUgSK7uVtkPd51iFwxYD7+qW529wt2eSLSN/ASyGt0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757515195; c=relaxed/simple;
	bh=+5vlFCFzF2ir0wbxuD31JCOP8s0k5B4YLtlYgj4lXcs=;
	h=To:Subject:From:Message-Id:Date; b=h7Ebxt9E4FY1cQnrJ+5gm6tbzZVJZnws4CzAsGlmW6S6WIODO/QmMwfabI9yJU0pojL3vCMLTGh++1qftXBhFTwaITw3sFpTNMWvim8Jntr26WP4OYTklcEyWbd4ajv6A1dH958qZtw37Wk/7bcMw/dnFZI4ikhzvmxuN8jrkNM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vLJg9MHR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vLJg9MHR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A71E4C4CEF9
	for <ddprobe@lists.linux.dev>; Wed, 10 Sep 2025 14:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757515193;
	bh=+5vlFCFzF2ir0wbxuD31JCOP8s0k5B4YLtlYgj4lXcs=;
	h=To:Subject:From:Date:From;
	b=vLJg9MHRVzqXxUoAXLhrAZn6n0Evzq97YheOVjNXxtZjS5M0V3aTWB+yrv6K+ZB6k
	 ylrCKq0oIEtysvgsalwLy6Ru1pmBFIMP0weeEmfZNxIDTdG8rFzQHoeEMpB5pfsXNw
	 mA/mV5MKL8q2+JsH4+o1pZA1Xpted0/Pza9ZwevjRzjMx4824azJVXmYUgc8lwzsX3
	 G1w4GEHAsi5OiS/AvjXkAiRR5EAKr3XrYmisHYROWV8SF159Hl+ofylMGIj5ck0sdf
	 mCEac7E/CnkQuFryfCduFN2I0K50G9cWMhrRSeYTyRIBfgg1Wb1nl2cFlyGiDvQxXp
	 JB2OOAMi31iwg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92736CA0FED
	for <ddprobe@lists.linux.dev>; Wed, 10 Sep 2025 14:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175751519359.26304.11522608335527422887.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 01b800a1574bac27246e551293197003a7779e735d3ce5542b1956e09d25eb73
Date: Wed, 10 Sep 2025 14:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757515193
