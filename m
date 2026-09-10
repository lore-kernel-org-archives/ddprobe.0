Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 491144A4824
	for <ddprobe@lists.linux.dev>; Thu, 10 Sep 2026 15:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789054834; cv=none; b=nIrm5+5/CqiSefEoNhm2GVOg3tuLq6KbqTPUfqNwGAZTX6tCYR3XRYdHRMgdKGzDwy5Pqhopen1QKSjhGCbwEW6uzqhT3ARWxRm0qNXS/m25cgp/14Hq6XI7507ZUQcj7ciulXvrcZ7RIGKfj20l/Seogm6wuSI1SpCWkPUk0cE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789054834; c=relaxed/simple;
	bh=v3i+uARrSlSTcCMQsZFzgLxFcE1297voexhOV77MT7k=;
	h=To:Subject:From:Message-Id:Date; b=pmLFyDjQqa9vNXj4UMWZpdWGnD1pQhf6CYRMb8K31LxnZNO9Tq75Pw+yVxvR1Ne0R4O4Py4xb7NSpt29+OcwNbHpOT/HkiVUmB5W4E7l9gcPw2et1bbzGTCd0o8RJFCUBaIJNYUu/i0x2IEcz8Oa1MkVUc93AAHIyElUkxVX5M4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pWf/SqFk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pWf/SqFk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D665CC2BCC7
	for <ddprobe@lists.linux.dev>; Thu, 10 Sep 2026 15:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789054833;
	bh=v3i+uARrSlSTcCMQsZFzgLxFcE1297voexhOV77MT7k=;
	h=To:Subject:From:Date:From;
	b=pWf/SqFk4eyUepncmAxTnvRy3jWMlMYT4sfe0uT6IEoycaTZZu/RECIy63uBhiEok
	 9/fkoP8Yi2Dpv7xeblfCdy8taOgLRO+aAUdrPorns6RZckKX5Y0K7iijpp3EI7UE03
	 mPWnRHGQ+cry7+68MkIFj6MoBHxk5YDisPAvO2eUwgzLcIPZiPjVibLlR/eh6FV28o
	 r0Jbkb1jxuLoVRd1G+iyYdRh9hpXxDj7A378F13uVchetu79OZy77eiBXTV6oUeUPu
	 v0MGJL/wBPvYzNdkb/H3EfI3Hlxc3PNki9bUw2OXMMXl9YdB/wj/wX3jg76W8b4WzT
	 rp/4DEzAWyLVw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1D36C79FBF
	for <ddprobe@lists.linux.dev>; Thu, 10 Sep 2026 15:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178905483371.9326.12584105639104104789.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 059729d124ee8eb8dc9d482030e5e4fc97af6198624720ad01ce1fce2c442e87
Date: Thu, 10 Sep 2026 15:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789054833
