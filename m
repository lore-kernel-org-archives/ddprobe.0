Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B3F070808
	for <ddprobe@lists.linux.dev>; Fri, 12 Dec 2025 13:42:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765546974; cv=none; b=jaPfvl8M+Bfo2kX79nWpdOet/8uBwP31Z146RcJDZ+c+/u6B9taAZYjA++ZTYsEXz4s94kI4xLiW24xFKmXlQgIHnqMOW594YhgjZ7rAaGOEp22EpdB7m0FATk4NqAvsTMeqcak22e5qk5l6pflpFDBCifDvCsPClVQorB2VQqs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765546974; c=relaxed/simple;
	bh=jwBLAb/5QcNcom+uoKUDD+lGx0qNqB3gFTUed1MC74o=;
	h=To:Subject:From:Message-Id:Date; b=BMaWwQGNyrLGPe14c8VnJ4ekycYjrsBITIPPH07hXB5YtCHQ2xxZhtFpTe6oGOK/Vpd7rDotTayZQyJUGZV8pS4lPZuNioZ9U6mZSAJIBW2lTlJgTbl194y3zP9y1iyr4rKBfOgy1rbUxWTUMh8FrWv11WJZGrQXOOBNmsefu2s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=r0OIxbeW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="r0OIxbeW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A19B1C4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 12 Dec 2025 13:42:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765546973;
	bh=jwBLAb/5QcNcom+uoKUDD+lGx0qNqB3gFTUed1MC74o=;
	h=To:Subject:From:Date:From;
	b=r0OIxbeWemijnDidFOGkRlHtu1N/w7HL9Z9OWB94nNz7dhOEh1rw9UwGm6BAVF1wt
	 lPvl4JejZQMI1Kc7fMpq3nH3waEo594cHQxsv6PHToJuu+BnYVWtLpzlALoENMdYdk
	 dwURzvHurWhfhtMaZrHDVfifiqgNjZ8hUzFYairNDSeCGVmJLuoy3IBL7ZjZwBNC1T
	 Ga8U/zuuwQu8BFWC21K5sXqNb8S0cSWBDU+00KheSCobU0xWDfF4LiTzE2xqabq/Wp
	 ir9ugAn4XtyZokE/kX7C2FYDvxajj+gD+ObFxRuMDY2wPUpDWH50zXaJBuQHhfhT0t
	 w1mcA8zjiu53Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90454D49228
	for <ddprobe@lists.linux.dev>; Fri, 12 Dec 2025 13:42:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176554697358.32444.13504707089536759835.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1e2ecbc4ff295d037e9ae76f1ea31ecd11838e5872660033909fbe6409212221
Date: Fri, 12 Dec 2025 13:42:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765546973
