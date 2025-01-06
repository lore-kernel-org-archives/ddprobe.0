Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3437C156CA
	for <ddprobe@lists.linux.dev>; Mon,  6 Jan 2025 00:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736122554; cv=none; b=ckhm5sWpaPSFFUCKKh9MmuwcZQO71LXcj01S56iDOYSBu6mWi7apvmhN0nVlmZz1b5iGdOaZeyWn+AQYT7ecvPqSOL3HqaJjHhpYVdF3kAGszlJrqHHJNTM7KBeZYWUlgudbmD0pNGn1nMgolRgdfjrtjONga1JNM74rcZCNJHw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736122554; c=relaxed/simple;
	bh=OM/7OKCIATA7jJC9KrsbAxWdoGI/mmc7gcRq+hN5I7s=;
	h=To:Subject:From:Message-Id:Date; b=sua+bzCOUpOCaY2YVzbVaYOz8RtZ0ycucbKmTC2skUQ468c4OFdkZrOxxScwGbDkpjUwWcoraK9+JBmCW2pUrw75iy6ACdBQ/eTcKcB148QhNc2ycMxbH/LV0YcIN/0WJb2j1HmZXPcZsS3Jl3ZwQLSwiuMP/Xq5fDonucSabzI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SvfCz85f; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SvfCz85f"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BCA5CC4CED0
	for <ddprobe@lists.linux.dev>; Mon,  6 Jan 2025 00:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736122553;
	bh=OM/7OKCIATA7jJC9KrsbAxWdoGI/mmc7gcRq+hN5I7s=;
	h=To:Subject:From:Date:From;
	b=SvfCz85fTk8oazRu/QjU8x3Dc8/WL30L00Qi2fjymO+OjtqGq8NdvP+aSgbun36Tb
	 /rg3SmbYSnwCKEq57WaLnKLtHenlEjhJJeDRRYJgvnsAOSzQN8Wr/NJzydU61asMUW
	 HtQY9NVnUEjiMP4qQuaHO04BGVwN3I7hPAUA37tdqly3y4lC7+0hQCZHTF+De0bkzG
	 XfTX4RMJBTWGr3GFB3DIHGb6MBX074xpfDK5Jt6cxZ8oRxGAtZbfS4id9ZlPfwEZEK
	 iSemlB6ylMqMb4alUt79S3/KqEdkQPDzChZSyOy2sKzlHBpanVAqwwPJw12kHVgS2y
	 D3k9XTFaeonag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A04C9E77197
	for <ddprobe@lists.linux.dev>; Mon,  6 Jan 2025 00:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173612255363.2556.9096585316685402851.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 992ec9affc1c9e0cbca4924db426e64d1b9b9796ff6c6610c798d09e16c8e7a5
Date: Mon, 06 Jan 2025 00:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736122553
