Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4FE6B1F94C
	for <ddprobe@lists.linux.dev>; Sat,  5 Apr 2025 11:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743854394; cv=none; b=hpivwpoktMXCrHdYHFjJ4PC9NVEEbu4PZtIl1lJaEbiFJWt2PGf46JSv5h5d4gFN2UlKFdVW25YbJvDEtbVcrqh4QjstY2Mw4cqQeB1ciEGj64US7AlhsIzGtsExq1r0izC2nhrQfoYD/Fo5/fzLpJ8bOqDYoCHl2rZ0/Dp4VEI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743854394; c=relaxed/simple;
	bh=RSZW6vGtHuURq6jjky3BIPQjT4hn0MJxae2KlU2ZKTM=;
	h=To:Subject:From:Message-Id:Date; b=oSeebE6isHK67fww/vMR2vzETvRFvywiWOwsVTg+GnnykJVqzH40Ci1hufDlXYu7e+52tRpMqvlDdnnWoGZ2x7NnMGH0McA7pNXXnbpHd+DtYyJnbuG8IchzP+SaerkZ8dp0B3S4fOIQIVTZL/Wd/zBZB6s4sCdfRMo8IsKq1GI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=q+CxUwZA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="q+CxUwZA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C5AF5C4CEE4
	for <ddprobe@lists.linux.dev>; Sat,  5 Apr 2025 11:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743854393;
	bh=RSZW6vGtHuURq6jjky3BIPQjT4hn0MJxae2KlU2ZKTM=;
	h=To:Subject:From:Date:From;
	b=q+CxUwZAERSGdKwBY6mRHjyGr4pUpx+Ejle3WWFJEiRdqVfGpxbYKzHneA7oDHmou
	 2XIjj3a39IBmC7uAOMI4//B8R7XPNaHUI5N6+XckCb5JPkJwAv8prQmJ/wM47PhO4M
	 JVn5sTdopnUCTVrnMN+iOi7OllDOUcEdqwbXgfeZQ7Vc8IZYyy+vR6QR5KXQQqf4bz
	 VIjbUr1v0oa0PaQnQ3XEur0fPM5Ynp1bprBxarYlnZEBuKjy61m/IyTv1GJq98BM6E
	 JckPl7uglhIUJYjF2J0SeIf5Pf0dF941Q0NUNFAljaO/Y5l0y5OGFfvUjOIKnGrLPM
	 nLCn/T4i/c4OQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A4151C36010
	for <ddprobe@lists.linux.dev>; Sat,  5 Apr 2025 11:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174385439363.8733.9415152581772754483.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7268983ab06f4eab877aa3457bc77bfbd8a1e38a235d04749db9c2a2bbdda1a0
Date: Sat, 05 Apr 2025 11:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743854393
