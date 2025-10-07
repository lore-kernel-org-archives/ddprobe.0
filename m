Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E03734BA33
	for <ddprobe@lists.linux.dev>; Tue,  7 Oct 2025 00:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759798794; cv=none; b=swEnr66Db4eeTyL8kvyTqFh1mTYsZyItDJmCh9ez+dB5vr5wpSmFzh2OIZseM6+CkixavyoiL4ZC4Pb+LR7SNJWZwEX9/QxeWpWWpbbfDicPnymhDyA3aJqb6nqMi93IAeobTsGA8jBqcevEV60ctMHeE0zWAaCtPudV7UNnDMY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759798794; c=relaxed/simple;
	bh=zx/3N6syYc1gxmLiyiKfrjydQM+8pZkQD5DNVD0NA3U=;
	h=To:Subject:From:Message-Id:Date; b=jKMlHd0RBGFaspdnHMo0zZullzVDO5VSm2pa9v/6KAGoB6cS6IJr85h/wigG2aL4KDgUGaOJaxYvdrm4r39fePY1dPlUp57NKG3NH0Qin+5tUGpJUT+1yq7kl6u8r4UKLHg2JPQHk5RDwsez+j8QFzRLVCpHJ/XcCAmR6KpCpA8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cazFv7mD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cazFv7mD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7CB7C4CEF5
	for <ddprobe@lists.linux.dev>; Tue,  7 Oct 2025 00:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759798793;
	bh=zx/3N6syYc1gxmLiyiKfrjydQM+8pZkQD5DNVD0NA3U=;
	h=To:Subject:From:Date:From;
	b=cazFv7mDUaYJSq+/s/auCu7u2YM9svkJ3B6N39AxKavF4tdYqv+zKiuKZIYfglq9m
	 jAEF/19ZhwAzOSXipvbINKRt3XuxCXJg4BMN36pST4xSmulNow/1UZjOvbHh9gXk/E
	 nsNfpEUYwc8ik5JSkRxSdmlkt6S9nNjAK5yPBkfBsZGKXaa0HZV2dau9fT5AYSd6Rt
	 Vkx0ZZFP4v3GdgH9o1cwUWpAkNXk0Q05+Gg1ikv9c2aYYb/AkinueigXSLzSAMPZXC
	 4qJDS0r2+Teix5jHd91zKmEZ97pYhAmoZFucZZup1AmtFIp0GvLr9625YVyAqmimAY
	 gowPd4g85lsZg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95848CAC5B8
	for <ddprobe@lists.linux.dev>; Tue,  7 Oct 2025 00:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175979879358.6835.2808500589426772448.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9f6f50be3b563ce802a7e762c4111435dfcbeb40bb69935a9f4d6e7db6b6fa2f
Date: Tue, 07 Oct 2025 00:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759798793
