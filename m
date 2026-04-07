Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 422DB261B91
	for <ddprobe@lists.linux.dev>; Tue,  7 Apr 2026 06:35:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775543734; cv=none; b=IiZiD7lZNLOVgu01Kz4hANQ0cKpq9/Cy2j/8pYR04xJjTKffUwUADI7lWoCa701TvChIo1aiNSV+6hTi/BpK896OwiELeZGq0DzxcfnmsIVkOYBm/LguhagJsCWaIVxFXq0/IJErVa/lEiFbBgcneAop4j3Kuo4VIM7ysH8e8rI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775543734; c=relaxed/simple;
	bh=q+Y3yfwI7mYeYKGju2YtOkiTgMBdyLwgbVwjXcp43kg=;
	h=To:Subject:From:Message-Id:Date; b=PoJzHKPqhla4KyTC8n4YBJQ6EvKrrZLenWkzRvBbvdu+HsEhobJmaCkb7vQsqCgd9geyCYDRvu7Xxd2MIaeaMAe/6snl6OKCI0+kmsQM52zxHqaLpp3AiykR65d9hvqEdSJoERkXGMwqID+vjJm1UPL0N0JvWCY5LjZ+eLTaBWI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uFpRhNj1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uFpRhNj1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C5910C116C6
	for <ddprobe@lists.linux.dev>; Tue,  7 Apr 2026 06:35:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775543733;
	bh=q+Y3yfwI7mYeYKGju2YtOkiTgMBdyLwgbVwjXcp43kg=;
	h=To:Subject:From:Date:From;
	b=uFpRhNj1j6AF2eo21Ows9U4ltTbpfqQyjaqFqLS7By/UzpVR+kkfrDqBCmRiRDyaS
	 CBOYg1fDXYbEsnT9Z5gvaIIGqt7VjUxhGEJ81R6S9KRNGVstZZh+wNNexlREIfesJ3
	 aJetICaJmSpOKTpxsJySH1e6il2MlS7Q9uLMgmITpT6hg+96oOrol++1RKwz9aYrS+
	 k2kC1IDodjnozpXLNvezKfFXxIy7pM48OhXOPQ/BN0ncvSYWuTzDr3RA7inRzxcnyn
	 3Q2icaSrX4x8OQGfxXwdNWnB0I3FIJUkzM9PXqbSIba6qcOISnFlTqFJSUXQlOT8cr
	 rxUCPunc672oA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B32C8FB519D
	for <ddprobe@lists.linux.dev>; Tue,  7 Apr 2026 06:35:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177554373372.8066.10423572794972410814.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 442129304a5986c4678c32c8ceaeae6996b203f2cdbc4d9c83b3c61c6b9b95c0
Date: Tue, 07 Apr 2026 06:35:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775543733
