Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0DEAC2472A2
	for <ddprobe@lists.linux.dev>; Thu, 29 Jan 2026 21:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769720634; cv=none; b=rkM3uJN6HqYXgu88QKCWxhi1kfJyrzXXiVvrtaFqDO8aBjafV6pq09PlR1S53HomrBFsHNLlj9v+yQz021oKa/shadbHM0KB10wmKHl1U5Uk5fKrrbb9HpC+Hpt76xa3ZkkvMf3g0a9r+FQi16BrX+eCMQMBGcaOTVbkYML54QY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769720634; c=relaxed/simple;
	bh=KOBbI0WEW7pXuFcCEP2GeL+VTZZj3MLQrhe00/6vHG4=;
	h=To:Subject:From:Message-Id:Date; b=EcXZCz6bsOT2PjzqCYelPcOL0FORZDpJz6tgVoD6gpgj6I4mMKZjLzfwuHokrVlEGtuwgLSNhfE/zJjSAgk90hCtttscyntaLzCPs5vTe6iLndsHK7FandRS/fhCunWqEDNDZk90372+/PDZbs4tTMTVfBJ/DSuYIP9v7eohtBE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Z4zxl6n4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Z4zxl6n4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3AD8C4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 29 Jan 2026 21:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769720633;
	bh=KOBbI0WEW7pXuFcCEP2GeL+VTZZj3MLQrhe00/6vHG4=;
	h=To:Subject:From:Date:From;
	b=Z4zxl6n4GU4veV6g/tAzjHJpnPICNVRuOVawNlTiApTlO/m93pHwKsV9Mx0twTzAP
	 K1UDMgpOgsZ+xwv7uvG7wa9xWYZebZomxsHcJuo4ph87I+8loIqH7HhkffE2zx63jn
	 OuxxW0zRs4xSNa9h+cvVXHv5SQvZL0+T1dUtoqbQwylf3IPGrwxrInk3uWGxrBxS5/
	 F5o0ePLhbHBvZ+VYWej3wxnPmDjlIktLnGe57Mu9+Eip++amHwPR6eLvQBI2wfGeLW
	 l77tyuPwxkrzjRlaATNi2EbugzwDZW8/yKRcUCFbchA3OKhMVTx2bj4xEQINZey+iq
	 bque+zTm274vA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 902AAD73E83
	for <ddprobe@lists.linux.dev>; Thu, 29 Jan 2026 21:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176972063358.5148.13285667280862506082.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bc9f3d09887fb5635175a93eb38748552177afe5d28f602d06ea29734ca7ba1a
Date: Thu, 29 Jan 2026 21:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769720633
