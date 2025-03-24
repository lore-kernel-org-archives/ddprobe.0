Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48C3BDF78
	for <ddprobe@lists.linux.dev>; Mon, 24 Mar 2025 10:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742812194; cv=none; b=RhE/ihCXk43a5tdKXCTxnM4dPvLqd9U6kNSMWmSb0UztSnObwRaeC5+7z1dmdk7VIpO6axqdZcSGJfr9Ifq4HglpLay1yxBHOyacDNcqWXo9Ggs+hzylteVwapvVhLU8w5Mvq6Mc1rGQ6BWvvog/kiQmDZL4v9yUunvu8BGv/W8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742812194; c=relaxed/simple;
	bh=4YkCo4m9dDdSQvLeMmCTedA6y2XnPCd6YSQozINNkwc=;
	h=To:Subject:From:Message-Id:Date; b=qK1IZRyb6G3Oy723eGuXBeSjGPLchQRcVYdBvXksj4sFFXOkpnfqqpAYuWv7eobT8xvdLY3pG1YMXQiV0nslVGx6mUxHQc49Dx5gGUhfFiEQTLGLcdR33LUfaiq3pPkYJWIu1sj8LU65QWMUpM+nedygL/P8klAYBbykfwfGXpw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lV0WVall; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lV0WVall"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD7BDC4CEDD
	for <ddprobe@lists.linux.dev>; Mon, 24 Mar 2025 10:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742812193;
	bh=4YkCo4m9dDdSQvLeMmCTedA6y2XnPCd6YSQozINNkwc=;
	h=To:Subject:From:Date:From;
	b=lV0WVallgWrY9lTBGn3/whJ+a02TdeoYhNhF+PFJTXgss+Rr+hHct1Qt8WIKuHzCm
	 IOfIQiu1JMbdqqc4820i35YhKjC4TKY+37xfAy++f2tuKQjMyXgOR/jkPkOJJEeVGT
	 z5pl02imBk/BxG8WqTfRwj1SIR9I9G8KnwY8PKe1dRviF7CJlhqmp1leQVFXsPBHXn
	 4Akm5O+e9+iJnIAaZtldxsvF2WSeHm7advKu/42QTtd32umpSH+8/ClQp6AHWgFYX1
	 aCmEZ4FpsQ4QS5oxZOx+ktXAxQxRNGD2vRY92+m6nQmyz8BJhlVjWJ86NJxKeQt//a
	 fSOA7MSOftqtA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96E91C36002
	for <ddprobe@lists.linux.dev>; Mon, 24 Mar 2025 10:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174281219360.18743.4931816692411242392.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f50aedf47959472c65081ffae5415e7d9daba8645d176d3ee5aa7c86b459cb2d
Date: Mon, 24 Mar 2025 10:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742812193
