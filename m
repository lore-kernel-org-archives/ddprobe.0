Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CD207309EF5
	for <ddprobe@lists.linux.dev>; Thu, 20 Nov 2025 09:31:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763631113; cv=none; b=V/d5n722N+nYIpM4kRtGvI2Cn5IJmKUco9HhsP+KPozb34ybFTB2tj2aX2Dt7PtIKDp3ChvQaYHA8puQkDlEoMkq2pk/eJk8DkRtUE7g2AKwN6otfDkS3EfcB7xG6xJ721fzbGnONNH5tLETQQB/hliOYFCe5qXGqOY3Fpxkr9s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763631113; c=relaxed/simple;
	bh=AsG4O/l4bwvTltvIPZMvKBP8yHxSlSrOJ5XVq3eqbZU=;
	h=To:Subject:From:Message-Id:Date; b=koOoj7C6oODAMmRuHC3Q7HrWsSfjdH8x90oY/6AAR/YU2yLDS2lJmENAGjuk4ZKOrg1rK1py1pgWTzBFpkiwfWqiIp1f4YT/Bn5TE/Jdtbzn/s//E32kCCLiV4VUZw4Fv7raiFm60nLq5mJqWbzSpaCOr/iCiIWAgXBDOr/iFfc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TT3dwXir; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TT3dwXir"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADC37C4CEF1
	for <ddprobe@lists.linux.dev>; Thu, 20 Nov 2025 09:31:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763631113;
	bh=AsG4O/l4bwvTltvIPZMvKBP8yHxSlSrOJ5XVq3eqbZU=;
	h=To:Subject:From:Date:From;
	b=TT3dwXirJfS34i3+RhFrTup5BKd0HROS6H1UKCWS861izFicORYZe+vay8+YQaOrN
	 3ungtrNBhFICEeDsCLThSHYRn+iIWPhFDg6XK1CZOvmF5LONOklxgmUnnTlW5YeaaE
	 UUkLhJvtFEpGM3642TlzMr4Gvx8uX55M/Koq16I0ymLJZ5vyjbpkdgb3rsh+5KoKik
	 annDZiPAquHFA/UwlajqSJRILcL5hc3JfV5/8WlbA8wIiVB0bfSkZilb/fJWyndRCI
	 OcIg9sYNraq4It8rlF0pQdndD3xwTZlZELG7yzGZ72x+cMgyRSBeGlTNCJcUry7nzq
	 28nQb09MZzvXA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9940BCF64AB
	for <ddprobe@lists.linux.dev>; Thu, 20 Nov 2025 09:31:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176363111361.26450.11198827993898707987.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4d8ef3b7f478743ae0a0fdd716e337c6a533aea1620aa0ce1b9e3df00f7f02fa
Date: Thu, 20 Nov 2025 09:31:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763631113
