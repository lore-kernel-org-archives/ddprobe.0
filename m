Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 259DD15B54A
	for <ddprobe@lists.linux.dev>; Thu, 16 Oct 2025 00:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760575194; cv=none; b=Bq7qJvkuKn45cGMFb2LPBqYBqq590KQyISk1+g8XozWs08LqxaoZnky4vDCl6tyWv92Q+8TwDOQmRajVfV7TQZ4OhTwMpC/oTJX4hqQpfVwI2viwPR/lgDIqQfZFtW45NwjTNLNAHBbky0442bedY1Do+E+yBh5hTiJRszv6HU8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760575194; c=relaxed/simple;
	bh=oMLzKBxmbXbIhXwvCLho6h7jTWE0zI4rosso/eqEc/A=;
	h=To:Subject:From:Message-Id:Date; b=lGGNqbW5ck7yfiRiVwqFtwzlKfg5e1fZna/eqvXFjGJvIcGe4oPrBLaEC5hw7mu7XCqUQ2N4Q5Kzo0yoWWSbRwspp1r/FadyKYxcxsTXTZUY8JdcgnlESJzueKD+5g+jGFsXqYqe3OxleQq9M5t2P98Jv6548OddmZlr4uuihYI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=o3cMBWYH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="o3cMBWYH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1FF5C4CEF8
	for <ddprobe@lists.linux.dev>; Thu, 16 Oct 2025 00:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760575193;
	bh=oMLzKBxmbXbIhXwvCLho6h7jTWE0zI4rosso/eqEc/A=;
	h=To:Subject:From:Date:From;
	b=o3cMBWYHZOFmYRMpTFjtOHkmvKOxIH2IJuxS6vgepjrxAvPWK3AojjA0GDlpQXg/O
	 b0M4xg+06cJ2D/mUmqdrsW+ZQrnx+eBCYqSH0yRLnToe615wpR4mFWCHXhzLugU1fy
	 Z84/XP6uzTDR1IQgCN0YT4bekOC3D5rUx5c4Dj5vbnx1uZw45yAgTi6Odqzc/EwmXB
	 pfYaEMBbOcfD1HB8rVSnTQxWLdO+8j3ZIYo0lG5hB97qxOuT/boPm648K6uniFgIIK
	 vmSP/E1Fd82yP9dPC1jUVETjWn85xfdf91LTzliUSO0i4U26Jf5LbuexJGhxkQR0mM
	 6Auo7/BC/6DzA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F64CCCD193
	for <ddprobe@lists.linux.dev>; Thu, 16 Oct 2025 00:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176057519357.5868.1312271755391472146.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2c958f5e1e29b8b122ba370df87c23219d558d3fc2e4ca4dca0a49d7c2afec80
Date: Thu, 16 Oct 2025 00:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760575193
