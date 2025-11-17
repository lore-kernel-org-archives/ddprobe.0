Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4887A10785
	for <ddprobe@lists.linux.dev>; Mon, 17 Nov 2025 04:21:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763353314; cv=none; b=V6XxsR9UtHGRq9rfS3gWYpLO1lDWoVRwTl3om5k4RRyyILJS9UKBh0sxnOyBSEMSg2VS8cvZq1uK73VJpNwY35kVAIAnTyaQfuuWsXt3CKhjD+oVOgSgo5F53JURnPzRvj8bYsJbJB+gd3iOU+RjYbVL1jtzmhcFFjg6CaGb6Ic=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763353314; c=relaxed/simple;
	bh=7Bislwfqpa1sWY2FckqUl5qL6yb9o4A4/9RiLxW6Z5g=;
	h=To:Subject:From:Message-Id:Date; b=avdjNRXQL0hzrMMgTDQOcKaCXtMjcXt4ZWQNi+3ikgBFRe3EHh0nlTODskZpEjM1zoxHW8p6mfWRwS52/3zdCl+bqQqg4Q8+z2iqbvBzdWOqGN2wn2R8oun5mOHD9W//RXcBJslWNRiIYCPy12R+V3/ua7asBScx7eUsCdQxkYc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=skhS3Cxb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="skhS3Cxb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0C46C19424
	for <ddprobe@lists.linux.dev>; Mon, 17 Nov 2025 04:21:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763353313;
	bh=7Bislwfqpa1sWY2FckqUl5qL6yb9o4A4/9RiLxW6Z5g=;
	h=To:Subject:From:Date:From;
	b=skhS3CxbIOexyrfnco18ZUz6WFMmZbe92k+he094EOcddJAlDvbiITqyti99lt4XU
	 11P+I8tmCKObMScLR3EvfaotRLAJJpn/acvxq7dlyIRO8D+q8rG5s6hXeTcdJV+TCN
	 8/PuqhInaUyMJcFEY1319ckDdXSZvAGmQiNUtfFgIDr0lVH2h1ws/cWJTuNRKUmpAA
	 0IH+CRojx7ncQ8razH2ln/TmDzACRPpdmaXaaDMTknwFblrpSit5DY43kfchgq5x3r
	 XWrZRlgkbjKgVaSwmiYgjD4hQ0xj/kQqwHgMiyFzSAAeH4qsVnmJBXTZrzkMNG7oOA
	 n4R1TubfaVNEA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE7C6CEACEF
	for <ddprobe@lists.linux.dev>; Mon, 17 Nov 2025 04:21:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176335331370.31116.4956477256261831634.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e22a415a2cb3b2b7aa59b390e07f09ce5e4b96e4765f42de746b6aa7262c5b3b
Date: Mon, 17 Nov 2025 04:21:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763353313
