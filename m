Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42AFD23ED60
	for <ddprobe@lists.linux.dev>; Mon,  6 Jul 2026 04:58:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783313914; cv=none; b=I3l53Mm/ZnO/TkgmWvIZvcjxgFh/TUfjytm15lk8PQG1soPJzzcmyJ9sQRmqgxGIBrsPdI5Xpwlk4/pyJD3xcq4FH/mVuYZ/d0O88ZhEYputRbMK/1b6ZEdJQOV3HPW5U5vjT0d/3WGKZTBtp/CYvs2s14nyR8B9gO+ZOc9ZKMU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783313914; c=relaxed/simple;
	bh=R8UTy5MMCVe6nmzgZSefQOcR4NadF9PYaCTP1PotZ1Q=;
	h=To:Subject:From:Message-Id:Date; b=Mtlrdn2mt4I5v6q9wOmkP4v6D0AW/2MCw+J9wjcIW95zpXskpgRtn0ngOsltXzhfQYWRdMQhZPtdy7V3nDzyftG5UDCQj4eSn1L7izJ4ioE05p7ZrgxKWC7j4C7ihr9jjsoS3IAdS4WxnfDDEQvXTrmhKl1xn1IxTcPKt3B8C+Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=e629Uugp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="e629Uugp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D197DC2BCB8
	for <ddprobe@lists.linux.dev>; Mon,  6 Jul 2026 04:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783313913;
	bh=R8UTy5MMCVe6nmzgZSefQOcR4NadF9PYaCTP1PotZ1Q=;
	h=To:Subject:From:Date:From;
	b=e629Uugp6FXo0o50fvWa6dN7IcFs/ZLONyjUilYOnX7bpNG7zGOC6dosfkA8NoCE9
	 yBdEIwP7PsxB1FK5LhJDt/8spZmq2aJzLCvRYN7hqy6fRxZgCXpzxvew0Wn6WuB3w3
	 pXY+KRQcWrpV0X4ewCU8kGoLP1LwIopPAybGHvnq7BKvPb2oODQ/xHbuvwAcFGP1sS
	 zVBaOi8H0OurjqIZ8mVROs64jCM8+fzT0ivwh37/f+wGh6neGQvJhIXsYvbgVpO1s3
	 STzIpMBC9uf5JpxrwgHzidM7lzRuuRsBgr0yW0xDX6iNBvACbtnW+4ZqPQPljEi3lD
	 Cgoo8IyZ8izGw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B032EC43458
	for <ddprobe@lists.linux.dev>; Mon,  6 Jul 2026 04:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178331391368.2531.17508763454378124866.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 44e18e9723071d1faac143745c8af8895372c55a2c1e12cd94c71e6bdff69c67
Date: Mon, 06 Jul 2026 04:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783313913
