Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DD661799F
	for <ddprobe@lists.linux.dev>; Fri,  5 Dec 2025 00:12:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764893574; cv=none; b=m2ASpzJadIwku9uSeJDGATAoPQH86kmmlkLWZ/+8Yp9sQnx9oFdUgh2y6gZukzV+Hiw9/NDbrobUw+FOQqJvrsv5STObAKL8ZZKPJ5y2tbz/dzkfnPc9YnrANWgBCs3MbZz6vwZADSaP9bvOOSSq2mC6LrtY1zrgH5mPt/GA/uw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764893574; c=relaxed/simple;
	bh=HBWK2TQpUnj3WJSYGAPhkPc8j2Gwnbarh9i9Bt/g2Fo=;
	h=To:Subject:From:Message-Id:Date; b=R8gbbN/WYpevaP8a27mh2KXCFW3cU8jcoiIDwVW6Zb8RHG+YOTGkhD7Uah0qSk302yH1467sCGGHVf8j3dW/jouHdccw1kLoMPApTPWeoP5oNCzkW/9W4tL7pkNG8f3NmiWSdLouAbcBX41LXGbEFlUapUlUD4kjEpXplvPJTrs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KRlbQt3t; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KRlbQt3t"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAB4AC113D0
	for <ddprobe@lists.linux.dev>; Fri,  5 Dec 2025 00:12:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764893573;
	bh=HBWK2TQpUnj3WJSYGAPhkPc8j2Gwnbarh9i9Bt/g2Fo=;
	h=To:Subject:From:Date:From;
	b=KRlbQt3trJ8g719U132ZkIfrRtdcyMufziiH+BZBdlal3IAMPscHhXQsGlynI1xLm
	 4tM8Yv9i5t/FdC0PcTdTTdzejMrY1wQ/fDAe/tLbO1L6fjpZtKzah54fItPFRHv4Gw
	 IPqJtxFLqVZAWNk8mZJx0qL69irKiAE3ADZz1HfFdHui+8GsdpubROKxKy3KXtiDn5
	 uEPYjUCdvXMzUzFYOIHK/X3w8Pvth4u2b0qTXbx41wjEy2B/4nXqUe8tTkYbtxBzSk
	 9DL+P7AmUsoPZVfxvAwoPXfC4K2P67qfrOfKpswiPR4GweZjvciZYQOkpWnHhqBJN1
	 iOxDGFt463PTg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 961EFD2CDF0
	for <ddprobe@lists.linux.dev>; Fri,  5 Dec 2025 00:12:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176489357359.1588.1462680591765014793.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 020e35f76709b9118267426c6cf5da48d3bbf427490c68ac9c260069f34a7608
Date: Fri, 05 Dec 2025 00:12:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764893573
