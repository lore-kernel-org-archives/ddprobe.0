Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 56D2A3A543A
	for <ddprobe@lists.linux.dev>; Thu, 20 Aug 2026 06:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787206834; cv=none; b=HcoDPx2jchnprlPs+OdnVYvStHX8qxlL7Xe/PEu4jNVhiEkjQNub6uxYHvqdVZH1FDfIAPXmJgu0UOpJg+QAuq8fsf22SA3HwIKa8Sa7QsYWz1RDVTSkpwY60MCEKtav1/6ymmCn7GWpDnbi6C369hxmxzGg6ziGYXVBVLDh6RY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787206834; c=relaxed/simple;
	bh=iD16z4Kz2orvxMerIOjExIkHrUK8ff4qp/acR29uxQQ=;
	h=To:Subject:From:Message-Id:Date; b=dGeFJfO6IM1ObQNfJfy0U32YUHi9DmxWTVArrUZuCLaU7RCemRykSHpBZt+nAxccv2lWWwHs/n3GjX3chScvqEavOtzaNPwE1J7+MkWDur2zp0NAUjBVxIKqKQ7egex0ipfCiyx3c3qJIE9YhrxSaRkDlJHthjfkhtofjMcvN+0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iEbnr54a; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iEbnr54a"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DF1CEC2BCC7
	for <ddprobe@lists.linux.dev>; Thu, 20 Aug 2026 06:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787206833;
	bh=iD16z4Kz2orvxMerIOjExIkHrUK8ff4qp/acR29uxQQ=;
	h=To:Subject:From:Date:From;
	b=iEbnr54atKiSvvJRGAqg49SPctn0Tksetq+icKbzBQsLKKU0Hm+aHkSyPrA9s9HAg
	 HS3myDld952W9H8UFC5WSqpAh2TVJIfS7GJJQ+VomAaHmmT7f+IG34zo28jHhBOtyt
	 +v8OHLGkW+RhuALZmlNA7wadz1WCnAQ6gj72s+bPHUv+W6lsdf0FoxzhqUJeKKHq+9
	 mwI5Em7hR0aMTVWxXlY4gF0FWj24ctWeVHQRrSbkYzBh7kro9KqjrSCwkIKWzxpRV2
	 2dWrqm+k4GYpgkvNsjElgdfANOz5RE7gkndYeaiyUi7j6lSxJO+anyANWh+A8DCSH+
	 hDdpOoUG6h9TA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B7C9AC5DF81
	for <ddprobe@lists.linux.dev>; Thu, 20 Aug 2026 06:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178720683374.23630.7298103921759435346.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 26b59dc0be2ddfda7094b5a9a756d554aeb941a952a599374811fde998459226
Date: Thu, 20 Aug 2026 06:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787206833
