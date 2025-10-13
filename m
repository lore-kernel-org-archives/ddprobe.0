Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3102220D4FC
	for <ddprobe@lists.linux.dev>; Mon, 13 Oct 2025 23:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760398794; cv=none; b=k9dAkkjtfetKxcufVex9KGKA5Nm08IsLsPIW8PCiyBi+GkCYuBb+OxMd6AOTpUxPHvb6inlinME+XECKHpce7B99Uv8yJXBGn+VPuQ59YK+w7tormUC8WNukIAbnUYa4N8kR0HCgfqIhnGRsQiIzxB8uwLD3MgVwbsTHQsTit2Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760398794; c=relaxed/simple;
	bh=WT4TA47P5I0USlcbnlUsUYNmXwLih3Y8Um3VcFoAPcw=;
	h=To:Subject:From:Message-Id:Date; b=Ustn15WOMXw9ywLwtxWgBaLpeoJ/uv6Yh/Qy3MEW4OkBvjSYi8f05lBRU9Gfxck3GtCWWd2okpmpaH2AVjmAlzzRfcHnSi3EFua6dKbRpLuQyy9JGOxuv4oFd+F9OTYwTB3BKA2WES3cx6hX75WK1oWc8vmDG9H8zSnED9vZGPY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RhT7X5M1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RhT7X5M1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7CA7C4CEE7
	for <ddprobe@lists.linux.dev>; Mon, 13 Oct 2025 23:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760398793;
	bh=WT4TA47P5I0USlcbnlUsUYNmXwLih3Y8Um3VcFoAPcw=;
	h=To:Subject:From:Date:From;
	b=RhT7X5M1s1tAeQOJ8M5Q6qLzsX38GtKqGKN6xHc9647S+KrxqyYzXoOaGfNg6233f
	 kIIcLTlWGcd4LNpbvxv4f+M9+lIEcmt1yAdvwryqYJH/8ZeljmPzlez0FjEz+4aC4F
	 7s0++JMWxDjebCrRqw1zFcDR7Qhqeh8IDE/Marb7ri2HvHcggPIem13giDdgyRR1op
	 6hJfOL4NAwYNtHvHaPhCAI8ASDtrP1cO14Qtf2h5Ni8SZVDqqhJPiASIgbdiPaRgtd
	 nBmMO6+4kmIDvOX66olqkcpCRWHX//TqAW/uX3sjsVvtvcNPzBFgrkjIv7/3pxAAb5
	 9IF7Fx1UuQQJw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9558DCCD183
	for <ddprobe@lists.linux.dev>; Mon, 13 Oct 2025 23:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176039879358.22149.673865093506098290.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 09bca466caf47111a8ba1ffa579730cf5127d4643aee406a94ce370ac1830a7d
Date: Mon, 13 Oct 2025 23:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760398793
