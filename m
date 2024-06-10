Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 757C47EF
	for <ddprobe@lists.linux.dev>; Mon, 10 Jun 2024 04:17:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717993043; cv=none; b=HdZ9j+MWUgL7CWKKp8Gm2f44AqQihYBQnKHK9g7tT2agWve2MMomIW8wAoM9FGbYOmMjvY9AZmuwRbsVsPmHgEGVv8wYQ+DQ0M63b1dYNAIPSg1VsgkcZz81mnk0Ox2oaA/cUdgZiNPelfhAWiXs1JxJVciMy/31esNB+BdSAho=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717993043; c=relaxed/simple;
	bh=2jSxLZHwyfX5zGmPLDpyjU+1wGeg0ikh9Xht3c8rUNE=;
	h=To:Subject:From:Message-Id:Date; b=Bx9UCDfVMrtxwWkVEVyem7PnP6KApiwBfLaP1WEwvdXp+DBn0Dy/zJ1kqIsrjeX71hL75Eck8sJCZylnd3X2JUtgjSq53dN2DCfjlMq3Up8y6cYViyMZerPhDTn2HwHVExvwVibHoDmqXepdkq2KXAlIzaJGGTL9DviwUaDjumg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AGUwF+kv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AGUwF+kv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DE00DC2BBFC
	for <ddprobe@lists.linux.dev>; Mon, 10 Jun 2024 04:17:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717993042;
	bh=2jSxLZHwyfX5zGmPLDpyjU+1wGeg0ikh9Xht3c8rUNE=;
	h=To:Subject:From:Date:From;
	b=AGUwF+kvIzMUnMRoYu2SjTUEFnxkUclRK1Bl22LRc5hnZkVj1kRpBAuEOBNL4whyt
	 aOBrDeTIy6H+vvXK/bE4aT4famNBTiEUoIz21Q4vecguRfCeIn9AHLpSsbmCnWlBiB
	 XshB4N9p37ig5erHcPPKtOVU1Q5I7n9UBFnbVap0faLFYL8dCE0MvTF1Xg5458AIKS
	 /whzpelQv5ZlKsSHsPPEhAO3Aw3aWaAqQVviBzBlJqXFBEIved82Os+wk6a2gHnuHA
	 OGZwRyLrd2KXIb4cxKWL1C87+u7+ftLVvgTvhu6iFyplQ27QvXeVEX/kATbeFM1eds
	 ISGox/Bmo1rNw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C9AD3C27C5E
	for <ddprobe@lists.linux.dev>; Mon, 10 Jun 2024 04:17:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171799304278.7405.1385245507901145048.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 71f8615e8791dbc54accc845933506fa80d5509bf508b585f0b16f88a2054656
Date: Mon, 10 Jun 2024 04:17:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717993042
