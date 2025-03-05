Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D2B7B1E505
	for <ddprobe@lists.linux.dev>; Wed,  5 Mar 2025 23:28:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741217333; cv=none; b=Y9sVgkW0yyT0zkEFcoWbiQ0iLdFVYTW+jXGwzBu4iva+tt8J79wXw0OuzU8Ws8ELHP5bl6+pUtztO+mlADhciN+woMvGaGsk5k+JCflckIROANfKbBGruJLYTivfpN6bzC9Rco2xlb4HufMEmra+WzvptZFNDY9mWF8MXRJQ5zs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741217333; c=relaxed/simple;
	bh=GZ6e/SdCbTLbtM9ue013zQE6N6smnGcy6S+rGiU2PFo=;
	h=To:Subject:From:Message-Id:Date; b=cs9C5DIvCvO+XspBaYihyX1hrrGGtW+9rWWhidDRU39npLfrBZx+Lrg/0cRqvVbn8u4sqRjDF4MnsXK8PAcm8EmWXxdNH8OvW8gWN41LTOCtfl/WHUij+i1Cz9YOpVj0Jew5T5yPreEHMbaYLNSQQ3NEM5d6Vtfvo6D+JPj1zXI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mTbx6V7x; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mTbx6V7x"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB223C4CED1
	for <ddprobe@lists.linux.dev>; Wed,  5 Mar 2025 23:28:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741217333;
	bh=GZ6e/SdCbTLbtM9ue013zQE6N6smnGcy6S+rGiU2PFo=;
	h=To:Subject:From:Date:From;
	b=mTbx6V7xF5nehnvKkLM3V45rBY1h//HZV+mJ7LxeWqm+xJcdmZv+6qMqhkfKee2kr
	 /d2YTWonieXK2mqDN10SNEDBvmIGbHfLJisiwMCmLwhAPWY/PXVuf6nWdkdEEMQ7b5
	 2TkaLyA7YBqCJPEeCEOCPTYPNy2+tgi5NaxF24GUiynocMxjHv+G3sW6ppPMaxkeeD
	 Ids1ggevUYXOf4iYPw1Wrgj/91Od7gCu+LxgKx3Ka/XAgYiU6OCA5ZfpIV2ZTBQsN1
	 uHv+IG2LI23dOQ0iUIMpMS8UiWyLjCzZNHP7rflMqAM0LEoCGQYed+bR8AVWt1UnxX
	 qjbv4vNVLK11A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92E26C19F32
	for <ddprobe@lists.linux.dev>; Wed,  5 Mar 2025 23:28:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174121733358.20626.12868858304080413688.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8f1dea1d4a91c0f614e71c59d73b91ee414a4ae89e9587d2cdc0cff975a3fdc9
Date: Wed, 05 Mar 2025 23:28:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741217333
