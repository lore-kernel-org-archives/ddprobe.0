Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DB016188CB1
	for <ddprobe@lists.linux.dev>; Sat, 20 Sep 2025 17:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758391193; cv=none; b=BfIMzIYBd1gmmABGq5/VucnbeNTHB0j9sXOI3CXB/S336xithRJgI+Vkx5to85KvHeklhaquUVBcjw7Q7GaJTWC+GiA7rFHjxhHJ3FnYgtn9geEcPSe93RkWUOs3r8ZDiviklKvZ5fj93enyp78xPzDKvAbNCU+RRSYMTbLN5Sk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758391193; c=relaxed/simple;
	bh=BEGAUDZFDLdX5WFqfYJbAPP/EqHTslYx166tr2IL6kI=;
	h=To:Subject:From:Message-Id:Date; b=upwgmVMbeMtkWBvX7tBm8AKOmxJAxLmsrCGFLI4LhuqxdOyrQXpoBTC5qYIfEFBzFrqB+CvMYjhFDjXfu/TR33fNY3g7hFOR9bgWTZEwsHHLmZufnoWnN7Whx9SLQ3N0zEl3pNUCdEerdQSETTvq10EHLTJTd58ZHrikGBRhA1M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JnGra6cO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JnGra6cO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A38B4C4CEEB
	for <ddprobe@lists.linux.dev>; Sat, 20 Sep 2025 17:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758391193;
	bh=BEGAUDZFDLdX5WFqfYJbAPP/EqHTslYx166tr2IL6kI=;
	h=To:Subject:From:Date:From;
	b=JnGra6cOt9s4qTDG7KAO7oH/JkFTfq1PUWr1/RAkkFBeceBTFGR0sWjyZg6YaOFlu
	 felsL68wX7wd7XPt+1Qg2wOcP0ol9EaMlyMtRIaKLQjrNWygKSBP5VnSazsW8HfMNN
	 aN+2vuVQzZ7Bxq154LOAoWqwsccqwvITmWkhgr1fddMm245mcgc2cS/ahfTmtRLW+S
	 SZiObPpEB1z9gFBAhpu3zwbUJcRsHFdcAPZkRUvLXieNBFe60JQPzCnwAjkRwJVRxa
	 1ridnAmnw0/TwjYaZvLyo+AZtPMS1zYe4+uFndEDG+r1oNbUUmZhG89pLT9jpUP+Np
	 /xE/gZ7/IiICQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91757CAC5A5
	for <ddprobe@lists.linux.dev>; Sat, 20 Sep 2025 17:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175839119357.20575.2379944686197640938.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 413cc8034f871d6bd85aad8967aa6e1412594decddceb6b6f71ebb281e09046e
Date: Sat, 20 Sep 2025 17:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758391193
