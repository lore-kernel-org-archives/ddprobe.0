Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 471DC54654
	for <ddprobe@lists.linux.dev>; Fri, 20 Feb 2026 21:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771623894; cv=none; b=ALL8z89PHRFF/3r+lK1Izk9Jmw2NfatjNv5tWt4izCxGLHpKOYBHKLe7bTK572U/xD1fbeC+vIeBvOXWXJejjZ8hi2DcuaawRmzMQeafyNeSC6s5FfNb51/t6EBRdPihYB1zIcA1eP4tIx4rvnh9lLY0R/3lLE+WkfcQ0PYcfWY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771623894; c=relaxed/simple;
	bh=Sff1hy1/RBnqLmv4YiTzLjUHrtqUHbqhvAFMVMki0dA=;
	h=To:Subject:From:Message-Id:Date; b=aJzk0rnsqwX6k54wBm3tHR3vcRW51dub1Sa2qmG/BJ+DI/hlm5NSwqYBNgSzuVyr1IOqD88lixlb1ZmqjzsKDKgTYdIBXQp2QgNNfStlRFWqIogJmKS30uPQNONlDyZxFd+XhsLwVBQYJ/uq+WyYGaypNzLLJcoVixUP78B0JaU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PQ5/3N9e; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PQ5/3N9e"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB62EC116C6
	for <ddprobe@lists.linux.dev>; Fri, 20 Feb 2026 21:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771623893;
	bh=Sff1hy1/RBnqLmv4YiTzLjUHrtqUHbqhvAFMVMki0dA=;
	h=To:Subject:From:Date:From;
	b=PQ5/3N9efjRkbzRgl0B/5GJtWn5KKlm49V+Ln1U87uHv1bBpizvXiwGxBR4jNCCam
	 oFA1XoiWzKq4NXuJG6t3wC2pbdypoXT6vURZfJ0cQkq9w1B/ziy5qWQ/icM0OSMmAd
	 Pi2oa7ZsU8v/1kUpMNmrzCk/h2EWiYFikC1JiaOlLzlbNyt4IwcstEya5VP3UrG0Yc
	 n1SUKbv3yvPVCKmjpXMCE58r/ThiVKpBr/wZTSPLKWI8N3mgSS3dJx7fC/4cZHBV8m
	 F8kcrcqFHB3jPhfuwtBrM4KRifXmw2fn5y4VsjXkjXgMJfZtfFoIh06Wp9aeC+se5K
	 lkh6AEtD2oZGg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94545C5CFCF
	for <ddprobe@lists.linux.dev>; Fri, 20 Feb 2026 21:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177162389359.3679.17488855732292597277.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1270b7b0df751269a78747023e9d6b15df0dfae71e7b190075563f583e6e6bbf
Date: Fri, 20 Feb 2026 21:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771623893
