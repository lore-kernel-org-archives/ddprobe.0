Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B6ED12BF1B
	for <ddprobe@lists.linux.dev>; Mon, 24 Jun 2024 08:52:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719219143; cv=none; b=MaiKxyIugAUO0tWL2snaUVf0/hqRztT6lWG3A8murLiyAMUyJi4NTD3XnOr1XYYVmJigv0jOfj2KHV1ASJUz/iH2dsJG8QRCEjq112cTjmMtcJt38Ls8SbMbWysd/dqXCzrUH81VFy2ZAcWHwzpV03g5uu1nYVatW6uz77gRoeU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719219143; c=relaxed/simple;
	bh=5DaEgmFdSnl9D5wPD1znZQ2yok6obB+tvWityxARZfQ=;
	h=To:Subject:From:Message-Id:Date; b=tLt9ORssvHXe4b/CJF/zPT1QHhrbhsCivTAAz0Air9vEGZtCyQUs5y+yxUoTkZi/DZAPr2tKhp1DJN15N6SO+NUGwRwGp/Q5ViHZXcIaqrD+X19uaFWM+qp1M0ju7KXhPue1YhQ/tj3X+HJBEcmXxx7CiHwmE+ytgX5ALLNM8vM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uJUhpXSh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uJUhpXSh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7DCCC2BBFC
	for <ddprobe@lists.linux.dev>; Mon, 24 Jun 2024 08:52:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719219142;
	bh=5DaEgmFdSnl9D5wPD1znZQ2yok6obB+tvWityxARZfQ=;
	h=To:Subject:From:Date:From;
	b=uJUhpXShXTXLnLb22I9TqvVgoWdaaM159Twx7Wgd2aTEjFUGKlzahbSONMTGPvX3x
	 lwMXKzvb+WJZueVn4MJU99BDeEpfnpvnouBAtRKkXtOqQXGUzMFVzuyClqXKWHGzD7
	 CHOAEMiPVK99X6UfSrrmPSiobr3ay6rm0Hthgby0kLgrP2HG/JAwFHBYN6axpkRu1p
	 x2BEGPDr/zVbIpiEU+ycUR3/kreMzKMCB5WGZ1TCvW7B5/lujHQmQRcYuojA47E4zj
	 LYD9RNsf+M00G5R4CL0IGC4Vo+Dw7+PCh9AZvxkg35fdhEk+JQGctWsT9W6zfsrd3v
	 qy35qNuqtc4+A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C3557C30653
	for <ddprobe@lists.linux.dev>; Mon, 24 Jun 2024 08:52:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171921914278.20690.15406270036538573978.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 707fc9346d21fc07ba3331ca8eefdeed657cf72417d11695ca0c4ac32c827457
Date: Mon, 24 Jun 2024 08:52:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719219142
