Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 437C86FC5
	for <ddprobe@lists.linux.dev>; Fri, 14 Feb 2025 01:08:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739495334; cv=none; b=MXt5qf9Ar7qPF3EqAH06pKyspAY0UXeIpTZDfk8uHIx3I48P0osFmfeAzaxtkvMeeG1FbQ7b4ayphFGNYdHCgnkivo8xeIyIrOjUUK2jqD8yqdVk16NPmnvy1FU4wjNtQ0OAdw3eNGWgptdub41IgQDC5cqVOTl105wr4yxq6KM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739495334; c=relaxed/simple;
	bh=6Zmb7zra6TQd7ywzceIUduTRe/+NBRf9G1d6CoE19kk=;
	h=To:Subject:From:Message-Id:Date; b=NzZocRLpK9zkrUa6l+wCJL7vjLaIaqdx6jCe+UpTwP+WVtKlCu8nA2yHdrcbqojaCwJmM9XN2GdQ7LR2T8ZXWmgubTSSyai82x1jV4N+wDaRezFeH5E5ERlgAiTBxXCmBDj5r4cI/XFEYkSE5He3/HUtCRmElf61kkM9Ygjdm9Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Avj/iMV/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Avj/iMV/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B12AAC4CEE5
	for <ddprobe@lists.linux.dev>; Fri, 14 Feb 2025 01:08:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739495333;
	bh=6Zmb7zra6TQd7ywzceIUduTRe/+NBRf9G1d6CoE19kk=;
	h=To:Subject:From:Date:From;
	b=Avj/iMV/d82/czdj6WxAe4ojIl4p945Mg4mhCHYoORGSJBHAIvd3u3ISYLqyAFosp
	 KsJU2EkPn2lnHG0BxDajWQ/3Y1J8x8DO6hw+GFlfGiy+M1bfZBU4C9whAWokzRAEiN
	 2r0DO2qAVXzZS/vSfSaJ26HkFLrpjCBNbB+W17C10irBswMHTEcriliQpJkKBReUUF
	 67C3u5gONSXuR/PghBY4b+O2b2V78vZzApBfJ815oZPpJlmSW7qbIATkwo0RgEkma8
	 So6YZvqJlyc/YNzCPBj+ZmwUxUyRjS8p/gRkQIGQBuW3eojNgkI99O3uE/NGqrOJEi
	 nKcuvGit7XULA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9AB6AC021A0
	for <ddprobe@lists.linux.dev>; Fri, 14 Feb 2025 01:08:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173949533362.19463.17054853929577168120.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a8c6a3cfc3b24a057bde16e48bc1b6a900f3dce34dca9fdc016be13b3505d9b0
Date: Fri, 14 Feb 2025 01:08:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739495333
