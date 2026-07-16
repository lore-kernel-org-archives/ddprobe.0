Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5AA20273D8D
	for <ddprobe@lists.linux.dev>; Thu, 16 Jul 2026 05:08:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784178514; cv=none; b=dGzgplrCF9+0N6bEs9CCnaAX80aAtsiUgCXxGWnLXgKV6/OeIO+sXcOovPKYF0RgycfbPhYaf4RrXN+m0FjKohYYrtaY3XIVhVS9OfZ8SBX6AxbgUtr6srn0VCAecCAfgQe2TM85zS3qPkCdw6ws7V68oY9sLddC6GRQx7cM4uA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784178514; c=relaxed/simple;
	bh=/LyUFoFxjb5FZLa7XOjtfREMFrwCD0i1tAqDyELiy8I=;
	h=To:Subject:From:Message-Id:Date; b=s38Oe9wFCRORqeNVh7+YWnAe+uDDI2sX7km3WcWpob8NG/Fi4l8du45KRzkjDCo/rdLr0jmInchtLS0dCNzYifBxIVEdvk31RT3BnSk1fAl6Bc9VunkabRXGc4scGpcw9uh/hmAwc5yaOf3u9JFCpNCXE0hbS6mTajNgtu885R4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=F4Q6taAd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="F4Q6taAd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE00EC19425
	for <ddprobe@lists.linux.dev>; Thu, 16 Jul 2026 05:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784178513;
	bh=/LyUFoFxjb5FZLa7XOjtfREMFrwCD0i1tAqDyELiy8I=;
	h=To:Subject:From:Date:From;
	b=F4Q6taAd15Z5yYHQxXfOZ6KftiEWKZeqvwIKPzY9F8Hc2IPHovszHqCyOd/c/t2iG
	 R5auZGaFMnso+w8asFFrw2HCIj8Zltp1pf6Aot+rlGIeWg55Rqcp861oxfUOZf3bxA
	 L5E/DiFSgrxaoLkdEnJB2IquKiTM6x2CRX8aV94mEv01fMpvxOA4vHRpRaVpAVI9IX
	 L00M9qBmSwbVE1DqJxM6EynMf08q+UESwoePZdZqb0vc+2iOJhufsA626P4tv1P9rL
	 OA9SNO+zi+E2Owff5fWwtb5gCUazQfp5+rysnfGZOq6Fo/eX3wBwNO2NTyxUFlRr85
	 DBZwS7eHYqGLQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAE8DC43458
	for <ddprobe@lists.linux.dev>; Thu, 16 Jul 2026 05:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178417851368.3716.11497468182523675853.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 27912b12a649b4e2a3fbd9101ad79ea2e0557699a43623668a58dc2aa1663aa3
Date: Thu, 16 Jul 2026 05:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784178513
