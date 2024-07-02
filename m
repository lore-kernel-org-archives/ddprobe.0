Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7840A1A28C
	for <ddprobe@lists.linux.dev>; Tue,  2 Jul 2024 04:35:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719894923; cv=none; b=VVyddb+vITO/6zJIIUgKx3gLpT9fJsuM3OyhKkrFGBS1iYHbhvqSVJOh048oe0g8On2V7pe5diSSLtJVIFS2+8e90AtTdPv54tSZiar5xGpK3TpkNIg/B2C0GBKl+2A+WvHBoh/WMLDWUmdFwldcGS7+KjRpH4sVKV9SSzNiFtc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719894923; c=relaxed/simple;
	bh=K21YMJfW0bqbUWKDReVZqPPtZcZ7mqf3J0TL71ghCOc=;
	h=To:Subject:From:Message-Id:Date; b=hRlnu+euFWeWODN949BAVNHQ8RGg8AI4pgYq/NH4Mk6HVEhpnWsFOtDTM3gwP8cOUApk4aJiOUqm8a2O2lIie/H8lvAvdIQ9gu2eEs0MDtU6PbhXZmh9Jm+AAWc3pO/LQ8fZpyOUXGdgTifXEv8QWqZbX13CnPhjvjyI7p0GN+c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DXz5+MrX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DXz5+MrX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DD2BCC116B1
	for <ddprobe@lists.linux.dev>; Tue,  2 Jul 2024 04:35:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719894922;
	bh=K21YMJfW0bqbUWKDReVZqPPtZcZ7mqf3J0TL71ghCOc=;
	h=To:Subject:From:Date:From;
	b=DXz5+MrXulHt3g9dWQJb2InI7SzG5DX3Ghl0FU+yQ7Lk/iIOf+uzJLuQW45YPh7dV
	 MOAr3MZiajd2PLcLRsOPSHcq4jXjoursW+otAtTdhd35aSedTxaxaf//e49CBkylQ7
	 AL5DZrAy163THrjiPPBgFU02+vRPuLA2MiYv1JYK9oaUZsGDG+dNczYZOHrklEjKmJ
	 VLjzjTAfbex9SdBBAhdlM70nHZkxR2lssJCiC2b1vprgJfU/pmo0c3iVnmmMwaNNAM
	 GJ8aVW/TcI8xRywhLCsDhiLD+7OKkUS13BKroWsplTVTidiBYwYKyYpjXnT+L6WwgJ
	 j+AX6y9UEWjig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C6217C3064D
	for <ddprobe@lists.linux.dev>; Tue,  2 Jul 2024 04:35:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171989492280.18790.2352803573488331207.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 08b0324b89dac5d8ce6b5d98c198de38227d01a6eca80c370cd631aedc87acf9
Date: Tue, 02 Jul 2024 04:35:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719894922
