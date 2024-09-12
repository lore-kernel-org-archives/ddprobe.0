Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C60E18FC89
	for <ddprobe@lists.linux.dev>; Thu, 12 Sep 2024 07:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726127754; cv=none; b=lALYsjS3+JaREk7dowS3g1uM+1v8uJIuKejgrfsWiwxLXOFWW35/a8vjR5LobKcatO5btSH5feRnkZXRAeK11bne5TGcTDkVh56ZocnabdgGO5iYQE6cQapm8fNtuX4y91s5xa37QeBl6l8W9mMsYrwjHpc25tXct0ZUN4O4bAU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726127754; c=relaxed/simple;
	bh=3sFPQRDJkF+UAvNqcprG0nvrIsumgRROTxgQUgTyFhQ=;
	h=To:Subject:From:Message-Id:Date; b=FVaNeI2Iqxm3KOrFGntMprtSMnwEdwf/LWUp4ufUgO+xwhrsxA4s7uYNmLjo93h4e4eUi1uLBViN/2vXGukY9JuHDGGl4mSY4x8AS/KmzJJ46yAB2/lWNy/kdqOEpgYcavaGrvJC18snaa4JdXBVEUio/5ESBPnJolO0CKMPPck=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cngnu93E; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cngnu93E"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AFF50C4CECC
	for <ddprobe@lists.linux.dev>; Thu, 12 Sep 2024 07:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726127753;
	bh=3sFPQRDJkF+UAvNqcprG0nvrIsumgRROTxgQUgTyFhQ=;
	h=To:Subject:From:Date:From;
	b=cngnu93EiATPX+xrytoB7PZwIumxgGb/7Wq+4g1jnqBZs8qyU2sS2Sz4BdP1vvwhP
	 0zBZzc5ADez1uZW92j9KCXMJRS8VrvQA6etY5/hvUhRnXlM4WE8Sm1CMzG5ChO+LgU
	 r1kgDyjv1x9J2xyO2OyujFieG4qxui1TANNvDEW0mlHLiNI1FEKXV1FGEzZFSrUKNi
	 TtoIyRJFp6paQEAHZxU053bwbyEzAP0pYTplyYuzkte6b3VqFB7Dminyz0kTNuRLOx
	 S5Qn3VEnWF+sH9cqQ4RI6F865GAazSEnHsla4je3Tu1BKW6iwrF3HHpMCrzcwBkqpA
	 MpyBNzYRu3oPg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BCCBEE645D
	for <ddprobe@lists.linux.dev>; Thu, 12 Sep 2024 07:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172612775362.30236.3989121687613871164.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b22e425a641c30a5f97ff969e335e9d86314e7e8b09acf0f85d4b02dc4e63a87
Date: Thu, 12 Sep 2024 07:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726127753
