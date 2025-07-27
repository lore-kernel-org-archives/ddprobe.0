Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CD1D72639
	for <ddprobe@lists.linux.dev>; Sun, 27 Jul 2025 08:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753606194; cv=none; b=LrnRCSjjCw5YziKpgfSTBV5eM3ooBQKp1c3CKrcD54BwTuyXGl3EJM8MVPcTO+oyj7RNslrt3KgQXx0mUoiSZyQcrutzURTVxLnM4T3cwvkxiu1iM3jhFIS//Ke+Hc246Tnm5J0nutgdBPGqJYNBI9+/zR3WKq1QTVgVoJitjnM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753606194; c=relaxed/simple;
	bh=WlggE70f0qMd8iMHK4CddOGA02afz6p9WF/fQQNN3q8=;
	h=To:Subject:From:Message-Id:Date; b=PoXF1bwhzr74qmXOgLg1ZXtfb5VBZMtXnCpWerp4///pJh9nPkDjHoPegBRXkT2JnVX21/yL0vcCGe5MquyU5ndJjZUq4G3nj/KdNPeuLuoVt5YR0aBoroaNqI6fEFuto1+5yo5l/T25gFMYyK+rsEouMnLHiIeD1LqbkCnnEDs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=h1G/M6q2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="h1G/M6q2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3CA7C4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 27 Jul 2025 08:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753606193;
	bh=WlggE70f0qMd8iMHK4CddOGA02afz6p9WF/fQQNN3q8=;
	h=To:Subject:From:Date:From;
	b=h1G/M6q2vp8pEoHLnLckZON7eO9q+nC63oEY3eDeuZg4FVXZJyXhsor75+vSvgytn
	 8YkIHEIDS/U87qGANxZFffj1isI3g7bPh4SJS0au5IkPGtmoOru+gOE2bmqz5yR6Mz
	 eU0qDFy2A2jVqX6bIyZyZaiwbFayfp7yBBfrK7VWDR8LYxIhDteN3VCfxugjZ/gjOX
	 kdVXybbwUw60O0rZDCEpcTbD/AphqhPFfYGGMK7ItHFDbYHmo4W2YazsQAX1YiD9Oa
	 q1Wog/cl+fnuajVwFq1eZr922xcG08gZ4xmsmywu1wFzLnn+nXlCB/n0q096wVC8OT
	 oQ1qkpiL7URXQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92244C87FCE
	for <ddprobe@lists.linux.dev>; Sun, 27 Jul 2025 08:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175360619357.28355.11990522622504974579.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 223ffb87856269c151f95327c31dc5bbcfa2c2a35e603e7057562bb69a418aec
Date: Sun, 27 Jul 2025 08:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753606193
