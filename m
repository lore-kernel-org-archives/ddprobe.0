Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 527B71D79A0
	for <ddprobe@lists.linux.dev>; Sun,  2 Feb 2025 12:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738499754; cv=none; b=ITYJ1e8up0YNmZJJlFll5B2fyZQnpwOAUQ/9RVtKJ8kAsiyXY73Kt6xAMRTV4EZ7FkeSksizeFmOfnKRt6rnepDabFou98cmWfhA93ebG0pjO9zlkLP1DWnKKcjEovXoNpGjYIMn9jDeCBwP27TnMiAWGWpTIHlTe3YUXpK84RM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738499754; c=relaxed/simple;
	bh=/J3fC4zgsVVoBs8ogLP82JoxZgdXcJWBSqv3Q1HpupI=;
	h=To:Subject:From:Message-Id:Date; b=c2jdcBZ7xuK5V54CBIsYJQ8UzguEnHpLqV/dANH6OXHQMhbuhHFmhxNkn3DYvXQzXOLGOaT/az1nX6MpHk7GzLE0jb5ZUAk0izU4fyc4ExN2q3hICNpRbDdqlCO/WByD0dRlgr0fUFtoXYzt43C1zLL+StNsb/hKNGjHox3V/BA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tNb/Mi96; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tNb/Mi96"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF6F0C4CEE0
	for <ddprobe@lists.linux.dev>; Sun,  2 Feb 2025 12:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738499753;
	bh=/J3fC4zgsVVoBs8ogLP82JoxZgdXcJWBSqv3Q1HpupI=;
	h=To:Subject:From:Date:From;
	b=tNb/Mi96xzsTXUgFqzglBHg5zNIPMXt0BQODTwAsSspt9qlvtImdh5bs/0LqrO1BX
	 y5B1D0nvEhYklHAO6z//r7b9a640jFJ1CtjXBqjSTa+P0zK2rhlJdYsNthN44Kp6BI
	 OrnFcfHyInrbmzFyvapYQiiwvUPJoJY0fR6Hi8R+R5IgWmLtxNDTvmt+PdzLrRviZ3
	 bqoPwqjGMePLHsatCu7+7XfKFC0+K95iFYiUjs+Id+Qx2w5xjnKxG0wG7GdaachFMk
	 vbJn7YQk/jUKTPGIjqlYNmWw9vi8Zg0ZacpHUClITHXOHRVTg3DKBltyJyr5pMV34h
	 SmTDgnkDmJNIw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98AACC0218F
	for <ddprobe@lists.linux.dev>; Sun,  2 Feb 2025 12:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173849975359.9462.7676118453291324641.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 65f1ea4dd66138766cb18ca83514ecb83fe91c46ad790530f051c84d113cab76
Date: Sun, 02 Feb 2025 12:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738499753
