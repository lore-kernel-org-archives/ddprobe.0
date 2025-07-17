Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26B9E2FCE2A
	for <ddprobe@lists.linux.dev>; Thu, 17 Jul 2025 16:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752770994; cv=none; b=nfxi2Dh2z1GWSD7TqF2kZYG57gMkmCVjslN8zf5gaepHiVeOIU72C99XUWQVJ96XflPbq8L00Ucwp+rqhuKk3PfnAUKjxwDVPRJ4Oym1h5Oiyko1aYZFvaPPdwu1bKGQmKLNMRFnGHdLyHeexshXnYBbMcTGIZL1yuTmCq/xqmI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752770994; c=relaxed/simple;
	bh=WrLtFGcC5HroRX+2fW2d0wPc7iYpCF5X+G5LjefZt0A=;
	h=To:Subject:From:Message-Id:Date; b=t5Ni7IlofqrOYbrwMfEgioL1bYOl36aq4LyylmX714SO5vTHq9qAJFhReqkIRVyYZhxYn/Qm/TINHZpXrze4ehxaGMqhpBGVbjFqLB38cN3xjEdbhqb4Gq5dMSK8+CecC/qSDJX7FhcEBCBEKc3TNvRnxO9N059RraSLsF6xEzA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=a4I+VNhN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="a4I+VNhN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A45E2C4CEF6
	for <ddprobe@lists.linux.dev>; Thu, 17 Jul 2025 16:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752770993;
	bh=WrLtFGcC5HroRX+2fW2d0wPc7iYpCF5X+G5LjefZt0A=;
	h=To:Subject:From:Date:From;
	b=a4I+VNhNFG2PwY95EN49kWns9/Ii/jFLK0nm+4Ns/YaZdYQbiY8rWyAfVV6Ge2ZBI
	 7Rc9RhBcSjJLK7egmKDxzyT7p1Al0BcjhMgxhwN8g4G1DqmDuGiHrEbom+As1PhmaA
	 8MXw4ziZGFrknCQs+PfBvFP0C0FxJ9uVXCL/Fs6eNhlQQNxUBBQbWSYxi4DImk2ckd
	 oJtuLlYwEUcA6cDrGTxklSQUxX2oqu7eOnMMvMeta7v3jbg9Q0iEawJ/T7hutj5cqt
	 SCSjGimtNXUI9DNeKkn9zTofUwhhWO5mWhcd74Z5ZY1fFg4RPTtOnxVzqOIOF6IFHO
	 zqTIgTFKXgMRQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90C3DC83F34
	for <ddprobe@lists.linux.dev>; Thu, 17 Jul 2025 16:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175277099358.11637.6325413961674021570.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a380c9be8ba0e8de3154f1148cee6e0a432b4a7f58393a2710be55e7258fb772
Date: Thu, 17 Jul 2025 16:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752770993
