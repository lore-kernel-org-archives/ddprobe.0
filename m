Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F256433C1B4
	for <ddprobe@lists.linux.dev>; Fri,  5 Dec 2025 08:02:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764921777; cv=none; b=ka444Gz5cbYzyw5OWkbsiQSNjrn+/8OebEKO5vgdM1wIX0TorulbG4xSXQovvijtEZXrPLc7FsT3C0vJK7S3F0JYQ+HYpd3VbK15BqBs97M5rsbv8zqjVuOwZ59bCPFlX68w++gHOqQ1ZMsBrbbdju+7W+oXucNXndPetBqH9N0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764921777; c=relaxed/simple;
	bh=3x+k3T3/KRkCHj9YRsl1rC7aDjeW2jCOpyUDnu6RYi4=;
	h=To:Subject:From:Message-Id:Date; b=slIUjLThozeMJVgHN8/Qyy0CZPAclnci2uT26yXiQcA++oB0DK1QDNXcBqRdFGjIFV5WFFjunycgOoGT9S9fJamLOSz9QmTa0Xe1TFWX3gw6BcenvjGFkSRjf3hkVG9RSxUiiDHSPeTVfSJdFp9oB2F/NteqDoiS8qmmvc1qdx0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=A4DiKkXZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="A4DiKkXZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A97DEC4CEF1
	for <ddprobe@lists.linux.dev>; Fri,  5 Dec 2025 08:02:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764921773;
	bh=3x+k3T3/KRkCHj9YRsl1rC7aDjeW2jCOpyUDnu6RYi4=;
	h=To:Subject:From:Date:From;
	b=A4DiKkXZHWdtrzuet4wMaNa6JvTbeUtRJtJcYfrDaQxTAeH3YqI75KIMrzMFaSHMH
	 5YNmBkrMVN9XcRF0EXEL218eTfeNTVlS9ePsTottWuZFS2C95gVzxjVxkhS5hEdUnV
	 2Zi6ctd9faQzIusZMgayGNlSL9nM8E5P6Vsitp2PZwhwDl5zDaevMbJdUsJdDMcM3F
	 8NxHaPH2cJUJkkgLc8i7Xm7OZlavlRZM8B0mBnajkYUvmseWYs2XsQK/d5Whd1gQdb
	 7l7UtU96LWFlEGD4Fb6pN4oHCkmMI8YiOxvoEpZmZ2gCovsp24aelUe+IV74aw6E8v
	 1n4NYJNuADwDA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9755FD2E032
	for <ddprobe@lists.linux.dev>; Fri,  5 Dec 2025 08:02:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176492177360.13494.2573163667127025456.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 68c9f7a79172f0eed62b25e644658c1688c11f97b308d98261853b9379161c7c
Date: Fri, 05 Dec 2025 08:02:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764921773
