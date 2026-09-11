Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 856F44052D9
	for <ddprobe@lists.linux.dev>; Fri, 11 Sep 2026 07:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789111234; cv=none; b=D2Blff4CpBzbELaY43n3CMow2KtN97AbcFj/uVpqIQtb6RlTZrBxpyfmQq2ew5IqomH6BN6Ob0eivKAiHBncqarzccL37NsXO5ogjDokzWMpPmff8kwp3zOqQ2D8pj2BAjvlz5EyHdtqKDQsqBtHxmX0k4a5L2Qfq9YnZ6WyJDs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789111234; c=relaxed/simple;
	bh=XpX8LHvHKM0r0vma7dgJFLDcHO9EPwGH6+dCfMNLSjg=;
	h=To:Subject:From:Message-Id:Date; b=XKPpfM7z49XjsmV+ar2V/7JDZ5onzNj31fwAT4aRUWZhP5C8lSg84J9hkd3461P2h2wVNKajGpyDp4WopOTdnBEXoDyPHuab9a65eEYrYnTgkIbUkJsVXYIdFi2c+raPLBlOmZEvWuizsUyB+1I7Wd8TTeoSGG+TOW2v1OMzHXI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NSObMwPV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NSObMwPV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2F22C2BCB8
	for <ddprobe@lists.linux.dev>; Fri, 11 Sep 2026 07:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789111233;
	bh=XpX8LHvHKM0r0vma7dgJFLDcHO9EPwGH6+dCfMNLSjg=;
	h=To:Subject:From:Date:From;
	b=NSObMwPVKwzawpKtTKs6Q98mMhdGr72Qs+BklZpBSnHm24xdBdIImTaYg8Q41Jy9g
	 UISAJykSaRRMKi/fekTF9vi6ohYVNqRcwqe/YMdPjJrutH+Eblj8wJem1RK0o8ifZA
	 bXAHwNPvRyLCI9xo9PojWFbj5DvoSgG90Ooke4X9Xn621DBDV6wLjqLSm0qVKv0Knt
	 IEe+3aET2baeXWttuSKFzB6/IN1pJ8n63IYwFg2LHIVQB1r82QH2p58aCH/haMu56z
	 so8xUEOnTYKk+K9wbhuO4rV4LoxPfA7yudVJPwOxc+KX/8yZh+GPDi1LiUNRjRv34g
	 wfeOOVPwPuOdw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9C18C79FA1
	for <ddprobe@lists.linux.dev>; Fri, 11 Sep 2026 07:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178911123368.27131.11488200032978465842.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1c27ab3fb8242cdfcc577738af64073caf535d0ef6bc4791cda2b4641e358b79
Date: Fri, 11 Sep 2026 07:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789111233
