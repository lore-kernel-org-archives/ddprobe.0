Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E9EA7464
	for <ddprobe@lists.linux.dev>; Tue, 23 Sep 2025 05:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758607194; cv=none; b=P98CAWgw+8NwyG7mDMXH4wN3wBHdz8RGVLjHJF4v22lmUNI33KJwcATzW6j+OW9Cx1UvpPu6vbKQLUUoLT1BqRJu8ImrXtA0+iCvIGz0u7L8S+UJNlk53bc5Qi2Z4NicsbjXbX0R5hA3uw2oM7XrtE1LwNqoRBw5iSaHmf1kBSQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758607194; c=relaxed/simple;
	bh=28Bw4xOtHKH5jKxo7sTfKEJvH4DA7LwSvzgWdMV5Img=;
	h=To:Subject:From:Message-Id:Date; b=gfIcYQM7k6vGTwoW2/fZ+hSd0ph28Bsl81OR5KfleOaUfIRS+e8wv7o2ZeGFsuy9QmFCdPkM//KMWLo4y0T+zQt+FCT1x3AUHVEin/yosFdKh+Mz+IQFBGsvKWamCyw+4gkZ7TPvnl9LyGMS9WOUw3C/Es+T2zFpIxHnMDs/YOw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SLyH0WHY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SLyH0WHY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D9C0C4CEF5
	for <ddprobe@lists.linux.dev>; Tue, 23 Sep 2025 05:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758607193;
	bh=28Bw4xOtHKH5jKxo7sTfKEJvH4DA7LwSvzgWdMV5Img=;
	h=To:Subject:From:Date:From;
	b=SLyH0WHYsxa6HRIyPqcsp8WUalrCgI7fh2gNRKj4kZ774IRMSWTyvi9+HZoKV36Lv
	 rI5jST7SHVWi3mpE0pxAzckMheUT4TBRMOAFj7sivv4r2ZffOK0i2EPHWKj+fO2I0a
	 EAOEVjpO//qL/hoU5f0jCnQQgOZ6KR3k3Up80uhLhpYnXpGjlcpKMddhbXqD5XEzed
	 bIq0IruHsWrfzd8IHXDpnlZaQUl9OM+nGaG7ZJQDE1NQcZE1aOM+FiQUB/bJMIrIe+
	 yQNtj9hEwFjhORPxQ6prBFwwBu3asSosqWHQBfhkV8GjqUzqJIUibHk0/5itRqXFug
	 sHJpXphfaWnuw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EC7ACAC5A5
	for <ddprobe@lists.linux.dev>; Tue, 23 Sep 2025 05:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175860719357.15367.9618187900044743959.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 08163e6f6cb91b0ac8bb321642180e2fbd79411329d7873694c03f2dbd56d42f
Date: Tue, 23 Sep 2025 05:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758607193
