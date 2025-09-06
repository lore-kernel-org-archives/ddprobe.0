Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 234B21367
	for <ddprobe@lists.linux.dev>; Sat,  6 Sep 2025 08:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757149194; cv=none; b=kqez3UPO0KR5h3IXUkrAaruG1qRyvTu4YhIBbYdSmQvI7gm2wSHZ1fhgkLmsf5PzFhT9WfBUm8mizOQ6q0uCv8oRf3z1BIw4IVav40ELr/ad9iOIiUnKQnL2EVi5Y7+zmk+rio56xq/ZjwDwqE5FQ8X5qcOZylMjeQNhLF7GXK8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757149194; c=relaxed/simple;
	bh=zEv45LfH/sUOo3V+ua/KCSfFpqcO11uRGOgDfFs1yh4=;
	h=To:Subject:From:Message-Id:Date; b=jkKkv8YBijmSwbalvUPkc3Ec2FwOJZvr8Rq49EY2/NJs2ljfkW8XnBtbGtCapnPPiSlDzb4p2J5LOsyl6HBA3uPlJjx2jRewXRcrMsuOUQFXPooJqsWNAMcYFSsHH3klty8pBjptuaoEl7taaBpls7PRJ/I3KDZeSxdjTJbeaW8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=c0X5MsHm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="c0X5MsHm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EA70C4CEE7
	for <ddprobe@lists.linux.dev>; Sat,  6 Sep 2025 08:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757149193;
	bh=zEv45LfH/sUOo3V+ua/KCSfFpqcO11uRGOgDfFs1yh4=;
	h=To:Subject:From:Date:From;
	b=c0X5MsHmw/0R4s9ngO0O6sGv4AIqOIxPCcrAg8BZKA0bVO69mqRxQceiwFx8MP/u/
	 GGR1NqOhR2iTjV/RecFPsj7U1QoMd3oEjGx6yv3xgnnZP24XFEigm0Oth82ZvRtQEw
	 6nzIhJsmRRb4E47Ft+mFdM1q/6k6P98l9gEKHDe2jQ50u2m/LiNDofdCXUmxP+yEd3
	 H0k9l4uw7+qtb6THLi2rL6m3Dm/Lkn9WAqfpwH3xDo2Bm0KKbwPzHlF4+P5lGVPwle
	 2/V6C3bvi/bDIaCmuuWTyTn/4AV7//obpSGa7PqlvTHdHG0YT19OM2TVtnP2jWGWnr
	 SMmzJ3Yz47ahQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 900B4CA1002
	for <ddprobe@lists.linux.dev>; Sat,  6 Sep 2025 08:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175714919358.11843.1792108922514695479.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bf628abdf7671310beec1e163b94f7551c901b71ff07ef3398d836b0936aadfe
Date: Sat, 06 Sep 2025 08:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757149193
