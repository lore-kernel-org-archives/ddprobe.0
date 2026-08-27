Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42ED326158B
	for <ddprobe@lists.linux.dev>; Thu, 27 Aug 2026 00:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787789434; cv=none; b=n31OF/nkMzpJdXIG6axeoJvlQ9OfodPq3cIfH2Hx7z9IDKmVg42Sv3ShsxSeTfFzoEwwxEhLLPHhN5rvkw5ldG5Pk/0s2Z8WbThZdo6lUMmL3OJRUSv1HwSMsBpild35+I90kU8NU6Gn4W7JCPs2zwXdEu2p6vdvEQ0vxOC5Wnk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787789434; c=relaxed/simple;
	bh=P6GZrojwswUiAqzLhdxPhevn1SDRH26IyzKZxUH/8ek=;
	h=To:Subject:From:Message-Id:Date; b=PVowNWDnh8lhJS/Sp+PcjLgU8jEsdPwkpTwyF9L4ICnq+7erlvZub+lkeQSLB8c2kthpM/aCXng9C5+gIyV+oLZ/VTf2c0nzmfjfUHHiRzUxde8/2T74kyilBiBIWnt+4T8UL7VGGmd7ZXCXp/CFFU88w7sZ9F4ePNi8ihwIByE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cgg1gmQy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cgg1gmQy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CEEA3C2BCB9
	for <ddprobe@lists.linux.dev>; Thu, 27 Aug 2026 00:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787789433;
	bh=P6GZrojwswUiAqzLhdxPhevn1SDRH26IyzKZxUH/8ek=;
	h=To:Subject:From:Date:From;
	b=cgg1gmQyZwBTptOOXYn+yP/SxpmtVNTuVbhHmltwYOYPqSKLlXjQvl4LOoM5ivqgU
	 Ac0VTDXtJhRTP5utu3pmy0a/4xAuBX5d3tjtwZbqDJAiqT3SrEmutL5edFLPnNbdZI
	 2vBghvAKsRSnOPRLDtFlqeNv0bQ7rBJPs4dmXf5eING1uXD6OngIMEQJ7WB1vAFZDs
	 MtBDHb0zUst2+545dEgN3ESTRDknt7lZ2vR+G3x8t8VQuTBN5PGcM0w7XV9gn6rjJw
	 P/Hry1TSo7suEAgohp4GjPJhLDfa19tB/VvOyG8lnXNmvdWCSweaVhPypap5QKW9x5
	 E1si3vceOQrWw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA318C61DBE
	for <ddprobe@lists.linux.dev>; Thu, 27 Aug 2026 00:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178778943368.6918.674766894752762515.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d7993ce480e764dc00af3e050c88a41ae607941c26f2f971dde9a802f8d97ab9
Date: Thu, 27 Aug 2026 00:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787789433
