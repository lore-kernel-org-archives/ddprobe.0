Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 122A932F754
	for <ddprobe@lists.linux.dev>; Wed,  5 Nov 2025 14:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762353594; cv=none; b=ugZCpjxXav7/AEmC/q5/w/6+uCNGbri4uQeJYvfhhlgYUPD8cOqeNhdaQgUUhLnll6vWC7fk+ToYQ9MH/0i+UenF+VtBx7kJyN6KLOe3TMSp2915SZBcnth2cJ3guhPezKZJWpEtEzuUrsUSg+91zIj4RhgTlbFjPPQ5wTksz3o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762353594; c=relaxed/simple;
	bh=KHttVWRsyyZGIDmVHAzZWWAmpqfepV3Axr5jdOZ4dW0=;
	h=To:Subject:From:Message-Id:Date; b=sfLqOb/oo60gAoqCPFLyLTIaGDA8Fi0vTn0MNajFOW8kBejqCWQ1KIw1nf7hGD/sbFYEhFRSgyChvmwcIM+p9tFQVVKOUYLozQFXN1EZLsKq/FV/8YbanPEqa7MqyJqa7ET1SnIF7QMnVzQ7jJDyMtyAELngdeO2TzeFgyoKfAA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hGgR4gDm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hGgR4gDm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FFC9C4CEF5
	for <ddprobe@lists.linux.dev>; Wed,  5 Nov 2025 14:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762353593;
	bh=KHttVWRsyyZGIDmVHAzZWWAmpqfepV3Axr5jdOZ4dW0=;
	h=To:Subject:From:Date:From;
	b=hGgR4gDmq9vMqxWiYFDrEUoCuMFxz3rr8tBmTgLgubY8DSA8+qt4w5mu8TQ1JQRVC
	 QdFLfKityqIkQlyj4h3qf6tk9DGHmL0kkHgTUm/ZSigU6ecy/j5jWSfg+p7NVot74r
	 4G41s2jrmHzwbBEcPTniY93KkMETVi+sCuo3N8Sx3/dUj3BEkVrH749JWbkQOV4P6k
	 za0ENtXizAuCoqXrSWyZKylS0pQIGbnu47sD1xov1ArsfB87+XIx9vm3ukrgrwpsnj
	 jZ80InHEaoiFW/HVsUe8dtxSEUxyNzQclSIWlQgWyNZ7EVvF5mYD4y+VMDCQG4htpS
	 9sSrCQahsU6OA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90F9CCCFA0D
	for <ddprobe@lists.linux.dev>; Wed,  5 Nov 2025 14:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176235359358.5933.12627347936920618566.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5862575eebd77e5aebd8684cc8a7b229fc9f270e43f6fb4f67996ff8ed80a5b2
Date: Wed, 05 Nov 2025 14:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762353593
