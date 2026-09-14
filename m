Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 536DE414416
	for <ddprobe@lists.linux.dev>; Mon, 14 Sep 2026 09:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789376435; cv=none; b=qwlAKOwd54reWmkx/UVnioVO03V/JqwgotpHGDeRrw/wQTn6fvxMBGDpW3bkUP0ppf2i5EF9PlG53ynUx3XNAsTOZlTj+ERlBW4EqmJq3s3t9LvApk7kF46cRnD9RwoiwUesIoqHp0qVVrBOOpPOuVnPpLJMe/AVhUf17CZzBTA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789376435; c=relaxed/simple;
	bh=zrrvNesRsGHwAFvcQXhEEzUdehhWe/X6mCWd9zVNnsM=;
	h=To:Subject:From:Message-Id:Date; b=C5ogIedpwmes6loOZA67YLp/drxvjmdcFoMHnR3FryFqeWTtKEHnXo0JALHuVsVtkuZRDkJfpzlH9yr0b8+ilDt/PyfHR0es+9AaVezLNsvZE8T5hXIv2UJ+mxZ1S6dNx+fEZbkEuHiPwac4WHEGk8+pP/QQTELkglhLExJdsNU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=J/mMEyFe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="J/mMEyFe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DD6C1C2BCFB
	for <ddprobe@lists.linux.dev>; Mon, 14 Sep 2026 09:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789376433;
	bh=zrrvNesRsGHwAFvcQXhEEzUdehhWe/X6mCWd9zVNnsM=;
	h=To:Subject:From:Date:From;
	b=J/mMEyFeen9Jl/FV2npa/6ImVtvW2DZ9QOfxPBBix9UyZGkTfzd0Ge/zonrH8FidR
	 ZoTQRmqp7Hh1591zqhiSo6PcTAQpALr6psGwYgCIydCdnXpzJduj/eNbMUxs9HwD32
	 QP3WAKWhZ7GpJ/xEQhHlHXltjb6ctCORBmdvWKKYBFn9EBi84xpQoTZjCtVJwYh+uC
	 SFR3/TO5tr90ZxY8NK8QdzT98rk9H4WIvi14As1UwKDvuctD+/DQ28KsjIZE7qxCHF
	 hXtpS3zllcrvZN7QE/xfwIjj7R1rQWmaUflVJ796/y8PC+G+5RE9c+43T7+m70vdc8
	 k2MpizGncRweg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B5AB8C88E6E
	for <ddprobe@lists.linux.dev>; Mon, 14 Sep 2026 09:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178937643373.9646.2492098832730148230.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2471c4768d2bb751f0c052ba480a46e9249ef812ce2092858ca841f476ddcc5d
Date: Mon, 14 Sep 2026 09:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789376433
