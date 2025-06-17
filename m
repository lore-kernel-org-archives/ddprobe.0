Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 257932206A6
	for <ddprobe@lists.linux.dev>; Tue, 17 Jun 2025 17:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750181394; cv=none; b=AZKfxVmuauLCC3UTDSJ6J9J8/So4qiyEc4DRwvx3m1zpwPWXooD6+XouZ15OVY+EdJckyiFSN8L9bnqWdnreoBLXMvwmz/vhI3X1mXnsPjUpK8dYwtu539UMT/G7ERhnPyUMV/XArz23qG7T3cDxVRBAG8QDPEYfRzFXCKA5ioo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750181394; c=relaxed/simple;
	bh=21mOGYKU0gAQ/5NgiUhGTYZGJALw9LxYtu6zXxoqvC4=;
	h=To:Subject:From:Message-Id:Date; b=aTe2RnDI3VAF5dNb3zAXnb6pe9KoRj1G5tqYc2hutDeT2H5QW6j3JRZ2asfEdDzdhG+/vnLbvOfeTye41Xf+krwoMRCM3i2l20DUbzTTIj6mDxNlmFP+a/aOqFdMFi/aabKzvRfxA5qDw99Ecqinyz/WZJs9pb4/Fus23rkaRT0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Bss/OZrO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Bss/OZrO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A46A4C4CEE7
	for <ddprobe@lists.linux.dev>; Tue, 17 Jun 2025 17:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750181393;
	bh=21mOGYKU0gAQ/5NgiUhGTYZGJALw9LxYtu6zXxoqvC4=;
	h=To:Subject:From:Date:From;
	b=Bss/OZrOtZFLB3n+ISsxoLgRWKk9DDo7VeD4nZ9Mnf0IsprivaRJWDjz4suoyRZ1e
	 70dyrnanMnTGrasasVcV3nK6R5EJH/3qaupx58ZbYoNt4YDVHEA6Yc4HGZDP4frjHw
	 RJ71FpmZO0n4sX8WTj9lmfFs/UEIJD8WOQcQ+aK9PMUU5fE7y8xVvkaIgbMmJaSx/h
	 zBM8y0ELywf9oOdUrPND0LCOCsHHEShk2eVsINLWaPTtg2WKe2lFYXPqa8j7nwebsT
	 xwC1EsB2P8udAcs6XR8OnOL+LUr6r9IhpM+xOvmE//xdgZrkA5FsKeKF8UUalEf4P6
	 8Aj6XPz91oHKA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8ED79C71136
	for <ddprobe@lists.linux.dev>; Tue, 17 Jun 2025 17:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175018139357.30604.2008105068285230700.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 46118de5d1476b30c3ff6eb2d755b3303000130c683fd18d287a536169de0d0d
Date: Tue, 17 Jun 2025 17:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750181393
