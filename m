Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4DF9224B22D
	for <ddprobe@lists.linux.dev>; Sat, 11 Jan 2025 13:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736601954; cv=none; b=npEaLWiTZcv4N5cQKYJnunl0rMVnscIg5UiQGnrsm5GgTDwv0H/rmDksQsM+W+WrOmhlxz9ofjyDy8kmmhOMpGILZJOVw5r/a/SyRHI6K/LiuWdBkH/fVkLF0AL6higo3qIE0EcwLtlXBIraLybLXuDzXFkrKTnM0qkdzueuYQM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736601954; c=relaxed/simple;
	bh=3IeFA7GSndsWwkwQHGaETG3oPg/6sx9bzza59mqcMIg=;
	h=To:Subject:From:Message-Id:Date; b=VQicL54k7kxHqOm7ohWqgu2BQ2Ssggh1Tyd7GNzg+awOVeMTK/SapmT7tK8Kf1lCrpSdzW2YZ8RAGRAXf4RGGQk9Sn/VUkIyFoXj0geBog95wiHodJUCB0rofgMWl1BymZPN8ZO84ngLGO7pxF6pfiIcxz8aUutUH+FnEZNhygw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=atOtCVsc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="atOtCVsc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BE79DC4CED2
	for <ddprobe@lists.linux.dev>; Sat, 11 Jan 2025 13:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736601953;
	bh=3IeFA7GSndsWwkwQHGaETG3oPg/6sx9bzza59mqcMIg=;
	h=To:Subject:From:Date:From;
	b=atOtCVsc+EBp9yMqdUrO2hCb1zYv3nR6WDzv53yJpt9hsEKvXPWT8mPefKhnkwaHP
	 EiSeVmw90gnlDbjIqKYHGiINFGdS8nHLeI6861EfPmssh+Rh6zqFf8Kd1VXhoOhYR8
	 YVKDiyINiy6STS1m3Xr9SQracG7tuJiCk3000f8mwwb8dNkU2hV7GUBsHPt+DnVndX
	 PwMsE9a266E7rJT7MLFdnLkhq0Y0TjP2pA0ZTbKoFhE3J2QT1xg4nWYFfAae67617J
	 LxSzVu2rSclhqHMjpDyzexKpD7gJ4KjClcvEDcQHPViOFMt+m5A7/4WJYWpZ0A+b0/
	 i7v2abdhPYUpA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A7913E7719A
	for <ddprobe@lists.linux.dev>; Sat, 11 Jan 2025 13:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173660195364.14313.14953675749147825227.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 37f61e816333740c6a9c582b0aec0fadb19bc04d89bd30327e4785858089ee36
Date: Sat, 11 Jan 2025 13:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736601953
