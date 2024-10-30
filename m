Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34BF81E1A3F
	for <ddprobe@lists.linux.dev>; Wed, 30 Oct 2024 08:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730276754; cv=none; b=LmIMGldsIw2KrJqJZSvx8dbT0zRDPBMpuU+e2m3CFMejZfGrsJFkOkbYjOo/gveJk7I1YkY3XHNaMTCnNCZk83Yk1wElipiwAV2+VeKsO92oKqJ0yQYf2nns4MBCDEfZ27Z9RDig/f54qcVjKZzRSkaQzZhWF0CJ5+/B+pu0c4U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730276754; c=relaxed/simple;
	bh=fsbPxbYlXbBFLMWpum51iS3arVwNMlfaBPIiQaDORtw=;
	h=To:Subject:From:Message-Id:Date; b=RkJJLV68elMBPJJP38jC5RERVLuVVrPrHhhLndeBppEtAZvRs7lU1Noa8fv3WT1hgyiyStdpTLfCqjYq+c4o86qof3AsJoIYP92PaiDGw0ppkejHS7zSsRivmcZlBXLdY+UaieXZuhe6gu5DM/bqXaci48q9pEhwrUUoBoxjMxM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=punqm8oO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="punqm8oO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2B03C4CEE4
	for <ddprobe@lists.linux.dev>; Wed, 30 Oct 2024 08:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730276753;
	bh=fsbPxbYlXbBFLMWpum51iS3arVwNMlfaBPIiQaDORtw=;
	h=To:Subject:From:Date:From;
	b=punqm8oObM8fBOms5v781svTa5XDs4/SY245Eoq3HJiy4LMsN3xCHaAgWzC/69jqn
	 Jb9Bk2T6zD5VBn5hsYAq7boUijM3Y3gGN+cITcissv2OU1daB5O8xMpYgxhfj8gahs
	 318SjggoYV+/dSfmfc4jhw0RrP2fHZHhTTlda9iX4PqL1dZOOeSWOo/sPfvKuQIfUJ
	 AEAm+x+Gnz2ivKool8c/4Cz4RqKp9jFF68EwNXYvz9rFDuGpG24hz0Udv2hmTtzFhG
	 J36nY6X+vwRBO43RIBNOkzOtKqlBnLkGZUyGOgoYstUZQJX5e1byHZmyX5ABTkPDBD
	 HSTMMea0sZGuA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97A96D7497F
	for <ddprobe@lists.linux.dev>; Wed, 30 Oct 2024 08:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173027675360.11462.9693771481922335313.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 800e0978ae9f471dde99453c40a80905350edbe19121ed7e78c663003f97f324
Date: Wed, 30 Oct 2024 08:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1730276753
