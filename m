Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 60D57420862
	for <ddprobe@lists.linux.dev>; Mon,  6 Jul 2026 20:38:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783370314; cv=none; b=HTf7nFjcjxXRkcomubpcjdQNTG+V2lWtQKyoJgAQQpFAWI4tD98ZDl1j0FwZ/WuvffkFkrzOJvswPJx+vTTESaiYLYR0u0EqSsyPlE+DlN7g2aaYoFCMC1t+oBcVYMu7z1QCtbE7F3WpSNGJL3G8ujRSNRX5wL16euL5pc+qolo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783370314; c=relaxed/simple;
	bh=1reKOC/ag1u3jGdTPaUO7OKze8zwfTnk/LZXIyiprTQ=;
	h=To:Subject:From:Message-Id:Date; b=DoToDn2184plvLJvOZKbDNkkDLXPCHbnxA61gtyMEj88QUyqwvOqywZztgby5L9LUZB+Lan0AuEtpKvZDP8R5k2OaPjthcVvwCNlC3TVd1b6mnIQOJ09dfNMb4cj/l7lDO6VCHLonXIWrZXTQDNw/EZT7cW2NWmT+nx5MtW6lD8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fxxtvyjU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fxxtvyjU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CEBEDC2BCB8
	for <ddprobe@lists.linux.dev>; Mon,  6 Jul 2026 20:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783370313;
	bh=1reKOC/ag1u3jGdTPaUO7OKze8zwfTnk/LZXIyiprTQ=;
	h=To:Subject:From:Date:From;
	b=fxxtvyjUWqfDbAwHRF3XQqexPNvdmeQLRKKZgyBU0UqeYsQYOuuYvq92CuDYE5Pm1
	 EiH/zsX7yteyfcUW+Zp5x/Z+gzA9ev6eYNKzSxjfcXS4mLDSplkPncfGavaR7rrRwb
	 E4PAi1Ll6JeAzwYqu1cGq320FVofJh5ZZ7j9Z5NXDRUy7X9LY3vhB+yYrCq8hno1JY
	 w7ioLYKCE/Z82/2mxMLkqHP0vzaqPaHznvtRZr9jE8wB5usVtOFt75P3n7l390RiRT
	 ovO3WyifoZwzSLZgKGIy9RNNCMs1tu6DXCPsvF2zql370+UeN+qglHKFTjabMpypyv
	 sJJWZHveofn/w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABE4FC43458
	for <ddprobe@lists.linux.dev>; Mon,  6 Jul 2026 20:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178337031368.15354.9190484940075424633.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9915679ff1a54765e75b56d3fd357e32047a6fe40e13f785ae57bea0e64a29b2
Date: Mon, 06 Jul 2026 20:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783370313
