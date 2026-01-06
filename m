Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BFE5B30DEC4
	for <ddprobe@lists.linux.dev>; Tue,  6 Jan 2026 12:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767702833; cv=none; b=T9PrWfk6xebE86J7XoY6bDq2pkDArYPnZM0OfKf7VRqNLFZie7QO1qjXqDNZ/z/vimalpgAu72TQMhNiCkna9hEaX14hHBMG7gmpYGFGu/h1cDIXBPWjoXrSvAq1hRjSeMqPYfdX4ZEdzr6NJ21Vyz6S74S77aF4afZ5Sy6nmHc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767702833; c=relaxed/simple;
	bh=lg/6rsknya1UczWXDRrmzFdzc00dJDbk3X+Wpyfh++Y=;
	h=To:Subject:From:Message-Id:Date; b=K7qtyPPEN6UjiYA0yncNI34liS0gpfhJL8yDUmlwgxuhyZTVQ1wmDc+KBYYpkeWmf8zkM8Fezo3Nk8MIEZEBNG+wgDQ0smFsMNSV/IDXULwcgBZq4QevV//P/4uFastxXHDaaiVBDGhuxn29KFw7f8l+VuSZJyPsqHn2FWk17hw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=l8tesOSu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="l8tesOSu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0C5CC116C6
	for <ddprobe@lists.linux.dev>; Tue,  6 Jan 2026 12:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767702833;
	bh=lg/6rsknya1UczWXDRrmzFdzc00dJDbk3X+Wpyfh++Y=;
	h=To:Subject:From:Date:From;
	b=l8tesOSubKswmoVDeu9o2nBWeJn4rq73yDKOaA+np0OLQyIGlx9WPlMEW6tgSUzUq
	 +/FbaSkkQhsVBcyLuy97bOV8VjLknUkNjfRmelHeL0TCdj04Dg21bntxN5D69Ar7V1
	 cx6shJI6ejZ6RthuLH54wf6O7AsoQUKvNmVAb2KD8YjJs8c2OWg95UxteHvJy2FbIT
	 AefPaJthSPK4wjMg1eVh9SDrr2cZpeMTU/iTT4jNQZ0yoQU05xnomXkwFIe56lm1ro
	 rxm3zvwHcwv+L6jBFV88s0eUxxW9iZH4yVqbwWxP+Q9XO4+iPbtv75+vi1F0ORQxAg
	 hHe6On1tekc/w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94156CDC188
	for <ddprobe@lists.linux.dev>; Tue,  6 Jan 2026 12:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176770283357.4322.9900951289488223199.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fc0b216f0f2e3eb95bdaa2a5271d17ca0584da8c3023403d7da1d85dc437d4ea
Date: Tue, 06 Jan 2026 12:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767702833
