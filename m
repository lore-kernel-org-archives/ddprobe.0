Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24F8B43AA4
	for <ddprobe@lists.linux.dev>; Thu, 27 Nov 2025 01:32:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764207174; cv=none; b=Ah1MPMNk5SPBJ9+xeNxXl3XV3rN/eXoZ3rhC+idSo1sMJtR+XRAZN5I3p50MLUwW6RHj9Ewvd/RRaCNniMtPvLjmh1ZywdAFE9Y9sKJ5qnpKS65JvD8zWustlAu8eAZBl+CjZj8iiO1bdFRccofXclrFivRor3G52O8fQTXF5UQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764207174; c=relaxed/simple;
	bh=BV9QjR2DOS6q2WoLYekn6FvKCJQNrQnMMqO9doLTAQA=;
	h=To:Subject:From:Message-Id:Date; b=FlAMyfaeuLrOt0tLsrjA+qor31h8jceE+r6HotDvfeqXeZyS/QZfKISTgyncb119OexSTFkkEd+KZ/SaypGl0AwWbv7L1bUQsGM0wG7Qa16wNiKkyyL111SQ6XJ6WXU2pqVYe6O1KQ9Gavhme5XGoe9wEi21gs4CHyoEbglLRVU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IVKZ56Lg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IVKZ56Lg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B03AAC4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 27 Nov 2025 01:32:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764207173;
	bh=BV9QjR2DOS6q2WoLYekn6FvKCJQNrQnMMqO9doLTAQA=;
	h=To:Subject:From:Date:From;
	b=IVKZ56Lg1m5Qnv4J95mSP6oRqzO6xvVlseUwsPchMpRPk4Y75Ng/5nDR1H5tAqLrm
	 347rzzF3ha0Qw0DONDSnSbqcoQcoKvEFnx9zkXNvzTzG8TE/mR53GWycPpSEAaJPqY
	 jjfxZ+p2SkXGEJnN7IgfWDcBeli/6h9XtG5Q0/1qlRi0OJMW8CwThtXEU3N4S9kAab
	 mDD1DksXl3iBiyF22/kfnOPXDTuWsVsFfXfT8wK7LEzLTiGeZpjn+ew6KBgeXLHXa5
	 PYs1P438yChmg0hFryh99W433hgabBKvCT3g/t4WSKh/2vdpr3EnFfZYL2meU2VHKE
	 aUp82fAk+XKhA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A393D116E3
	for <ddprobe@lists.linux.dev>; Thu, 27 Nov 2025 01:32:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176420717359.6546.3802422274260645861.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 782f3dc97ecc74a909b32fd8cabcd9be7527664b1352d60a40b629083f417721
Date: Thu, 27 Nov 2025 01:32:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764207173
