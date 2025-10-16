Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DD9412FA0ED
	for <ddprobe@lists.linux.dev>; Thu, 16 Oct 2025 12:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760616593; cv=none; b=LNWi4had9EfR/EeHArY4396mGAL7byv6UcF2V0JHkHn8M5wOiL6CtkYdMoZUzp6ZJgeBXP4YQ8pa/2Ks3eFKd3xOPTN2f2hSqa4AlyrpXZvclfzLpp5v8E/GHPmOAC/Hmdu1nsAQW3GC/n94D0k21aPu8rP+FdmpFODGwdleclQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760616593; c=relaxed/simple;
	bh=TOTmCBCCzMB4wKQbs5lqn6e52lEHbyaG2Oj3IZCRQhA=;
	h=To:Subject:From:Message-Id:Date; b=IlZe5w9Bx/SUKGRdgRXDBZW2XM+G8YD+bfvp3zmMUm4zRPtqbXUEWt+aMfN2PRqtzPwdk53TFclZDljDEilF+Fl/X+cSZAGyI94m+rB8XrfYsfmb9mCgRC2emkk5f7xPPQ49qnOOcN7ji3jHIaJwNXxR1agcAwQQWhxxwnDO7Ro=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=J/GOxIpw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="J/GOxIpw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1603C4CEF1
	for <ddprobe@lists.linux.dev>; Thu, 16 Oct 2025 12:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760616593;
	bh=TOTmCBCCzMB4wKQbs5lqn6e52lEHbyaG2Oj3IZCRQhA=;
	h=To:Subject:From:Date:From;
	b=J/GOxIpwdSKeAuApU0uUil0OWD54I78iNVJnlbuIXUA3yGGoMw9qv3OZJjjOAo37O
	 OkVVGAD9uB1cp9QOut7oAGYHPQd4tdgmZzkC8L26CxWbZOSmex57cqZQQGVmHW02nP
	 uCobnus2IfvarnNRRWY2DD0chmVHJCumI0ZhT+F7CF1zbabl5lPFPUED1Y7eoxVL0Q
	 +0mo3XIGlNHqH+mtSX7CbVqqt3Ly6pqL/pXGS/8Z8bHqkigemRUWJYuTHv9fbAN3Z6
	 2LhfExQEE8ZiQjNmSLIfgE6ek9VZ0J/+ofqijJwvH1/A0ogGP7I9QBn8jRJ8pV15gN
	 NoFRgW2MMbWNg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90719CCD183
	for <ddprobe@lists.linux.dev>; Thu, 16 Oct 2025 12:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176061659358.1435.1048054601586762767.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1db9310ea482bb6d00f8467b7d1ec0d88aa08cdf74be8ed662d40b3af80b9eb8
Date: Thu, 16 Oct 2025 12:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760616593
