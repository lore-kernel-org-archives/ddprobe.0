Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 063E133ADAD
	for <ddprobe@lists.linux.dev>; Tue, 16 Dec 2025 12:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765887834; cv=none; b=XyZovHMgHar1wIqxAnZvpLxRYIP9jQ3gWva85cICk54NejSewC5tX2e2W0ccE66L/BaDIG9c0v3HDThD7L0SMzCZVJXsavTJ+jqoIwcxIIz80MLD8IPnMiGpx+IuK4J9SYtURQqcHMvePfFJex6eashPMV/68AJ4GYp7MHIylSA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765887834; c=relaxed/simple;
	bh=o3h8jFZDYIQnXYYUZVPBKAr733sEIB/sm3sswYVvcP4=;
	h=To:Subject:From:Message-Id:Date; b=TgFWquJ29M0c/LvzTpAzO09vKgNuCOpB3QLjFovH8EDkuZYsscMAC2rc06NqE8coE1O6oOVJ0BcRbcRwOXucMm7FpcQCjI9xgRm4I0B8Xwec6gybxl3Y7xy8wi4DPyV+7x7Xbupxi+1LISCcXtflHikuDvsvwOOVeH3XztJSp1w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=R8J4sAPn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="R8J4sAPn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9CBBDC4CEF5
	for <ddprobe@lists.linux.dev>; Tue, 16 Dec 2025 12:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765887833;
	bh=o3h8jFZDYIQnXYYUZVPBKAr733sEIB/sm3sswYVvcP4=;
	h=To:Subject:From:Date:From;
	b=R8J4sAPnFwJgA1q9O5zmvlzDqmH5YIWratADOeniahc/NzovV0nSx2pGCv5iSESpz
	 3hmL8rlwbPTbbF/YIjp0Bs4PC2uWBaeiFNKWRV52P3NBRNHWRxf+mhrH7xb8JN6JSa
	 KNExALFih0nfVQjUdxoEwI/6TUoRFjHPrB3aSUckC3UmbtuV7VP73sc6/EeJLtHxor
	 dxr4byn28AnR05XIUEMgKrSZL2+PETnNUW+QNWB+dKtGtiMHzvqcGEFk1DMwuoAhMt
	 Hm6a0f5vqWXQqzv90neBToPylv7g9HjqVOkPIzNSIKmSafFAKLgr7vqkgDZScdagx/
	 EiL6qJfUNOevg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9374ED5E133
	for <ddprobe@lists.linux.dev>; Tue, 16 Dec 2025 12:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176588783359.19274.10409057229320813091.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7fdd9916b1edb0b5495ca62b8f8f4c33549e95c1d5d764e46f2b315fd8a14d30
Date: Tue, 16 Dec 2025 12:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765887833
