Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CCFC31F99E
	for <ddprobe@lists.linux.dev>; Fri, 19 Jun 2026 19:06:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781895994; cv=none; b=iml17MYNcnij+IbSZe3fr0tZmefuTtU+XI8XTNdTX7CG1lr1F/aO9z7TETm3X3Z8iB0cQuH4oggYTci7TLCo63lyvkdhlsJViOm/VXjh/CBnoDnEZQ1CCcjwzgUDR5uumZFncpiY3j/ovIrvayLG+WtBDH2oxJAbqEaOOZtr+yU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781895994; c=relaxed/simple;
	bh=128FdUqpc4GDZLcOCnP7GJ6Y4gLnODFWqC9rETwJI6s=;
	h=To:Subject:From:Message-Id:Date; b=C6K22YVBrM1ilExFR/xpoe8bXu+PRqhn1bEHxGQQbABtegVxyT5uE2uODrGZrfqyheXctelf0qPv7YKKph47VNMOkxQrK9xxai6UvexJeZXHJAZOV86MvbZFZe83rwpNzK5JX6kza3co6EFViosgh315yXWhAay0H5Zj73PuFPM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rqVXGnAd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rqVXGnAd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C54FFC2BCB7
	for <ddprobe@lists.linux.dev>; Fri, 19 Jun 2026 19:06:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781895993;
	bh=128FdUqpc4GDZLcOCnP7GJ6Y4gLnODFWqC9rETwJI6s=;
	h=To:Subject:From:Date:From;
	b=rqVXGnAd1L9NNhQlzgP02EFg8W7RlTeDZxV3Y5MW8lJtPlBE3x+CPViJPb0/lJQ3M
	 G0jFSjYtwEOGZaSKHELKbttYquudfBW2IMvGpup7+u2OaJNy3vzd7PoqN3BiZXrU0U
	 KKF9QG9VVLtsbdr4gzvfufDw447uLIlzwcfhX4NjyFGVQ7ABjn7AVCUaSUClenuHFP
	 TmYl9DVFjxQE2TPS8jcnprxJIUAIp5Fx44818FNfw+bs0j2vnHuFORY1kHdVjKd/+V
	 TUu5tLsoaxMeY2MYczzgTZeehkuR1tB5GQ6lKEKrTPwTFT0xuQY+Y4U3qnd36YN1U+
	 mu3BQJ1RDRzNQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE151CD4F26
	for <ddprobe@lists.linux.dev>; Fri, 19 Jun 2026 19:06:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178189599370.10909.418810334286551234.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9c5820ebb5103148f02b206315d1f26f972dc906d3d82e82ccc4463b2b647f59
Date: Fri, 19 Jun 2026 19:06:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781895993
