Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E1179391E73
	for <ddprobe@lists.linux.dev>; Sat, 11 Apr 2026 18:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775933854; cv=none; b=VrR8md+3wUusGa5YzkAutyYQD2eebrTUjdzaYEr4nAXxmQMjtwInSYNk1zjgxJZt3B22dpALRqV7pCbk79OfWciZEct7bO3V++NjOdyVL2vPiMJHwwG6sFq2oL7JC0BstBcxL5aCWq3W6UjDPezCBMvRepXUtFi6yEDZ4To3F9g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775933854; c=relaxed/simple;
	bh=JXnYlJdcqG/ux9IExneRwfrWrEPCLqHUzxElk7AEwoA=;
	h=To:Subject:From:Message-Id:Date; b=ePUdRf2rPFfEmr5AmJlER1GL1yNBKJhIHARHxRl40qlwmez4YtOQKQu3QCRXEr5zLm9mSwjfa2HdAuchlimewuVPC8xKN/IA0MGJRazDTWonW4iT/48fPA7Ds3bsdFcS5GTpKdWVKndzprIi+59v1oEX2ft9MkDo1Z/wAY9/SPY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fmz0DmSl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fmz0DmSl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA0EDC2BCB0
	for <ddprobe@lists.linux.dev>; Sat, 11 Apr 2026 18:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775933853;
	bh=JXnYlJdcqG/ux9IExneRwfrWrEPCLqHUzxElk7AEwoA=;
	h=To:Subject:From:Date:From;
	b=fmz0DmSl673rprnEgvBSY4lJaTP6/f+NrAxd+1TFbkMu6JBkH4Iz+9ZNfw1aOLEOI
	 p4j9gG9vlVS/x68+oNljZvVJ4bVHLvYX9ja9eHOeH9PczNCVoJ+dMmt4dN4ZnUBFBR
	 +EhoHgob2SRKtC2snco6MnZnP0m+eEyouS6W1piFINWg6Dv3NYxxbBBJo17nqb2rMP
	 rEFuEYffbOU5WDixmQ0oKbaxWloqVmW/Psr5zjaQfcfh1zJ8PmvK0n3s7vEYRFAQN2
	 kiSAXQa/INUcERLMx/6xctfaSD75zoPQQF4CSqOuKdvXk7ebTwrzWfwPKgWyPTQ4c8
	 wW37jEbcRO2vw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC288F3ED5D
	for <ddprobe@lists.linux.dev>; Sat, 11 Apr 2026 18:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177593385369.10567.6126301403707939074.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 15554a1b9b8fa31bbb055f0a6e557f24d48b99a49204973907356f49f09e5926
Date: Sat, 11 Apr 2026 18:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775933853
