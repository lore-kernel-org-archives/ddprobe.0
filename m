Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4061433FD
	for <ddprobe@lists.linux.dev>; Sun, 27 Apr 2025 05:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745730594; cv=none; b=Se37v9Bg5Az8a6Bs6xYDmP3g+hYqFgPSiRa/jbI7S90NirVeZ+XfC9m6T3Z+91xEvQzd863T5mCbIJ0mPXKOpp3M5kLJwsvIp1E6Y6U4OLUGVbKs1I3h/mAGlh+X4lHcqoFFFOG56Ornh1h+vV0q9iNdA8j3BeySebPSgB4xM6I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745730594; c=relaxed/simple;
	bh=/VA1TsWV6saEmMxOHesCFDfHpAtti/DQY6nClW3UXkw=;
	h=To:Subject:From:Message-Id:Date; b=ZmEpaCnc7H06xtpY6uSwqN8UGDkmfZjhGu9/8QXcpZAfIv1Z6YLuHN38u8NVCgpBCIQHxhXWvMGNH51JCGQhYZASq1aKmNg+jIGaXUlo48uEewkdiFlrA1GPlrWrS2xBV/983+mMh4EPDMXSl9piG57kHxDdO7dZh6Rn3+uFapY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Cz9gOQOi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Cz9gOQOi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D9F7C4CEE3
	for <ddprobe@lists.linux.dev>; Sun, 27 Apr 2025 05:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745730593;
	bh=/VA1TsWV6saEmMxOHesCFDfHpAtti/DQY6nClW3UXkw=;
	h=To:Subject:From:Date:From;
	b=Cz9gOQOiMQ8PA48kEiH9vQgZ7TFje3/ylK0hokpMFW87QlpEkbAOaGyrMYm/ksQwZ
	 JrPYQ7OmQRbyxAwnHvCSf22WkQN72QCOsplt4jQv33xgBcaZJzv6Ua4NjGifGNcCsD
	 V5QHp02TgQ7ZyGk5GB+18ZtMSmeXSpVXEF6nfizlDpETjMoB4f00mK6G81mBpOnb8U
	 qKMz/yvDQwzfL3vJODT84y5fGrr+Am1fzhAXxFR1en+CtjREanB6aSatOjGj87QkaZ
	 /8sKZe/jRW4qUY4EtuxY4GF4qidxdr8fqZdvS8tzg1ca0NQVcEhKnLeD+QV50yM1eN
	 w/gHg4KYERp1Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E7D7C369AB
	for <ddprobe@lists.linux.dev>; Sun, 27 Apr 2025 05:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174573059357.20362.4550437588985143931.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1d2c6c66a817fd0a88981a984a755b69b17e034b97e79e20f03688f0e44f7443
Date: Sun, 27 Apr 2025 05:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745730593
