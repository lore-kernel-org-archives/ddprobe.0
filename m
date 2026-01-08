Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E8C6F272E6D
	for <ddprobe@lists.linux.dev>; Thu,  8 Jan 2026 19:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767901434; cv=none; b=h9OrdjvqJGVWaujRVj/eGxkaYxdAjFtVRhUuz8tjGR/gugcSQghl8reDT1oZerCQVpK5dRUN67+9Syd6RwC35x6Zn5YYJSBjmWg803BsQvBJIzMbUNuylVnhHpi8t/kd+Alg0KdXZ22lEzBCW0b39MVUMlNTQmWRpegm1XRqA/w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767901434; c=relaxed/simple;
	bh=jvekhpmbF9tqOvb4s4PhXDiI65caH9p4gCyLxHhOCG8=;
	h=To:Subject:From:Message-Id:Date; b=MrFag0bnAt0y/dMKt1voHe1gzHGFv68g7yXkxLlWaiB0tbgAsoe48H+bohhbNMXbOGne5441LpGLvnPVEFdxJZVzoleS1GEzvmva4nnqvApkKEKtEXFGEQEp9k1S3dnNHy3yHHVcKSoh0dqBtTPlTgj3FLzmP6yxz1lYmn/1X48=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=M+LHQeID; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="M+LHQeID"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9C588C116C6
	for <ddprobe@lists.linux.dev>; Thu,  8 Jan 2026 19:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767901433;
	bh=jvekhpmbF9tqOvb4s4PhXDiI65caH9p4gCyLxHhOCG8=;
	h=To:Subject:From:Date:From;
	b=M+LHQeIDX21x68578w+aDcG45q33emqBb+2wUQZtnTPA2PC8tN8sC45+9KTZ++k00
	 PW8KfiEwfOWtgusPIVM3D7Rs4CT3Hg4ZQZmcNSp1fbA5c/tJQ+kDQKExplD4PHo4bd
	 UrUnk07T7BDj85uzQWo8QYCDFHEt1LQUl8G9RNj+LeUAk8PBeUvxNfvwJJfqtfSb6i
	 LvGJqicZfD3Vc71HZ46KqpYLE5eXQxjv5ZbQ/yO/frf/3Xad5fBoHnlteIPHWf/sQv
	 ppQ/P/yItWohviWOrtx3OoKXkWdspF3tfsQaVPzCgmNj6MG8LJOVwoLTR245wknOkE
	 1yFA0DXGwjMnQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E860D1D489
	for <ddprobe@lists.linux.dev>; Thu,  8 Jan 2026 19:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176790143357.21376.16766743564815626279.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4efa06873c832e451858140743001719d55a460a3b19048abb53005ae9fbccad
Date: Thu, 08 Jan 2026 19:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767901433
