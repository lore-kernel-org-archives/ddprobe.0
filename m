Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 577A1524A5
	for <ddprobe@lists.linux.dev>; Sun, 28 Apr 2024 07:52:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714290743; cv=none; b=VSkhXi8X1NNp0Pu69fmf0ENZ19j7yiLmGrY7wRjN46YuIMT+57w25lXF6GZUHVQr8DnPnCqRzt8pWreFDMiYSPiqJqMnxckhdaXgdVFjYaiqTaMiiZe5twEUERBJNphre2dzwv1ARkrbIVSg4rvqHMnXHkAJZmrhaBgyz1B6JzE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714290743; c=relaxed/simple;
	bh=gvSvycWTF73RQKlSCeN3LZC5lcn4nL0M8M73Scz6RR8=;
	h=To:Subject:From:Message-Id:Date; b=IC8IpvX5aiQrekFVCHJgkveLRoJvwWabnjo9aLmyelRFFGwQl1/j3DNL6nWqkjaqPCsqjwxFUFxU9FBpvLfjpv7HHixAKk+dJ4x/9ADDoT0CdM1Lm2aJNo53sICyReqR4HYC1v3VqfjAwS8JAwvZBkEPMTydwikL+kVCoMdTdKQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UwjRgTD1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UwjRgTD1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E18DCC116B1
	for <ddprobe@lists.linux.dev>; Sun, 28 Apr 2024 07:52:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714290742;
	bh=gvSvycWTF73RQKlSCeN3LZC5lcn4nL0M8M73Scz6RR8=;
	h=To:Subject:From:Date:From;
	b=UwjRgTD1Hk/xIA7gn4ESS+Yq3lsgYADnRmrO/6Jyjl+YqnhM0g0F5bOxZ2hGryGK5
	 w1mqzqn2DQfb1DlU2/YcLYIVFGY6FywLdJQft95jY1J+NGy956UzAAXMwfhNLgiA6l
	 NhvC1QMBQYfU+pZjoGcc1ffnri2RrjXTu5sinnhL1iF90SpX0scs+b4LnK9htRR9DO
	 0NcAt/8C2TuKWA574zKA0ZsiymWzck/3B+6nTUrW81GO6cxEyAxI3lgDF1YqyfCll+
	 qXNhHjU8BwO7yyI4n1ZyoqR0i9LjJlNe1H05GUG5wJ785RMMdsPahzk/3h8Ntc/XmS
	 Grx77QBZEPu6A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C81C2C4345F
	for <ddprobe@lists.linux.dev>; Sun, 28 Apr 2024 07:52:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171429074281.30664.15710208149979033036.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 92c66f666f60eba2c6e9a6baec0de61af885bd627cb7b25ed6292f7c15542454
Date: Sun, 28 Apr 2024 07:52:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714290742
