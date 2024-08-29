Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3487218DF93
	for <ddprobe@lists.linux.dev>; Thu, 29 Aug 2024 10:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724928354; cv=none; b=rEc5UUx2fiR9j3pbFm/ATBiiZ+zK+RJU/djq4HbRrrNSZY4CenroltqNo77EgZaIUv1Xz6quTcXNH9OUkr5odDNgYmI/F1VzAzR4N0cf8RTjBtEWP55JB5xfiqYTvvBWo7MabnAd/vP3ELBtVNZdR69QTP06QWct68jJ2k9kkO4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724928354; c=relaxed/simple;
	bh=sR9SRxnf7XKQAjAj2QPKT3qHa+B5FglJcktHCJaP2xs=;
	h=To:Subject:From:Message-Id:Date; b=D48Wc4Y5UyavG+IuGqqeo4ePnv+wAekbH0YRWEJcCkcuHY80OrdM6HQ/pHeeKm9vQvfQpFJY8fjO7SRk79aYT3UtHnd7eEF0UZF5E40mJYta3638b1szX9PzfX3f2WeA82B3HG46mMgOoZd3vJfL8QEb/SGuDHywUtBEb4ynxL8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SoXXtLgt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SoXXtLgt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADBC8C4CEC5
	for <ddprobe@lists.linux.dev>; Thu, 29 Aug 2024 10:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724928353;
	bh=sR9SRxnf7XKQAjAj2QPKT3qHa+B5FglJcktHCJaP2xs=;
	h=To:Subject:From:Date:From;
	b=SoXXtLgt4POtQYLyWDbfGWbDN+UnwCxRqucu7Sh7vKcFKWunlzn25BD4TAVoPJm85
	 8HN2UCQMhU3/n7Ng0xr9x+vRunZZ3KNCXKqpmCvWcXNzFkIAG1K8LTtywBTWMhih/L
	 1uDZvL/A8fsGM4TirO8yX4nGRg5I6WY05cDMlU8rGxMxD/Fg2tFXlL6SgZGe80Ak4f
	 ofrPNvDMyxRItAEGdgb+YoiChmDQMQO2LVa8gAVhTz5w2Ro/1lZJk99LsOJRHRFh0e
	 3VbXzso6dT45JsvacrTO5F6Qg9yLhoUxXN36xFBg1X0dlMRY5DtNpyk34JOrrZQXNE
	 B6FPOPqu7St8A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 966A1C83036
	for <ddprobe@lists.linux.dev>; Thu, 29 Aug 2024 10:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172492835360.4451.8171450538890293115.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 00132020c8f2d55bbed75eca570fb7b863c58dcad2e60095ec783af3826c773e
Date: Thu, 29 Aug 2024 10:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724928353
