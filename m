Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29776260566
	for <ddprobe@lists.linux.dev>; Thu, 18 Dec 2025 01:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766022234; cv=none; b=g1+lcfJFT09F2EieTvC55hXQHiJY7jQ9vsUwmrXimtwVNEGXFqm+l84zwHtpJfKHVN0Z9Tg7MdYcrfLouXZNKSgw/Kl1D3NC9MsrXyvEk2AajVN0EFwfmje5z+aY7KHqEP2EN9YS8cpLljnusUPa+h8VsV7fe95s4qfMN0Jvss8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766022234; c=relaxed/simple;
	bh=LcgkjLixIOwEXZvH2FoX7I/plCKjEHdMydCCjWR5Fuw=;
	h=To:Subject:From:Message-Id:Date; b=JAdLhEfon+DwU+QEj3ifMEy6vM5MgWruONGooUCB6NtG5JdPBLHQOr31yyRCsQReXF+4YO1+0q/v0Cmpd9ZLAHxW7Duq9gyh/QUfYrFPczCsnwRjD00Rr5NJhN7G804WstgmXs6TKF2G7GH2c50pfD8u2smgusN3zc2/Q18rXMI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WpTuNT3m; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WpTuNT3m"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8537C4CEF5
	for <ddprobe@lists.linux.dev>; Thu, 18 Dec 2025 01:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766022233;
	bh=LcgkjLixIOwEXZvH2FoX7I/plCKjEHdMydCCjWR5Fuw=;
	h=To:Subject:From:Date:From;
	b=WpTuNT3mtncNjmLId8cq9y2uTCzZx/YbeiSI0HWoYtlal8ip85JPJIAnpnP25pzX1
	 5FZ45LJV/9Jt36FQTbYCzVZqvAj96NHBNiAcjt2ylZS2d9q1qPbE+o50E2VOb9RkFn
	 34MUri5WIGYzQujZJIm8rIbNVwJq4bdRnSKJ9LUtH8+OpVzBWjQKtZggjQkaldacly
	 hzLNtysVDQfvpjbPSKPgczqsefqtLYENVpCGMZdDvJ565OdtzkucrkMpF/7m/V8uhf
	 lsbuRjMGsutb/rzLIzeH+VJiLGOAFmIXrrEt6UkMOgI1bq4aIFgcfGEbG370SAHhtw
	 4+DLlg7TzkxrA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93B9ED65C7F
	for <ddprobe@lists.linux.dev>; Thu, 18 Dec 2025 01:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176602223358.22775.14486344036318637056.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ae1ca38d6f060ca3dba32ceb92fae39d6ec137063afb8b7ab5bfe6ba117d56d0
Date: Thu, 18 Dec 2025 01:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766022233
