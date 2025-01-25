Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 528C513C9B3
	for <ddprobe@lists.linux.dev>; Sat, 25 Jan 2025 09:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737795954; cv=none; b=GCimcqmr79ciFww0QozUxItgizlv0BPtz++fCYeV7DofQPPmgTzd48harYDUo3P6ysus6sWa2X+q9UYZhVU9yBGsniu35yrY8jLi5hLyKaGl8eMisdKw7H++tD/VrIa1lcoMZENOUcTwHPODM5ok7/YYEKB/EmyuayfgelgWZ64=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737795954; c=relaxed/simple;
	bh=1q4Zxc4J3DXWP3l33PoYuzf7pP75jNx8OP0SrjWfRW4=;
	h=To:Subject:From:Message-Id:Date; b=rrZ80zqdwFT3qeCFVrbsQfg6A2JgPBq2+C9TUGOJTYk0dBwIkr5ia1g+VE5TKjQaWG5rEs9vtUS8saQbOxgGNdYseT6EAIcSc85U3j0iQwHAtd4E33eD/Vyy/4ASY166ednp0aNdPk5NZS7I5oSQUAmQfL8popOIngOffaqoMK0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bMZWwh2U; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bMZWwh2U"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C232EC4CED6
	for <ddprobe@lists.linux.dev>; Sat, 25 Jan 2025 09:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737795953;
	bh=1q4Zxc4J3DXWP3l33PoYuzf7pP75jNx8OP0SrjWfRW4=;
	h=To:Subject:From:Date:From;
	b=bMZWwh2UXpj2G6iaM8k2AyDeyQHgHpuswtWbPn+t9zD8Tz6qmnCeWHosXnK2PWhTP
	 kb0C9yqHEpXwM1X9C3ZzY1J47LQL/N0U1tpUg8Mm/OJm2jeSNxXPAmjzyxo2xHkpFy
	 bP2LcXSWrvCVqxwKwZctAB1nXi53HLO22Z5ibkGZWeQg7Ni6ioCbPS/U6xC/VduxTc
	 FhjdDHHPzNiVJoL27W7GVdU7NlQcrErwB8Zz3MFOEIItCkw/z78BI7YiEmKsvH2fQS
	 QWNMNGJNp/ZabYp1rwjtsPQwArjo/4Y8enhzfKX+l9tS3p9brP+YU9oPi1JZ3o5b0J
	 nS1+SIWhg1R3g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BA7FC0218C
	for <ddprobe@lists.linux.dev>; Sat, 25 Jan 2025 09:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173779595361.29171.2949437477025948467.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 99be71b63f0563da19d3cffa1585d1357a8675075658ffbb30870edf7c0fc8fd
Date: Sat, 25 Jan 2025 09:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737795953
