Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1719929A310
	for <ddprobe@lists.linux.dev>; Sat,  8 Nov 2025 21:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762636794; cv=none; b=aGI0Agars+xIHxgNw56qofLwjpNinZZc6p3hPxhZiOfJcuuYEOKB61Zxxs2km4kOizH5OUEQOQsFrgx/KzUoUOF/Sem7QguGQhF9fX/YIIiRgESTJ9iqo1teBRbWh6TS+aofjc8Q0jaHAh0hUbvUnIKsfxs0jo8WEbCgNGEV3Gk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762636794; c=relaxed/simple;
	bh=NRCxI2PMLnBO/2V0NrOB19X5H93sNGunX0fk6A/4eVM=;
	h=To:Subject:From:Message-Id:Date; b=jUHY9ZGu8YMEPH5kzUOXmz7ya6df7/u1zWJdQk3x3Q/Ga3NFLTbGg9o4GHaHKg9GLnP5cROYILzTjZ+kgrgXfGtozSXL9K7nlE8D8O7RotyccpkoxyMIVWGig2opmTgTDr8HKx7t6mybYP2+4KLOfYGPVoFI0tnzAsIcbTKmPh4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kLhY0C2C; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kLhY0C2C"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0445C113D0
	for <ddprobe@lists.linux.dev>; Sat,  8 Nov 2025 21:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762636793;
	bh=NRCxI2PMLnBO/2V0NrOB19X5H93sNGunX0fk6A/4eVM=;
	h=To:Subject:From:Date:From;
	b=kLhY0C2CxIFRv43+RjmmFqB494mrEquAflckm27fT7ISV07nrrv4u/BEJcY4FuUQO
	 t5u6dJtSOHzCKC7qF00XZUqD6dcg5CBej/OLeQw/MnjUiCUKANZVVXHyasG/1YGHnr
	 jeNTWaYg6LCXRfLtLFYTH3wJ/wLz8A8PrBmKbp8zRTe/Q3DyOEFz7Zd7E9YVUTFQjd
	 8DpxOmzZvu25extwxGed7U4gAq0pVpbjJ5+gujE9V7jBfFH9WiddflYaT9MMQphl3K
	 qWRJKGTMaae15ikIWGOlP85GeoHOOB9htqEvqnxIF0n2l05JPVsdJyxRdt98DRMOl8
	 91DIGdyiRBsCw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F2FBCCFA18
	for <ddprobe@lists.linux.dev>; Sat,  8 Nov 2025 21:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176263679357.17631.7275125744640258712.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 57e99af0c764c871275c9f9f1a8eea6bb57ec3f46aaa96b467417197e656daf8
Date: Sat, 08 Nov 2025 21:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762636793
