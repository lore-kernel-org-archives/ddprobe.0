Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2616413AF2
	for <ddprobe@lists.linux.dev>; Sun,  5 Oct 2025 06:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759645794; cv=none; b=lymWYfgBq2gtk/ex0KnnAH7vxWMZUcYTFHWsueRCPyofUMtsHbOvS09XmQu04xapF/3IMKqj3wC4M0vp4kdnZ15xXyRsAaK+fXML70yvtGKYfkb3q0Fynu/wCwREe2YoI2Th7cmmwt+ckxyscFbbCG+XRkXBJOFYC9v6cal8AMs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759645794; c=relaxed/simple;
	bh=UCUpuZk4xusL7zJKmk4RFrQWr6xlh+mpJf5NbEC1quQ=;
	h=To:Subject:From:Message-Id:Date; b=LooDNlXc5356M514GhPLhh2+sNPOTyFQs4HaDT1T5kTZcFt/+NJmHtGeyFMsZarIjbNk4OsyV4zBBNuDaNZn2l8G9ISvfG90wcI8w9Qotia89Itqw7tl4P7AEL1Plt3FnIfvB+2qK2Mzcmj1EsT4HhQEbuS8R751MP6OJ4s8ScI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CXoRT3/Y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CXoRT3/Y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A834AC4CEF4
	for <ddprobe@lists.linux.dev>; Sun,  5 Oct 2025 06:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759645793;
	bh=UCUpuZk4xusL7zJKmk4RFrQWr6xlh+mpJf5NbEC1quQ=;
	h=To:Subject:From:Date:From;
	b=CXoRT3/YlThqCMCP4GahCbGWu07aP4aLvJow39bcpUZYS4kz2OGsB09WfSvEPYmW8
	 +RT4XPHmsI8dFW5dEHLqFaEJ7b3enTs0b3MbxdbvU6mt7cpPGQPXcKzb5EDm3EwjQe
	 ilXbSr94g3RUqwN4dfa+beLVie7ZbN/5qzfxzIDrvm5UqF4hlDHEvkfOzvta1g61tx
	 e027EK3zfLtNrRlq9TM81/m/EbhxBcZ4D9W4cqSMwhdQYJRBF3RLBbvxKC+sDHDtSR
	 3l/8mVCsdoK0gQQn7Hj9aNxD6gpmCkQOkdrPqR5whnKfwPen5Ef0kwNdu9uSKn1uBu
	 rp04X7T/GylpA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95FA8CAC5B8
	for <ddprobe@lists.linux.dev>; Sun,  5 Oct 2025 06:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175964579358.6813.13157262004829672576.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0a89725c128912a2bb0decfde3e78261cd92ab2589dd66aa9c96ab564060fee0
Date: Sun, 05 Oct 2025 06:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759645793
