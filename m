Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 875EF2836A
	for <ddprobe@lists.linux.dev>; Thu, 11 Jul 2024 21:07:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720732043; cv=none; b=dsfZO7pzQqf00VDzZkJszW3z1uKfKujXPSLtb6Yp4JPLHeJkJOB+0wEz3LNX6ft9WEhMJlWouA6VoDdHFbowppPoDL4e7Ap9zetS96suJZNlFgdagXkr3yczbd/q7e863t1maeJYx+m8qWEEP3a8T++z0ITDVKdzNdDaLQMYC2k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720732043; c=relaxed/simple;
	bh=MU7h8bmtXt86ycudN1fyDFMOU42NOgkH1/xXpViBzFg=;
	h=To:Subject:From:Message-Id:Date; b=H/NUcLXq9gu25tw38xKctY1e45QBe+xgt9P1IEeSbcrRLFATzV3BTQVngJ5jcyaEtUQhd2EQxSK47fzS7nFqHFg7znnEgHXIGX2mklk5t3NzB2VngkDDaqr0MMtTeU2Ljt6OfkKvyRbPpmDZWGwM95pDX4NPckPbkHPGizj0unU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dU5ncUM7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dU5ncUM7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id F1DCCC116B1
	for <ddprobe@lists.linux.dev>; Thu, 11 Jul 2024 21:07:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720732043;
	bh=MU7h8bmtXt86ycudN1fyDFMOU42NOgkH1/xXpViBzFg=;
	h=To:Subject:From:Date:From;
	b=dU5ncUM7/YktZN3Ky3laZzLRFdLxmotK2+95GS+/MUuK1G3UwotDszhTHYuITb9p6
	 vL64H5fBPJWce2kLfAHkL8h0SdSexlIeeJtInJt8yV9dN7oQJ354lFdZG6Zgk+pp6r
	 Wrlwin+tzm6tTZcEmoQ9s1hXyOITTdTQ9ihnsu4xs3l6Kq8PEPlzXQqYMgDbnkmn71
	 qa0xBl8OrNlY9ud0HUvdtK0BwvTwg34ZusTAumiWLbVgpbWZJ31Mw06KpHM6GOGtVI
	 igL41Gh72imTXRWBwkjbwnE4QEiYcRkB1Qs3vOFHHZfGG0LI3yGYsUpa2Nk8zskhM6
	 yNXjbSeQWYWdA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D6723C3DA4A
	for <ddprobe@lists.linux.dev>; Thu, 11 Jul 2024 21:07:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172073204285.1069.10736600642984190832.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4078dd2d6d5561a55f325188a49bcb0a32f80733b84696e6d0ade26f13a7aeaa
Date: Thu, 11 Jul 2024 21:07:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720732042
