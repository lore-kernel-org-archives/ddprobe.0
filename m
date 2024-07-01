Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37EE057C9A
	for <ddprobe@lists.linux.dev>; Mon,  1 Jul 2024 23:15:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719875723; cv=none; b=egSPpx7vEM92/GBA3myYFKjoGu2EGShMfzfXqrbaOChzufKZDmKBQhGn5oiaNw9IuMoB33B+b40wALgZR6UU8cQr8ZtGK4vb5+3YnXSfDdFBzvB9xI06BikyHgR8G5v7mGrhdPiM1ag1DNkmHZs7Uyf73VKnuN/sxAS3MWWesos=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719875723; c=relaxed/simple;
	bh=tGpgUvSbxS3qVwUqlBXf8nHE0Vj5yLG3Y5IJ9/Krf7s=;
	h=To:Subject:From:Message-Id:Date; b=e7eqt0pjyjru/r3DedqWt8DZ2jcGBLB4irg4DpWcn1ViUwQCKG5rAmN1sO2Pj22JGrhX6uyJ3pc+3nv4DKvwUer6VXEHxGUQmOW7I/XyQYRW6pUXvPCwgpNefYvJcnd8RfEWmCwEerrO5rdMVuCJ0dbtDzFwTx1soIrqWLFFvng=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uE99GOwn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uE99GOwn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0E93C116B1
	for <ddprobe@lists.linux.dev>; Mon,  1 Jul 2024 23:15:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719875722;
	bh=tGpgUvSbxS3qVwUqlBXf8nHE0Vj5yLG3Y5IJ9/Krf7s=;
	h=To:Subject:From:Date:From;
	b=uE99GOwnAxns56QGyiHaJSApIq0nVSiXphNh0WZkvwPw52l2jGxvYc+J2sibroque
	 smODIX7C/raNnCexqdzqdeJ1KpgBpFpXk7nvDbSopir7GoWiw1C0CtzUsGzH5n1jeK
	 rGZNtaTwBwbkgZCrYCkrCBey2L1HIPSfP99yjL1WN2CNCC/B40LT47z0w4iSg99gCf
	 vgEloot0WlhxoAI0JJedpU3s35mH3FujwDPP0lXTE0+u6UlFX2LPK+wMI19gLZbW8U
	 orw38tuY06VuU1FmuSpJczomewsXIHyywiG8d4nsaYDKbFOjm63Y7xolXnFct1G8Hf
	 oLtui+PLnDwBg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BDAE1C2BD09
	for <ddprobe@lists.linux.dev>; Mon,  1 Jul 2024 23:15:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171987572276.25932.13721531934679016217.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 66409475f27d676c0edbe6fb058ab2ac513ba256fb30cdd96188c0ecf6db3d49
Date: Mon, 01 Jul 2024 23:15:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719875722
