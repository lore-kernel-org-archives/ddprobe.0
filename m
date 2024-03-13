Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 116053FB1E
	for <ddprobe@lists.linux.dev>; Wed, 13 Mar 2024 16:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710346697; cv=none; b=AzjZYzxXC6mPzu2aR6Hh+PV2oqgosBM8rQ1r0/LwydwG/Qa/jaOf/5Wsu8xZgQeBOvBJoaNxOJjy0xkXQEr+6TefdWE4KjMIucJ7kKjooLVqHTm+Gl3on7lVPjM3qQ2qMFdgkMFh4HEHtAHUspKLSIqaUot4keMmlHiLuzKW3Cs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710346697; c=relaxed/simple;
	bh=fSwyErRyE4SCsGL2MK2OP7kdb2stIrkYWb2GhCG6z9I=;
	h=To:Subject:From:Message-Id:Date; b=raDb/tuu0kqdihdcsAFpwNKM2v8N8I6p0e85OGBwGfTT/hFbKPtJkNvb3frUSyOIOh1YvAQLDWOyHYryS8lF7bOQRRP+Me9ltuBZCGEumSpgfrMREuXvqxt/mKpDlaw986fTZhu5DVTEsq0C5QwogqlFWIi4w2SUUBdPIU4MuJI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qYyzm0fZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qYyzm0fZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7B147C433C7
	for <ddprobe@lists.linux.dev>; Wed, 13 Mar 2024 16:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1710346696;
	bh=fSwyErRyE4SCsGL2MK2OP7kdb2stIrkYWb2GhCG6z9I=;
	h=To:Subject:From:Date:From;
	b=qYyzm0fZ1FRYOhHtuynCliJ9XBy1rEEtg6qInRVMtFctEXqF4kODH40TMQsnGkkR4
	 /uo/V1GSSLddoQ6xYvXUqZhHGnMxnvaIx7bfHOZqJC0KhDr2ga51ck4MFPMGi1iEYP
	 frDq+D1oiXrzbhq3POdcLY+7NQsLQmFSJvlZ40r1KleNrgRxz3n8Wk9Dr25XVRMZAR
	 2PIVU7p/LQ5QwwqbOHtZe8AAm3PWJl+MKFar9uIKk0/C4V2K62b82dXXlSVZj3sBOM
	 Tj1dP0E0awZhAhx96DSujgEgFGaQyxpo0UG2YSv0CUl61SwXRm1AOH6DAlMPNBcXyK
	 fA1jTVJOQiDhQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6026AC54791
	for <ddprobe@lists.linux.dev>; Wed, 13 Mar 2024 16:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171034669638.20253.9394443164212393917.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 151cf0dddeda0f64ea08cc6a1e4b533bf0f663427415bbdf710e79eab6200a12
Date: Wed, 13 Mar 2024 16:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1710346696
