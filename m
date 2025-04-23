Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F8AD263F2B
	for <ddprobe@lists.linux.dev>; Wed, 23 Apr 2025 01:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745372994; cv=none; b=jvNPI8s+A4/xglU3CVqL0YfiambRRJ7CrUb3qTY7ZInk0a8ehM4F6gb5IZz1abTZJyiBZFLFd4o4VFrppAGLqywag7uUQ7H9KQ3N3KjmgG2sQCh9iMPCCu0WYhT+BHDi7uhRs9RTCqqRM2390qi8XHAt2vW+CugduieytToYLfg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745372994; c=relaxed/simple;
	bh=y04rOp8SruwSiB4uykr+j+zRN6poSAENKr7kYjO58lE=;
	h=To:Subject:From:Message-Id:Date; b=T8oDeyipKSeDYILWdzrMdeyszFWiCTX5zzxXqjkR8L17NhHUPydue4QobVrN6htOTiyBIyw5YzzIXJVsKOV3dhByjwgenaTyn3kJP04TTkYUk6KbJ4blesyTK7nmaSertAHi8kljWjfPulqLgvSIHtimQojHy9Zc3JMVxhjl6Lo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uz2A+lQC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uz2A+lQC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6448C4CEEC
	for <ddprobe@lists.linux.dev>; Wed, 23 Apr 2025 01:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745372993;
	bh=y04rOp8SruwSiB4uykr+j+zRN6poSAENKr7kYjO58lE=;
	h=To:Subject:From:Date:From;
	b=uz2A+lQCbOwnYAQC1mq83Xyh3+8qk9l0Muo9dsm77IH9WOR8b92/JJygzAUWllgQk
	 waHs2zzxe0wkCIvFdZoxeLZ6+wUcqNxkWRVsTsQp3wqyNA60gvs5UOXINrXhyJ+EF9
	 054AGIDRApez0TVZXFf7rk/c3ydxO9WsoQ5gx+suXOTuDo+Q5q3ti0Ed2S0W5GfKTU
	 s3pmo2RsOBZw5cBL8SyWEwnt5ywIYzV6uNNXO/vAYzJRSjq1yQYGgRBYDb4q7d65yh
	 3lyaLFVF/jbzUagpklZ/mz8NNUdmxnd7zEi+vwk9HM2pTmxAQZmnmvcDSU2LzfXaOl
	 n9Ywsjh7r0A2Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94DD2C369CB
	for <ddprobe@lists.linux.dev>; Wed, 23 Apr 2025 01:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174537299359.753.803731743927699592.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1c3f6f590caf8a140058ea2e6edd732b7eacb0a808645a4e7b4ff92300177dfc
Date: Wed, 23 Apr 2025 01:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745372993
