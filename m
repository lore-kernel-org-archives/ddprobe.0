Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 349EA218AAD
	for <ddprobe@lists.linux.dev>; Thu, 29 May 2025 08:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748507994; cv=none; b=MwjUBsgzY/d4QYYiDd5rfX53zSYbk6zdDK9OmZl1UfRGcatbjsOnbekidJYDjFrVA5gJsfkUdbuV5NwWQwmUTr18LxQ+OpKtrvGWkGOvceX6RpkroVtbetgTF9lGcgpZWSdCkV/fnLwKBVrlsGN+qMzjHqAUVL3FT6m0G/u0Lc0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748507994; c=relaxed/simple;
	bh=avDZdJ2ev/rESqjMm70xxoC9ed3ttzOBkTZ3c5RNMVw=;
	h=To:Subject:From:Message-Id:Date; b=rYr+QFO6lICRnTkVyyWZsXMCzEpDHpFfw1BsKXcl/xQ+nf7DQm4GhVQpus68HBzm2QEqImIJBcC3g+sJH96EahrODz/02W14A5zZrr5B7KspkI52DJmjTN2uXnzO14A84iEXl5DhGOSDhsnKg5DDJDpMBnVt3D1+4K8CT4O1wE4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nevKj6VK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nevKj6VK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1084C4CEE7
	for <ddprobe@lists.linux.dev>; Thu, 29 May 2025 08:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748507993;
	bh=avDZdJ2ev/rESqjMm70xxoC9ed3ttzOBkTZ3c5RNMVw=;
	h=To:Subject:From:Date:From;
	b=nevKj6VKWrIi1OAT2f7AACw6CTlAM8JLbc3viycjR5PIIQYOaVbfOwc9o/wn5FgU0
	 6haXaSIT5/SzYTFc4ILrSVTqZLko3+p/AYBSS87sR2HDTVNq43I+p2WS+iX2yY3tQ2
	 ETF0RmgogjI5Pv2LtUhK3yVT9allJ4uW9nsStkBGcT4dA9dGuGGreXOvB6kUBvlD7H
	 EL9IfCKz9eNj150ZyGtGMAfO5aY2sd6cIQpLGaFQanU4WyHG8pvcduiVsMJFPfB2a6
	 HGk1Q2p2Tp8DxkXzkbfaftGj6AHHPdcaYinNQ2nrJZhpL/o9FyzQ3EJblOQG2SKFbo
	 OOpOsoUcDfvdg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 934EEC5AD49
	for <ddprobe@lists.linux.dev>; Thu, 29 May 2025 08:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174850799359.20941.3012330829320822287.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 450b103ee0892da9bb20ee78ee982c1e5d7983ba26f3c63b5eb4b0a7cc86c38e
Date: Thu, 29 May 2025 08:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748507993
