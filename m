Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2461143169
	for <ddprobe@lists.linux.dev>; Wed, 30 Jul 2025 03:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753846194; cv=none; b=q82l3NF3O1/teUA11XQqM22PERCZ1NqnqQfjumj/JyMS30Qqn13aMsVU4VDBO78K1lm+C6OjoMXGLjI3PSWGrhlkJx4PT/npSR+840x0rSQCuyl49Jw9iqM4qqJ21AfT+18CGoPKUsThxHHdgQD8rqpoWbvsqgJ+3WdY//pOaRE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753846194; c=relaxed/simple;
	bh=qPM3r/YuwR14+A0T/dawftFPZzs7SFRiqC46NOZ48a8=;
	h=To:Subject:From:Message-Id:Date; b=fPK0CPhRP8VBR+v789UXxLgn2OEmOEWCqPe1sZs/IbYKMg7rybZi1bqVwaXaaJFdNNcAvDgO8V/sAJZGN4mu3B9uVb15RR5A9bjbUE/LmrGCrjo3fNYEF/z9EqSv7LHSRzuL3U7easJ/ApCFygRD4ygJXUBpZ0YNgMnjrvuvjSM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pMPUpCM8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pMPUpCM8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8A0CC4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 30 Jul 2025 03:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753846193;
	bh=qPM3r/YuwR14+A0T/dawftFPZzs7SFRiqC46NOZ48a8=;
	h=To:Subject:From:Date:From;
	b=pMPUpCM8EcLiLWYnCwp1uJf72yq4dhaexw/fSFOAh2qT2BoadwX/4vVrwHVGy7na6
	 B4ISOwnxIlugeIpNWj5+oEyCrB3WnwLizmXdzbtzwV3w8brJwHYhobe4NaChbfw/Qq
	 f3tpvzI6qEWlRmbyb9j5Ydoen+z3PLFrmAUJFpDys9xWiKUYo1QeSTSkfG4zM4XxPo
	 IlU2i53jBdRycnYLXqJL6acGKV8Iya8Xii8gyjtAMbXCiULVi1E0Z8iFRcgp+8AaCj
	 SQf5ggcaYDV70e7H55eY46qY+ZRieu5jDBok673ye10YFvTEUz8chx0IhLQDVponbS
	 6NIGL9ZdTWjjw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F8B6C87FC9
	for <ddprobe@lists.linux.dev>; Wed, 30 Jul 2025 03:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175384619358.3696.10915202140066189469.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 16f4e4dcbe57a39d401fb90e2314f20e7ca3b6325a7feb4c59a2199939c6020b
Date: Wed, 30 Jul 2025 03:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753846193
