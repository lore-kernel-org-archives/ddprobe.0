Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 269DE139D
	for <ddprobe@lists.linux.dev>; Sat, 11 Jan 2025 13:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736600754; cv=none; b=TT3CqwcZRKE8Bexrb7sb+BfQ1Gm0I16c0mfUCwTlWs76u9Vg5LY0ayIbYZqppX4vZBjwr7tj2SAJBBlsrTSKQc9AdezCpwrcsP4zTqm+Dry2NV0zcKDMiftlOiQPKb5ChQuRlow/bTYORtU4P6wXX2Z/48QW/7dOxf3KENVIWtg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736600754; c=relaxed/simple;
	bh=aFxTphzcG48XPXGqUq+SFSH+sDERuRqqzB7k48TkE4c=;
	h=To:Subject:From:Message-Id:Date; b=ATyqbKVbJycoJT+bAbRxCBZwcapjdvwlaMiwxMyZvCTDB/7ffIGZQgzOvp4N9rpvdQWFEFQdIQaTTFx4YAB8Dnj5hvK+WmTYzq5K583Y0H2O0qJPiTnXDyqYE7FJm9ihJdS3+E1/7hJ9yLEsQNEr63lizDEvG9HaeW9QmaHjTPU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Sk07UW1q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Sk07UW1q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5998C4CED2
	for <ddprobe@lists.linux.dev>; Sat, 11 Jan 2025 13:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736600753;
	bh=aFxTphzcG48XPXGqUq+SFSH+sDERuRqqzB7k48TkE4c=;
	h=To:Subject:From:Date:From;
	b=Sk07UW1qmIjEh0Tob3PZ/Ib92eiRmO2LkrfyvmPe2X2jArpTFH+Nty8uL3KRneyKj
	 P+Pi5AmOt9heVfmG1YUjpJIfYA7YUyRpgj6vlRRcHHTOmrECesdKkk97q8BkbF0Ih9
	 hV52xY+/TqdsDgEpA3z8RNpUiAOpkclQkIv5EsSR0pfPUgroQgWXpVRPrwsUlCYiOb
	 ZheVkjUnW/UDEizwjLQHOtRmbi/88cPuOrUI7ogRm2R5Edvea0PVPTGBuViTojhChz
	 AQe74xFxe9REhFSkBu6EV/2D/XOI02fqlplUHhrMhvRITY18UgabA1X2k2hoQIKunR
	 oZel6rRuNltkg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E928E7719A
	for <ddprobe@lists.linux.dev>; Sat, 11 Jan 2025 13:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173660075357.4560.11844681153798518363.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7ec8fb878d3e38112ef7828d13369e1e7f068eed2c9a65ce5201bf79e1c5101e
Date: Sat, 11 Jan 2025 13:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736600753
