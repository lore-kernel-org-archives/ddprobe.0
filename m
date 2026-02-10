Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16F9B319601
	for <ddprobe@lists.linux.dev>; Tue, 10 Feb 2026 11:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770723834; cv=none; b=IjiO9kqSQGvcPTHw2MkpO9+iJWw8h+KoU1iafGYbwu6V6Bn4ewsL1+qfIia4AKFEnVkZlLSdoJInJoO6zC6TaDOq13vo5S06lSr9t76zAMXeylPuPwxL0V7Hf4n6KCB5kG0M7WU1D4AbISQ4AukXfwD2jcbrT6KnPAzxMU9crJ0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770723834; c=relaxed/simple;
	bh=iRxRUgg7cpFm9wYnhkspqwWCH5l7iEOzicL97wdJlVs=;
	h=To:Subject:From:Message-Id:Date; b=PR/PoK4ZbeOf2Nk0rDU6YaFjOpFwJ6LB2s/jbdP1PGTjf4LrKxv99Qo/Hics4mhI0EQnriBXFm7VbafCifO3w/QQSeip7WCKQGLQ8BmCDSa+cthKCjMeNZVJE/6bSomwhDp4RX2wBg5cjtaEEMZBXzuyAbJiSjw7cwNNtQicTds=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TRjGfOs9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TRjGfOs9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADCEFC19423
	for <ddprobe@lists.linux.dev>; Tue, 10 Feb 2026 11:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770723833;
	bh=iRxRUgg7cpFm9wYnhkspqwWCH5l7iEOzicL97wdJlVs=;
	h=To:Subject:From:Date:From;
	b=TRjGfOs9mt559kh2N9/c4BNyI6+UnKP0X8j1/dg9hJk3kFjefZxDxzqK3cZeEYp53
	 v77qbK1HtdBUxJqEacc2e3psBwQ7fgy4aB67gVJRAbLZgVeA5eCPNqE7yYk8uNtDsP
	 qIWE1FIeZNnu3kPC7dYWhoUvtv53UdcHx+N8/22nPTJAvp3amzt/6HB1reFXpmhtl9
	 HM04jrQG1THn86J1q2szKnFfBbiKJyaOBTytMIa1E11zYb+oSIql5u1GtzpQ84wVt3
	 1wFVWq2dglUt9rGgtA/DEG7+BsfdiV1JUSJfVJcd0mtA5CY34IZEsHj+0INSOAjdpr
	 sRzj2ghron4dA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97847EF0702
	for <ddprobe@lists.linux.dev>; Tue, 10 Feb 2026 11:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177072383359.28531.11847396079845682633.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 950aaff2ffc722891955349d463b3ffe3c542e4559b56b79cbbd72fa61c5cf4c
Date: Tue, 10 Feb 2026 11:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770723833
