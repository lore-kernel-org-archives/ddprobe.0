Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E2668222590
	for <ddprobe@lists.linux.dev>; Mon, 22 Sep 2025 19:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758570594; cv=none; b=bz/STztbR3xZBUwOf1Aocf+ZOXcvlqNlLf50/v2D/RNarqnzZFhY4JD0alz6qHx9jO7FBWCeo0Uw19B1tmxJoruwhu6Opth2dpygHBH/c7bHQb9G6flEJBa3g+dU2wY5WzCTCQdeM3kNoDXBewanB1Ct3U2S/3bTxtY23SNTGqo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758570594; c=relaxed/simple;
	bh=Rku/faZPpAomeKCXBsGnOQi96uLFUd2jbsG9tsk9Afs=;
	h=To:Subject:From:Message-Id:Date; b=QCfixTFeR9LZTcChokg9kI5vnb5dCPy6rvCwjPtttp37GxAA+Ai0ct07LXXzJF2F/EG73wSdARa5eQqnX9ZiLc2t3O1vhgnZBVMCnnmJgZG+fBIHH6N/uw/UtPwVKWEbjWE6EFcUGT610VS/8tzzb83yWci2QT2vLS1+lR5Gs1g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Zi5fvE1Q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Zi5fvE1Q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A33F1C4CEF0
	for <ddprobe@lists.linux.dev>; Mon, 22 Sep 2025 19:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758570593;
	bh=Rku/faZPpAomeKCXBsGnOQi96uLFUd2jbsG9tsk9Afs=;
	h=To:Subject:From:Date:From;
	b=Zi5fvE1QyqvDOuqNawzyOkVzh+LwYO8Ya14E/VCHDmsUhwIcoPyyos2deY9EZFTVY
	 XAwVpr/ULDDW62Y5MLzbuZ18yuhXuTO2PFVOGe4LmP+OHApnxNeVQJqqnWK6reB07/
	 0XpgrgiLavX4e+LHp8M2oM1Js5pg2uBG6bXH/0fvbWQYiLnMG7smjl7GgXTVUYg4CY
	 VlPS94O7scHQJBJH8sM5U0BBpEzl7gUAsUzuFR0+qeo24NV9KrT1mFMOet7GB+FZdH
	 Zj5aTIDfxofsqODXk4O19GMGZuk6PpRaKnhWnxW8y8dItIxfff2WCdQiZZU8+cgDcb
	 sSMJGXoOdvbDQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90B10CAC592
	for <ddprobe@lists.linux.dev>; Mon, 22 Sep 2025 19:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175857059358.7155.12902485811465316704.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c16ee83b49bb0840d844532cde9663645c27284875e1c52d36fe1c945ccb61d2
Date: Mon, 22 Sep 2025 19:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758570593
