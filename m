Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 591147CF30
	for <ddprobe@lists.linux.dev>; Wed, 22 May 2024 21:03:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716411803; cv=none; b=hI1VKtr1kGdRFLLR/SSS/nccwOTB0zM9bsMlR/lyQHAP/bWyb0YWt6pjppuy4X5la8HwHB2YiizQ2aw5GLgsiPTiwZQgPgR57SJ1lH7m8l+6PwGDC7NDi1wgdeoNrGPTtrpfxTshp9ZHgtlD5kUY4Ba/G+hqVBKA/0Ww7tXwbbA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716411803; c=relaxed/simple;
	bh=+iK20uL0VhonTvIcpmvQR+E5txteuY+qipV2EOIL+ZU=;
	h=To:Subject:From:Message-Id:Date; b=cwyAQFhO01OhDyWb0c3Mvh5catMtPJ0o/OKUe6nyZE/y7mYRToCN+2f7Rud5RqIlET4dMBJg+HyX7Z76Vw4h8zhr41RifsZM481EOg+x+bpNRoQOtmhnam3/Fa1mqMmU5qhtHvOGremXby/PQLPKFjf+PzqbajC0im2WpC5XTM8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=i96yV/hP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="i96yV/hP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DDF7BC3277B
	for <ddprobe@lists.linux.dev>; Wed, 22 May 2024 21:03:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716411802;
	bh=+iK20uL0VhonTvIcpmvQR+E5txteuY+qipV2EOIL+ZU=;
	h=To:Subject:From:Date:From;
	b=i96yV/hP1TTiCWg3IBWflqMNTCEoj8AqCrFkqGxe56pbf7cuviz3FMjs7t6xoBCDw
	 gZRTzyrIQw7vRxP6pNScp3BtQUMhQlXoHF1QZ9zNRKxfWEH2qrndxFuFub9KEtQoBS
	 xhU4Hcaa265wrC2gfwzvJNONJN82UO9ze92nDRW8HmiPqamYCouF1h2/jVYPJhZkfV
	 8ViSy7lIw4PwfeuwCHTAFc/nY7KA/VRxzpN/yN0chxxaTbBnRtARkC1qakD4/WBuZ0
	 P+IaTRw1+Vr8bUdFNIo0oVa72GcFTX5caEzeJgqJCkb1LDgj5g817qIdmj6EumBe1y
	 BJSsEHrurGOmg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C67CBC25B78
	for <ddprobe@lists.linux.dev>; Wed, 22 May 2024 21:03:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171641180280.16788.12791081760992648537.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5a1d07996de64bef037a00c0a4a17887bf516683993a96cb9c1bd955a26433a6
Date: Wed, 22 May 2024 21:03:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716411802
