Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B9E319C56A
	for <ddprobe@lists.linux.dev>; Thu,  3 Oct 2024 16:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727971554; cv=none; b=KjUxjuYk2Dq9+euMPrXjJlcENQ9f8lxSy76p124ys67IizpUBYeo2/IAucjHqxfylefCCvNsDr07HcuDlESJbQ3241yDnf2q9q0t/Xzh+K+/GrfTMcCosv4fr3vZw+L/2ucVx0IGZpMG820Kc51g+pH2+PV6h40UayJfpGkrLRw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727971554; c=relaxed/simple;
	bh=p6fXbLhEPXYnZsjdpYjxtZlAJqmhp2wmVZC1dSXzN1U=;
	h=To:Subject:From:Message-Id:Date; b=IK6PbSUFMwwXzfFft0G/PLabX9onTnC3l5RyWWM0P/3afjEdEuSimS9rwLpFadDDC3FcrcjHJqxiVD/jcg2vPt/4TOWGNJ+cmBO2hdukU0m5IzmMx4Dlub7Qklk2MTFPEB2Ti3FE8F5a/rV9lvsRDzotIkornQyXwCODt7yJpH0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DuOWGqxN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DuOWGqxN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5B43C4CEC5
	for <ddprobe@lists.linux.dev>; Thu,  3 Oct 2024 16:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727971553;
	bh=p6fXbLhEPXYnZsjdpYjxtZlAJqmhp2wmVZC1dSXzN1U=;
	h=To:Subject:From:Date:From;
	b=DuOWGqxNKdUAIH9z8vdIUCswuHfX4Zc7iAkxfH6yijlJv50vRr4fZ/xWU7cRi7H7P
	 EBTqm120zlxLlfJ5rKNoasPSSYTGarjrxfEd0hDvlp9Ym553YsXhsgiecV5YhuKQvy
	 XbT7M/vt0hJAYgpLB2FnREVhc8U2BJLEhUnUbGw+u4h7mpAs4BT6MFTs2JHnYSjAhj
	 0rSXWsBS+h/I/tWkYPAbNIO7LhLKjgajyh+cC4v5wtpEwzEVlFMZgEonTrJygNLPdr
	 zOjBlihlgXZX6IXQRYfI07MhvOFI0eaSnMQVnAG5hsiqu2AlxOYDq9Bi1cxfAET/EF
	 7I39N0lnVqJNw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94C2ACF34B2
	for <ddprobe@lists.linux.dev>; Thu,  3 Oct 2024 16:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172797155359.20972.18053109006929666887.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0fdc29d01cfc094090060f7a8dc2c098cfcce734f0f29035006ad4964ca88b6b
Date: Thu, 03 Oct 2024 16:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727971553
