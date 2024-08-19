Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B32C14A4E2
	for <ddprobe@lists.linux.dev>; Mon, 19 Aug 2024 06:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724047554; cv=none; b=UQwTv4ZA/LfMwytHtcV1bQAhMJ9wWV4dOXSrhpuj0Sd3t+dh8VAF573iKhoExzqmq4W3rk5RGjV5rGkcBoBKlj52zINIs7GcpPm4f/NAqOKzLzu8t3j3I8KM6+NxEIgs3r9KReFmV+lzqgI74NmE0aRiIalD/Z2UjswmukvfG4s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724047554; c=relaxed/simple;
	bh=r0LNUGlB8WJNku0GyzuU+GqJGC9ORXgqL/FywQ26cFE=;
	h=To:Subject:From:Message-Id:Date; b=rjvA/y7jaXodoofSoK2HDyXs4MeMAXA9H23Ti2BpfuRY+c1/VR/AfsrkWvmlRu4wUg4ZQ+BF6f7oTHQwic5av7FmcsPaNTe2FM1xioFhrFNw3U/OmLN505mqQpsvC0XXCHYTSndpciG8ClR/pDYnldwvZF7sv8JW/sca8Ytj0jg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=I5hUikvV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="I5hUikvV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8037C32782
	for <ddprobe@lists.linux.dev>; Mon, 19 Aug 2024 06:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724047553;
	bh=r0LNUGlB8WJNku0GyzuU+GqJGC9ORXgqL/FywQ26cFE=;
	h=To:Subject:From:Date:From;
	b=I5hUikvV6A9simWQ+DMtWvXi7gI5GJ69Myzp1Mf6dOwW6NzywK4gI78FzYE1ACv/A
	 fQH3WUT7Jp6juzM8uWiGbZkL+NiGYXFaaWivc2Fkz+cVMXtUC/nKTrDxxoGRU3wvLY
	 Tng0XsQt2bSnJlSI02rcMeUrbmXOW9RmG8i0uv4MLB8t26hucuAycX92nk/hL6Qo8R
	 d0F0lFxC/97+aFwmhzXJ6tmrYLwgv3pPCk/1foutE0u+k8fqd85VebQNzHxuT6DJvS
	 kTZPYmpGYqqyEUPMOk7WQsm+z2E2vC4ng2AzGtOZT6+82fbGSXZUisffQKT/JMP939
	 PU3cBPVUittMg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E407C3DA4A
	for <ddprobe@lists.linux.dev>; Mon, 19 Aug 2024 06:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172404755363.32660.10244594362722050156.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2ae9246bc41995d0d49b7fdffdae1c03825b43c1993da90034db8bc8934943ac
Date: Mon, 19 Aug 2024 06:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724047553
