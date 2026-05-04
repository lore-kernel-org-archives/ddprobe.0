Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E2F94222580
	for <ddprobe@lists.linux.dev>; Mon,  4 May 2026 06:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777875454; cv=none; b=o+ZA38x1nXVdWlAp0Ocum8IGghvipJma8akgSkdS4o7a19+6m3tomzXPyi7rsd/UaszU796/30p2IBBA6vlKe8SVhgQ6DKcns4E8mkFDPkovRwnmsAOGQ9YpMYCClCacuWpb9CeTFQzG565cmiDrL4/BFhiC4u2cveso0BigMi0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777875454; c=relaxed/simple;
	bh=dKo4fLKtujbzx3GkC+ExK0jlJXNe30zdxeZg0rywv1M=;
	h=To:Subject:From:Message-Id:Date; b=n/pmO3pEISdZ74yGbulMbEspF6cdx1Kg/qlmolWkGvXQ1cY1kxT4FUtosyEVczeYyN02Aclj7Xgn0f5FHH9PG+OokYIRthYufNKq1c1CnZlf5iW5dtlG3o5wFaFH1ziI+PnFazc/s1u+x1104qnCfC+XD/X0aBszEYDdaumW9vs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WZpFdTnl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WZpFdTnl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BE5E8C2BCB8
	for <ddprobe@lists.linux.dev>; Mon,  4 May 2026 06:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777875453;
	bh=dKo4fLKtujbzx3GkC+ExK0jlJXNe30zdxeZg0rywv1M=;
	h=To:Subject:From:Date:From;
	b=WZpFdTnlF28aTU7RkEet9SNb6Mn3nnV5/7C8t1k7yvfcsWjrFGfB7NPs7gpkR84jA
	 WtsWEOmFOARgFepZuocl3Ny2tXjF4l+c6jWnPX30sPdVPyOnXVTGWN27s/oVye8bwd
	 f3iUEpHde9Z+Fml5kZjp6cq0w8ig3O97bjWKGm/O4Rk5q3gSEUzprw5MGcedHQkJ3E
	 BOf0rRtGuSfGnuyo/6Yx7Ndck/ICcQbpjmg7wi5ZGOoGBRnAqnWVNqnpvaxyihLAn6
	 goXWuiKmwsSzoTZ1pBXFYEN3iCwDTTlzOTfOFl/u7oI8v6bqrVFyU//HwvhGnRd4Mc
	 BRZBMVsyZVK/Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B030ECD3423
	for <ddprobe@lists.linux.dev>; Mon,  4 May 2026 06:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177787545368.32448.14083779691681593247.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ee5286ef98260ddfc15b3855d423a7a066e9ec0bbab1669020f4791c6133c05e
Date: Mon, 04 May 2026 06:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777875453
