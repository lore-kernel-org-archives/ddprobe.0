Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 440A420E009
	for <ddprobe@lists.linux.dev>; Thu, 23 Jan 2025 10:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737629154; cv=none; b=PUMseKY8c8jIBxTo1Frv2/9E9D6jO4Fud5sdqsn0FH6YOR0bN4vubwf2SCZ4mpIbW+Wh0CnD7UYWtdlrdYklADIcaqlV9sDFWVGWpPflysvZlgfwaTKR0WaAilfVgJeZxxpT30+0jMZFpipNY0McuZtEOQmb+7UthZkjxN+hobU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737629154; c=relaxed/simple;
	bh=7csci1L83oEOioHrrTt7ZAmx34+b0G/a6jyeP++nOEk=;
	h=To:Subject:From:Message-Id:Date; b=r0UEZwQaLcewXh436L2qDh5o40uJXEWq1W+hArPOVIiRS4KX4El6mjTF95lx/RvIIwWiTbf4uT3/39J/a7wubfSqJBr1E0G6BZOIzgrBwZRaXTaLShS/PjUS+PrwmZYpqYcuvzSn+bVX9sMPv6xMNh7TdUDkLncUBi9xt41urao=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kMw22O5A; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kMw22O5A"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D4BEC4CED3
	for <ddprobe@lists.linux.dev>; Thu, 23 Jan 2025 10:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737629153;
	bh=7csci1L83oEOioHrrTt7ZAmx34+b0G/a6jyeP++nOEk=;
	h=To:Subject:From:Date:From;
	b=kMw22O5AqyONET34DlpHq3V94axlhZWoYPTAQnwJiZEs6jHwn65IspNeUzqQr8Ycc
	 NxeXFy72RPDlMUqofH/8cDVc62ZnMN+vdzrfnmUq3uYY9zCYinO1qS7LYYF+JCAQL6
	 Si0eX4E0rKoEVYoD8b4w4q/ukA5aO0cHDgY53rS3518wpdKMDA5JkinSS+JwWISbWM
	 h/FHf8dvQDMMzCAuQgtXH3fLCvbbe95HLtQjp2cb0/QQVfpZKOicTOkJSxi55OMlDO
	 cfjidWafQh38H4WGAexAKE8Fha17zhMJ/m2Yg6Wl5ETrieXb4f3voHoO+Y0NQgJEIo
	 65VpTFbTYEfDg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F072C0218B
	for <ddprobe@lists.linux.dev>; Thu, 23 Jan 2025 10:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173762915357.30390.15381019344967263494.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b4aee46e66af85a26f5fc266a63d56e29c9df58cc47452b41e66432db2db6c24
Date: Thu, 23 Jan 2025 10:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737629153
