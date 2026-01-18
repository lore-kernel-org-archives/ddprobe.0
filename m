Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 13C676A33B
	for <ddprobe@lists.linux.dev>; Sun, 18 Jan 2026 17:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768757034; cv=none; b=EZO3TTybBh5mbIb3WKLpwhEab21WRxwV+xegFmFx6yzFJn0q093948V3ZrG7CGpJDCPe8r4S/M9A7xYE9PyjyzW/JT4LmAmAGnYDQ+z6wfE0+HrYYr6zoyKCMlX0OhyGO2W3vC56xcgmDB22mLiOh6OUz7Q2U7QidF9Jh0XBa6c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768757034; c=relaxed/simple;
	bh=v+sMVwgyKhb2fxz6qglo7U7uMkUzgMnk0Rx/DkMzh6A=;
	h=To:Subject:From:Message-Id:Date; b=VJgNzyWq3CbsR7sTd061NdEjwr/4oTUhMmrQccv0Dr0OQooF040HTQNwRlA5eVjFkQeZBZeFM+LYapJKJdxtaJOS7FO9GTGf2Iw4YzdpsG/ZzTGJwgAvYOMGOo5BT03BSbjydMuxcNc4y5RJBykC6YpptqP4iRzdF0EqYTA7n6A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=o3n6sQKy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="o3n6sQKy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A10AAC116D0
	for <ddprobe@lists.linux.dev>; Sun, 18 Jan 2026 17:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768757033;
	bh=v+sMVwgyKhb2fxz6qglo7U7uMkUzgMnk0Rx/DkMzh6A=;
	h=To:Subject:From:Date:From;
	b=o3n6sQKywWF5wDM+MT+kCQ0JLWj5MEmUoiQqlBTWVFVcEdNAh8O1zPxY5d5ZiTPxk
	 BUCoZFG28/hcWb2iu9HBv9IcC4cL1lTJaHB6JkcdP184fY9Pqhjzq+OPWSMqHHteQe
	 kDFmdyXQgkBSddfgFa3qN4oJRbAf8yJytpDFmvT8L88zfuHkn+UPCVpBpwArlaK85k
	 6CyMjxxq7gMM7Z7MGVcjkMGptJuG3HWyi3kSAvNT6kn+9LQ83sOywp9vGXoAUurxCg
	 i69BNSZkYU5ko9Iy+0GNXuzmAHPdKtujpclheAVKysdmh2r8snbMfjuicOuaMAyx62
	 75uGC0ztk8vTg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FB86D4A5F4
	for <ddprobe@lists.linux.dev>; Sun, 18 Jan 2026 17:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176875703357.27547.13848382681905303496.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dca229059b0963f32a2b87dc474912ae527b09e88a85c56e3f9ab32789bc9d95
Date: Sun, 18 Jan 2026 17:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768757033
