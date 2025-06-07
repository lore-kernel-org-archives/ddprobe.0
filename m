Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29F5C20012B
	for <ddprobe@lists.linux.dev>; Sat,  7 Jun 2025 22:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749334194; cv=none; b=LO4owvdifsSmfCd+4vg5u0rlo95o9+UwmEhHovRERQvSFM0vdq/MZf3L6XtYXi7uE5mWbEPEa8LszarL7gInUSZaR9aRkPauhZynuBTMf5cc0b41LQpxjE91r7FR6gANf7gdZKpy0V1mNHXFdF0bjX43Qmyj5vWJShcEzT8Qldc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749334194; c=relaxed/simple;
	bh=KO82Ru5mAxLTYW5JdlCvVJ0Md8kRr6lVFIaSKAOKlRU=;
	h=To:Subject:From:Message-Id:Date; b=NmkCtxNgj5MRu28Zzvc1SJl2XKZNtyJ8iQ/7bdwBNSfDQy9X6KDsiYk24uDoznOqv857jgRLIApxGGhONheeutYYMRZ9RfC/O1f94Cjb+ZsQ0wzUFyjNyBtE3PoKlRxc2DRAv5tmBibW/d09nyI7UKyYCDq0We+ajmg/7X3DjE8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MaC8GNv8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MaC8GNv8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FC4EC4CEE4
	for <ddprobe@lists.linux.dev>; Sat,  7 Jun 2025 22:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749334193;
	bh=KO82Ru5mAxLTYW5JdlCvVJ0Md8kRr6lVFIaSKAOKlRU=;
	h=To:Subject:From:Date:From;
	b=MaC8GNv8Xs5k63SERHHEY0sy0ji3bUO4g7VyZL/UFoMWP+bzJnI5xMB/Ea+B9qAmV
	 wz40/zwR6Oh2+3s0nCujy5nRE+Kk5kebz63xNDQUN+3QJIlzmsfkTeUmy5GPCC5k78
	 hTUp/+KoDuzbEZiBcJgsZ0clW7CFJIDdAD/hhwuFCwmNsxfcE2FX47rgudrv0ZEP7X
	 joVLPzdQpSSvHHwiSqCvxchM2+KQdKr+ykqPJZLzpX2Ku8DxPtIyEuu/sqFcEy8rDP
	 BMZFdyhSYz2l8ekHFTqgfxPzD61vK71KkhnAWmbmdWdep1w4DmF8hlcRyOEmApp6Un
	 ZIuDKp4rGIHJw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91230C61CE7
	for <ddprobe@lists.linux.dev>; Sat,  7 Jun 2025 22:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174933419357.6587.16026911290536572178.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ec7a35bf7fb00c90724e1688ca38e61d5ffc35d59a1877eebe87a4083cea9bb2
Date: Sat, 07 Jun 2025 22:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749334193
