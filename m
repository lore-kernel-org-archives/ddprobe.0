Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33CDF1EDA3A
	for <ddprobe@lists.linux.dev>; Wed, 11 Jun 2025 02:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749609594; cv=none; b=bbY8GRcN87SL55S4lptj1vlwcurIjo7jSj75gdQ9L3GaSjMrJ7ozwiD9lOnDm7d1KXw5M4RNlfyDiEj/EhdN+EoW5VeK8eamZ0c2bKu2sBx5SUE6Os4jTifuW5hJX1ctnjn9LkjORX3uo1AI1wsuR8o26bzIq7+1nuXsqEjnmqQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749609594; c=relaxed/simple;
	bh=KzNVEjp5hjILEWJP+xYYh82lSLV8X/Z4k+0I8noIAQU=;
	h=To:Subject:From:Message-Id:Date; b=RBK0BCSI7/X4xpKSkXVh6emBMEGGhYo72oSHnr/JsFm8zm6/ZjCBB45m/N1Qitzh+LPnzP9lh+EWk88stB5gxutdxg5RIb/tUbmoXe65PFLH0CXlc+WphjsYUhWGnemIDeHDsAOm1Tjp8RTkD1vir1pBzK5f12ra54R2U74vsm4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=g9+qGMKU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="g9+qGMKU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5213C4CEED
	for <ddprobe@lists.linux.dev>; Wed, 11 Jun 2025 02:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749609593;
	bh=KzNVEjp5hjILEWJP+xYYh82lSLV8X/Z4k+0I8noIAQU=;
	h=To:Subject:From:Date:From;
	b=g9+qGMKUr8WhLKwkwDNjoaUkqkdW2SQ/HsFljA0JQT9DY1oUycEH/lt+vLzcCotjG
	 c/Vcro5tcT0J+Jvk+iE5GbD9LTRoEK2QNxITIY3EXgYl89BeHzQ4Z0uAuieSXzfNZQ
	 cb01AV9kKKSWiFvcoGSAFe2E6rXAbYUb1BDe+iJVZkbG9EewPXbpxH9MyrZu8z8ULn
	 Kos3xfoQQR15NEXAnxCQ9dHS5CIZxJZ5g194SGTqXjo1WuEVj+oJixCZs6GaIeaNzR
	 Sdg5gBcrRJLmXIK7zeuOG/Mh9wIVcN194QnUKmbjoEwry8xpUPHtOP3F3SMpN8kfXI
	 oejfBrV34ZzpA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FF19C677C4
	for <ddprobe@lists.linux.dev>; Wed, 11 Jun 2025 02:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174960959358.14526.14273089195908097563.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2541b82dc975adcf107e2fae47174722215d52c0c5c9dd7a4af87b3e4b2b7f67
Date: Wed, 11 Jun 2025 02:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749609593
