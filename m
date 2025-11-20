Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35B033242A0
	for <ddprobe@lists.linux.dev>; Thu, 20 Nov 2025 17:21:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763659314; cv=none; b=nt0I2e4FqaMMGRO1hto6miB03TGFoa9onACiFDt9vAhNtmikxWPlqk8ng7DUiey2xjO7/49B4sizCSoPhnhI8NeJ2m8CVLFkY+Q3jufrpkibOONAA9To5Oo9kVy1Grwn96j1ZdqgR40kTBevWHZZN/vi2OcXSpIEDlatdxw2bD4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763659314; c=relaxed/simple;
	bh=qtsc9zlkfaL1lzf22yIPvCKbAEBTFxNKjoqG670KJqs=;
	h=To:Subject:From:Message-Id:Date; b=FQlD9tUsQETpsYiGen30OCzL33+5PyTJZQsHs9D6UN6bhso5XPJt0BA983CUevCGJBErqNKinUckXA76VdoQAq6LyjwCO0JosY001TvO5MzVDe3t06QQMIktsjOGXkd2QiAQYBRIG1Mu90y+Qff76LLYFPI4oaeDmb6T2/GMpIY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hi0qkaYW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hi0qkaYW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7A7AC4CEF1
	for <ddprobe@lists.linux.dev>; Thu, 20 Nov 2025 17:21:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763659313;
	bh=qtsc9zlkfaL1lzf22yIPvCKbAEBTFxNKjoqG670KJqs=;
	h=To:Subject:From:Date:From;
	b=hi0qkaYWT52FDNF+WezZ3qA6YupyBjFNnZIwiSdFTqE0V7IDi1tOEVkiZPt9v0mgw
	 0XyYeyQSTWgGwEOPYPt/XV+b1THTf/kgBCsImEublXSzF6umic6kqw0lmm6DP2NYUE
	 T3KKV7fRDhMQk7CK4/fXK+rLXZcT3PvfP+eqyMYOdjqYmJFwn1a7eHKF77kCjUrw15
	 +RNsmfPRsA7bFRSMDlbmdfkBKdB3PDYJoSJUlNwhX9t0NXEzZKi7UNfEf5KULVka0N
	 kYg3FogsgjOCcZGpzGjRGmZ6GKJGn4vj2RdohbObysfCXF7J+Zuy1HVhpHm/Z01wdD
	 SVNap0onXbywA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95A36CF9C73
	for <ddprobe@lists.linux.dev>; Thu, 20 Nov 2025 17:21:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176365931360.7300.6661382753881196530.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 74645d24f628683fca3169b18a16a385b5e4c439985a7b0cea1053aa97bfc330
Date: Thu, 20 Nov 2025 17:21:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763659313
