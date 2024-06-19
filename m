Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B717249ED
	for <ddprobe@lists.linux.dev>; Wed, 19 Jun 2024 21:09:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718831363; cv=none; b=TLFCYIFl3Ru3g4GmmoUqGnYmXyKzPMG2QEbcvGmK9XO5UdVaEH5LBDwNqZQGPzAHka3ibTppgTpFNFBfg5PwnevUihJJEM6Y7gJwHLVgwgb+JMFDkR0C8Ru/FHLwflGBxT9Q0w2jOwfX2smTEgkeeIEG7/yaTYynhwS0lGW6ab8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718831363; c=relaxed/simple;
	bh=HsbcfDcIwKgt+a037LBwhfwu5uRZY5C0uxpLpJ1oSNc=;
	h=To:Subject:From:Message-Id:Date; b=fTyc98Sdw0riR7f12WgYYxUIk+3QJjHL/JLdw9xBoQSEbnkPrFHy3Krw7gr4bZ3z500hwEpNMdU6aMgCt1kvfON+GIGQprNJPi+ZRqOBDFzHs8vmCE1s0mQKYn0Y08ErPyEMV8qnHvNzftY6cH62j1supADvwGRaxUrpyO1sRgU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MnYETpFo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MnYETpFo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0E89C4AF08
	for <ddprobe@lists.linux.dev>; Wed, 19 Jun 2024 21:09:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718831362;
	bh=HsbcfDcIwKgt+a037LBwhfwu5uRZY5C0uxpLpJ1oSNc=;
	h=To:Subject:From:Date:From;
	b=MnYETpFoQGkCU/wtxrG7nEQXwmEHMBm5gqpPG/zdy3kyuaRnMU8WnH8y7QXTsAUZ7
	 sJsBmJcF0KJSPo8d6l8jrtB3mHagLU7Z4FTs1SVkECx3sueobgb6bLcQQ67D9NanBT
	 Ec0nu56KnCg1akofH30rT7AISgkeG2v8TZeTyqy5GpzN8PosDf2s/uhJZlsBqHm2Vu
	 BMG1/HaBSnBZMhm6aYi07qNSOEUEJCYieKgvLuk34a88lDFRByUcAirGSNZY6IIMy7
	 /qJU0hGsfEhDQiec1RruougnY+dO7X4Haz/gBpkOxgvjG6tcub6ylqOJJGNhL/1B9B
	 kO+WwgQAfJ1tw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BE817C27C53
	for <ddprobe@lists.linux.dev>; Wed, 19 Jun 2024 21:09:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171883136276.25845.10218099189037423186.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bb9f70e26dd72e7f95553a7a91aca77272a3e15a78de6de76a2d652e1b362b37
Date: Wed, 19 Jun 2024 21:09:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718831362
