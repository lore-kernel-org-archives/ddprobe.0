Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 10BD92153C1
	for <ddprobe@lists.linux.dev>; Sun, 14 Sep 2025 11:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757848194; cv=none; b=n5xbcbIx8DermK+77YOpW2Ope5O16bKj6OEeLQ1GyhOjFldMdh1GPOJn19mtG90HOVLWwDUWAJ+OmIKokj2/SiYHBYeQBi+Z9CGEoHTBQnrdKQ2kVGJ/OisYQsK2fU2oCj3GzHOgu8upWSx4v+7KfWOLa5LPWfguo8w5lX+XhgA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757848194; c=relaxed/simple;
	bh=5uFjBBzaicINsAdI4jtoFvSQ2uhjn2Uc7fUFapO+cEY=;
	h=To:Subject:From:Message-Id:Date; b=WYaqmFImSRE0BgHMcXys0RcT1WKs/82uuv2t2qn+rVUnNi/7rs9JiEo9hqhgJZ+290azaXgL1yAX087EvZtSG7Zo7VE1TCBHwzRKIT5NNW9gsxX2GKMlwrFhIfI6zrmp+GX3T3gFQAXKBjv2nHdMSFLRM1EDkz8l05LnI1kkrGg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jackiJn7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jackiJn7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1543C4CEF0
	for <ddprobe@lists.linux.dev>; Sun, 14 Sep 2025 11:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757848193;
	bh=5uFjBBzaicINsAdI4jtoFvSQ2uhjn2Uc7fUFapO+cEY=;
	h=To:Subject:From:Date:From;
	b=jackiJn7E9/mPW2Nk69uytP1Bj3lkKjeeZOoxrLDcrPCrHH5DENyrVcPjtKx8cssi
	 N9WWNgGdS80DmVjDeTQYU9jVDZbQzHuHhXorvL22411alDl0zcYlGdD7rH3XGbFUQr
	 DgJlBzSio3I2vXgVssQPusebiMEz+Hp0ym5uV+VPJYGhzJOJ5YnoLaw5ptVfcf+oqB
	 qsEzFuIbrqMo2qk96zkurLZfMHNNVCYpnQVpwgR9GtExv8Jg/92dbNelz13O1Z3SUs
	 pOuRL6KdW87RjgZn5ZyiY9GmBxDrzUmPsmA5N7uyKNniAwuKEFbbacCzUQ9EUrVnLg
	 2GNH5r8/FYI6Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F89CCAC58F
	for <ddprobe@lists.linux.dev>; Sun, 14 Sep 2025 11:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175784819357.15822.11868886033303256021.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e039e6fe014e3d0d6aac5c99175d07cbb8543392db8fd7cd8b7aff5927e58df4
Date: Sun, 14 Sep 2025 11:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757848193
