Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A0EF2C08B0
	for <ddprobe@lists.linux.dev>; Wed, 27 Aug 2025 08:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756283395; cv=none; b=IDXRk2XvECYuKdSXKwyR3BiWI1QpfONVplqnANQ43ZqC2LI1UCnZ1B96gYWm7l62VzbcL8vlfregoJcbAGLeE4o9xBlu1OBn6oZ5KnPkkDumz+NN0xWqeprKEkbvdZBQSdACurk2cBuWuFt1glquPopgHCDJRio6Eug7tmCHqZo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756283395; c=relaxed/simple;
	bh=epUDsjamG0Zpo7Y1rEoFYdLtcTEBqOvJPulyF4oNeN4=;
	h=To:Subject:From:Message-Id:Date; b=pcV3uQbmzCEL0a4KZUY2rUQ28l5sFJrFRa2EFTTmhANf7LaNMXvLY+9DH1yBOrbm394tJfE4IN7pbwqlQ5ddnjrwf7AmIYrjr7VtjzyUG+w88JRsewNNSb6ge2QogURWPJba66xUU85ZTgKdhfAZXaFgQrygTOxBxO7Ev7NwZTw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mtEwliAv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mtEwliAv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7068C4CEEB
	for <ddprobe@lists.linux.dev>; Wed, 27 Aug 2025 08:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756283393;
	bh=epUDsjamG0Zpo7Y1rEoFYdLtcTEBqOvJPulyF4oNeN4=;
	h=To:Subject:From:Date:From;
	b=mtEwliAv0mjvzYgdNf+Qv1joeWM6F6wJZ5phfFJ0b4PTSo1LATSGZbcq9exj7bykx
	 IqvxThkxu08e31ZcK7/mLx0Na573Ouk+mkvwOqEfs5LIeG/7C5oHMnu43vcFjDjcJ2
	 mEZ/6z2d25yJ1iyaEwxdtMZqB2fCT2HbiGoyHnmOpBSWkcssZU6X8B1Bl/vufZ9mM6
	 N1DXyFEPYnIiLaVGurk1gJyizI3O+lMV9WRwRGdpedCXy/fzDJyy33qDG8aQzRrQ0D
	 BJ+nzvN9/Xz3XhMW+xf8Xs80OP+GnU2FEAoMf9LskMooNcLR6aswlR542AYIEbiMGs
	 vvYjYOOan07vg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9DC2BCA0EFF
	for <ddprobe@lists.linux.dev>; Wed, 27 Aug 2025 08:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175628339363.15378.8095266663383142771.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fcdb5d30663c6b4a9e5fa12d088be5d7ffe44893c067fb5256cd697a24b4ff6c
Date: Wed, 27 Aug 2025 08:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756283393
