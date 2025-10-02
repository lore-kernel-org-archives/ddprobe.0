Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 404E91F2C45
	for <ddprobe@lists.linux.dev>; Thu,  2 Oct 2025 15:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759418994; cv=none; b=io0WY2eb6aq/e2Q5cIF0wUfdnBlXUoguEzBKAXnwAn/8k771ACJJRZ/1dNRjPPRgwqNubvtFRw816m+R5xJJ3C4wTiKrHr91UEK10iKVYWTbScufvBdynqxqVTxrkBW7srLULQ5wvVwVSON2FkG3GRl4YAEW0GfxcjcYQ14yMXE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759418994; c=relaxed/simple;
	bh=hK4G7HqQ9gg18/TbmpMIiS4IOZupEoQXndtSPGDugk4=;
	h=To:Subject:From:Message-Id:Date; b=roSUgzzc1N0JNH1vEA/TCYikJKvteUg/8hVD1LczE1i2F6QLj7ewuyFjAaY/csAFoQrWTUxBf2daNCkcp/Dv2WzDSbGiIqSi3yN2xJdb1gbhR5sym+8NHzsO6XJYmOzoHUI8WnFJK6axSQaEh587OBD5R86YSv7P2gkZffYbMHc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sKknTRgA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sKknTRgA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA856C4CEF4
	for <ddprobe@lists.linux.dev>; Thu,  2 Oct 2025 15:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759418993;
	bh=hK4G7HqQ9gg18/TbmpMIiS4IOZupEoQXndtSPGDugk4=;
	h=To:Subject:From:Date:From;
	b=sKknTRgA5Rc6yS3rTSZ10FhxhtWv723X3aBFKp+Yr7zWBbb6Cgl9Ojmmxd7o1hKwv
	 HrKi49jsop1dXiJnSZEOk1F4bnI0gBsj4ct52Quk3dFAUtSJ7CjS8tpbtSCX8ch7bx
	 jPZ6JNWp/9gWoU6kxdVaId9sdlrcPaTbZCedxvIefKDBokbdZmN+5onG1rJ4cpjT/9
	 rj354DHq4C3W1Wg8N6JiqXPJPTWUvU6Xgvb21dcImnf29ys+yIfAA6R4VWjJumAGSn
	 m5GmLbXgR6oel4IXk8uS4XAQjAxH4IZJX2jZOfx1G4d9ufvIFNWZGDJTwNMhiFW6NR
	 TNPuzP3+9+IYQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97AEDCAC5B8
	for <ddprobe@lists.linux.dev>; Thu,  2 Oct 2025 15:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175941899358.21054.7609937254241875675.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 52c6245e5a5c5df35b62acafb7bdd86ad14c5d1d89b8ad24ca17268de7efbdc8
Date: Thu, 02 Oct 2025 15:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759418993
