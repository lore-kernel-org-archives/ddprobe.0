Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3109D13634A
	for <ddprobe@lists.linux.dev>; Fri, 23 Aug 2024 20:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724443554; cv=none; b=sUBqdn9q5KOoJ1IjXkrSnitAmVqnx42Q2XSVl+zTli1Lfd6RptIklXP2XPdLZMqpzozrGFY5pioz+52wl7e5Ji1stWA7BRyD+Y8F6YlFfU9bhUrICEhdjA2cEVktHqRNo/blPT0lnu0IVOYUFJQ3Rkvmk3Sg/D9t8PFCD0QjK+w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724443554; c=relaxed/simple;
	bh=E3JQeHAjf4aOjRfO70lKLpGHPTQFdKXcCDEJtFub8Nc=;
	h=To:Subject:From:Message-Id:Date; b=QVAjF690n8EOh8d7ah8RIpGE5CG7ShlExLlyIPI4a/5U1OFYs2Kk/fRI0Qv3d3/eiDhFdNpPrdrWzJhRxfv8GSZuunUxT5Q8amvhxPl4BqhND/8O3s1OsVvcbNFDErUNxfC/6X+VOrOPcaT+XlwT/2Y02ZfYyRVooPtCFTQpP44=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=A1LDovc8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="A1LDovc8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF7B6C32786
	for <ddprobe@lists.linux.dev>; Fri, 23 Aug 2024 20:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724443553;
	bh=E3JQeHAjf4aOjRfO70lKLpGHPTQFdKXcCDEJtFub8Nc=;
	h=To:Subject:From:Date:From;
	b=A1LDovc8L2VUmQMxYe29aJvc0OSurHKKRBqOhLDZhnTIUqE1mk/G4zfusKt+MX9Jr
	 OMRU3XBmXpZj3iSSVxTv0DeB8nYvb/QYOuW1B8B714H/es9sQGbp1o6EMlLAHYzCm1
	 Amd7pH30IaHIrUjmzEjk5CLEUbi6fvu2neIH2miZy1cB4EguQM537cmZ5uIuuuOhox
	 aV5XO8QiEzl7NWUiJY1X/pQWeF8GyKdphNEENTe34YcsDallpKrmwvhZ4VTrdrLqk3
	 WNFldRevIiIEHnR8xUeyfnL5VCaT4Jgm+xgKum0vDN82h+qngF12AV/iiD6B7hQsxL
	 malvTkkoJJlxA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E35FC531DC
	for <ddprobe@lists.linux.dev>; Fri, 23 Aug 2024 20:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172444355360.6876.17460187649732880614.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 30c89368a3841df68aa35080283913c43dd0f43d604298c14fc3d07b3a95a59c
Date: Fri, 23 Aug 2024 20:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724443553
