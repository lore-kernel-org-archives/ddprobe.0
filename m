Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 57D9013DDC6
	for <ddprobe@lists.linux.dev>; Tue, 25 Jun 2024 10:13:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719310403; cv=none; b=NOR8lo7x0mQ67T1V9hGOFYGUfPiToBSfl6apSTblvlikQQg21LveLuJQ9AdDfdfz88xHFRpjw+5WjHFeOYwMsBW3WcN/C74x6mKeV0P7KdQFZWJoOWEZdX0SGTl8WoP/9Yg+K1KuTbd3203k3JN6Zzdo1qs/4TNEy42V77cZUfU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719310403; c=relaxed/simple;
	bh=8RB8cpGO6vPNBozzgMKcYTVCdFc7x8F3pToqe5XpA6g=;
	h=To:Subject:From:Message-Id:Date; b=r8ynKgLeWPbgyYD5TTrLckq7dwDtKwsP5LBe5i8S9/oEcz06BHvD37FwP0hlhR247BUEt+FG0oHVyhfQSiwnbX51qKMUTSJhTWIC1JGGaoSGL6243Msr+90xoI08uRJEFRiElG6u/+WRZl/q5QKxkhXgDH5XpH9NYzJ5ge3QQvc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=R1qrwxyf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="R1qrwxyf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E2C88C32781
	for <ddprobe@lists.linux.dev>; Tue, 25 Jun 2024 10:13:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719310402;
	bh=8RB8cpGO6vPNBozzgMKcYTVCdFc7x8F3pToqe5XpA6g=;
	h=To:Subject:From:Date:From;
	b=R1qrwxyfyGafGhNDNyIA8M85VEgLE3W0wVVY+yeWGn8an+21N2L6Py0ALpOlTXbw0
	 qyFEAo7LGNJ9IhyHVCRCiN7BolNjtXuBPzprygj1qgWYejpFy7W5ByjpQ/jdQ/pUIW
	 YLKZBdeCX1o6YRblsQzajXTjmHDfnmobjZUMQ9QorOWbl72Ku310gq4NlP3ws1iOpX
	 YOk5Obc0PePEXM/TrUAKtCsrlWZIRR3QfP2lpicpVum0orgSZP6UqKtTqkd1PLdJri
	 WB+6nCEEBQBvhtQIpDXjpJE2QunYLBcdWkjc4iz0ELbvh2ixY+fnk7TvEijb38amHi
	 dOSW4q944MdGg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D083DC2BBCA
	for <ddprobe@lists.linux.dev>; Tue, 25 Jun 2024 10:13:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171931040283.29475.2622380487077707219.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 93b83ad9f80d6413e7ddbb8a686bbf996e3cb2b94c6c69240860cbeeacfc9139
Date: Tue, 25 Jun 2024 10:13:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719310402
