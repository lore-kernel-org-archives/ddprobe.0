Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D73419D8A8
	for <ddprobe@lists.linux.dev>; Mon, 25 May 2026 03:02:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779678154; cv=none; b=ujhlIghZCwsubzWGACe4i7cXZSSueK5FoBt3strvuIFNjlQgoFPaPcX99d1dTwrqO7YdIs1jAWrDq2iCErYW4pb0ZQrJ9wwiEhwBxhrGKncGCPkXoyNGFubz/Ao9tpL+VPIqCaNXfIcvgvG3Nt6br8kLh4UO6xU5thxfKw5AkHs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779678154; c=relaxed/simple;
	bh=K+fuTvsCRAP7b229TGimYKmOCl/401e5pfS9EbFOkAc=;
	h=To:Subject:From:Message-Id:Date; b=By7jQKF1fxK0v58dv/+LTUo/NiZeiU7M03yRUzrXleGCj9WkuTC0TqxBzWeIjHhXUKfSFFxsCuXb4YJkplQ7EXso0F/ig6sBsh0hBBxe5K6lK3qF/8BHNsIsqq9Fwl/amsY9xZPynrfGNDNvrNG4B8tEJdYOsfHO8PDhmRwJr3w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NKxyQszu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NKxyQszu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5CD3C2BCB8
	for <ddprobe@lists.linux.dev>; Mon, 25 May 2026 03:02:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779678153;
	bh=K+fuTvsCRAP7b229TGimYKmOCl/401e5pfS9EbFOkAc=;
	h=To:Subject:From:Date:From;
	b=NKxyQszu5qEFhLc65UMiQErzG2sLprn64G6Zbf3Egeb0sd8C8dDXGjJprOK8K3tzC
	 g9JGSmFXfSuykE1j32ZAQxYvk6HrXnpMUdXTKG88D3xrgFOoBOhhvcpoJmXZ2OsI6n
	 Zr64fePFTdnBuItUQUZEahYuFwPJanz0+6BxIBcPX72Nd9SwkBf4H4/o71fhPSbjW8
	 6t6G5pVb8ypKofvvVLBaLx1uG5quw8LG3mqJXaZM0ieMAcTxWDhLiuJg4L5o73PuRF
	 MVjrSNdUBOp/1OFHabZQhlW7keInvzlmxFbCO4mS9PhkPqD4NEAb5glevKE37T835t
	 te6SS/FbAw0eg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1D15CD5BAB
	for <ddprobe@lists.linux.dev>; Mon, 25 May 2026 03:02:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177967815371.29804.4628208579526020516.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 87a9039cba78acd57e66d4168bfb1dd76c04cf9a5bd039d8b680998af3bb2dbf
Date: Mon, 25 May 2026 03:02:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779678153
