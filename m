Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E1BC13635E
	for <ddprobe@lists.linux.dev>; Sat, 10 May 2025 14:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746889194; cv=none; b=OYHRjZ8iIRFygXRRjroDHq5mDgVBLdOmJXLnP+hyAD+3N3poqA4gy5zA//CnwJEM96xUWU3/C4LnQPk/cy8g0kG+fygjb/wi0XT2nSyxIZ8U3uPzfkBVG3ljlkSC15pvTqqLZ9pdQy7c9FGOBZ9Y5BhLgc4yqkejwbiUabLOhv4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746889194; c=relaxed/simple;
	bh=Bz+1pKBs41R0kftkeg9oTdJ5vqvLkWJb9ulZdKUPnkc=;
	h=To:Subject:From:Message-Id:Date; b=d+fOhClxHRJTOlcVA6IjxGQkV4U+0RIduqFpc+tVweyvMuZSOdCZhwRseBgEQ9VU0qxLMTsuqKCaPBuHwBNPUF2Fvum0NPqYeun3PJV6cJtC7ReewcSxeXQUKX9cO4jlzT8CvLKzhZM9aTynTTwC2itqbaEh37sVFyQZyu0Ko9Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HcVQOULN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HcVQOULN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4F65C4CEE2
	for <ddprobe@lists.linux.dev>; Sat, 10 May 2025 14:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746889193;
	bh=Bz+1pKBs41R0kftkeg9oTdJ5vqvLkWJb9ulZdKUPnkc=;
	h=To:Subject:From:Date:From;
	b=HcVQOULNXAzdIQQ2jlp17ZfPoYUPZItyaLiOZG2KSmGTygsxvVP1a4Qx4ZQUM5RA4
	 qFcYc1uM+ba1oP+DZA33iLecXhMy53pxcgbNC3mNHSRNIPrem5v7yTIIrR33h89D6I
	 WvWECwJfLkHxXL/WD4IXWJ1rz7YtkD0sAmCmAcNorDsbCIC7xPO7mRcyh6YpId2NJF
	 k+y4lt+d6eIjtAog76IslgbjCsaLNE1VG7hvlLb/fbuG27QPQH5wSI0zT8HDUb8FDD
	 kNuxgB5XdBYP5l3mLoc+i5o+0/P2iA5mG4URokAugNb8nhgqBffkqWONO6Lx11l7/+
	 jsW9DenC5GOGw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90AF8C3ABC3
	for <ddprobe@lists.linux.dev>; Sat, 10 May 2025 14:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174688919358.5158.8608701421066338916.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4556ea0a10af4d6e582da18575610ae10deaed0afd1430fb9c13d5117c51a577
Date: Sat, 10 May 2025 14:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746889193
