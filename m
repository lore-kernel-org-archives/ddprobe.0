Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A7D3D3CB54E
	for <ddprobe@lists.linux.dev>; Mon, 12 Oct 2026 10:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791799234; cv=none; b=nYu+qbUDYDaThb01O0p8LRcqD9WjlM5I6ywIA3Cs55amUecWMIgLyY0DYsDKWMdCPs64i+ktkf4Lqsam2t0x1aKJgJtwiVoHd+hikpEmui76iMUMtX5dXqSrhO8lOp9JRsIf4/JAbZ9JQ5yYfcQKO+e4tC8+QVTZ5UP8xA868SI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791799234; c=relaxed/simple;
	bh=psiVkJ6Uy+2voZrgXORY86coqcxkklGo0Y7YeqoA1lI=;
	h=To:Subject:From:Message-Id:Date; b=BacFQ+tVm9dtlYMF1DOeB8mtHuEAZenq26qwu7WqPGU0OZ934oEfdifHbUYFgVJOlX2e3JZx2ryDQTPtlxJiQBV97RaZROKePrAStQwYX+kypyM01FHeKyioJe88JHb1RNzX5WliCvfpN60DnT/5IkO+GWwsrHHKW36Fv1dtjrc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ICWVHGpK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ICWVHGpK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D08E9C2BCF4
	for <ddprobe@lists.linux.dev>; Mon, 12 Oct 2026 10:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791799233;
	bh=psiVkJ6Uy+2voZrgXORY86coqcxkklGo0Y7YeqoA1lI=;
	h=To:Subject:From:Date:From;
	b=ICWVHGpKoSqh9ZD73eBy1jokjY6WE/E8FMbMwq+z61ZIevWrFC09OnGQ9qbi9YlE+
	 T1cCrBCOSIGTqAVtzQkD7bjtH/wzcrB8oqcqavIW8VCXiNWH9pnPpIGwvRYy9SF0Er
	 SC6/B3twgorrk258cFxbtkSk/+8/4UGnUjFRc4SWgXG2V9NDEYT5xCgcfqJ/YhwULF
	 iF0Kp0DKtou3Z0FNj7H4ISGMik/PtwpQGDbsPT9ScPT0bJOf1o94p9HVasD8wd2MUg
	 CjEHgCq1bZtdInnN5aHo6PTP5J2vnZ2JY3OGh3+/Df3ESAb6s7fTJESLKG7S/3ODFM
	 kiumP52NRPyYA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC652CA9ED1
	for <ddprobe@lists.linux.dev>; Mon, 12 Oct 2026 10:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179179923369.25958.10755857221042157028.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 90c4687ca45873dcf972807d74afdc432b3a262368367cc2d7a276ea226da499
Date: Mon, 12 Oct 2026 10:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791799233
