Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 481BD36F8F5
	for <ddprobe@lists.linux.dev>; Thu, 16 Jul 2026 05:28:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784179714; cv=none; b=rGxm7yeJDwCNWOeoLkgTjAlr734CoNVqMJKxldbpDs9JAseLSRMMNBfBJpxMW6mvZDR49OaaNy3GW0tR+Krp1iUrqtRNxyuHIk5p5rNreB4aWlNN0vO3V8+JrVsLdWhlAqY+ZMgERbRSgzEud7v6C00u3jXwsnw3Y8W9PinUzp8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784179714; c=relaxed/simple;
	bh=2yU3GtmgbPw4LaAY1dqn/Q1+D10rpICR/DaXhmq7lLM=;
	h=To:Subject:From:Message-Id:Date; b=jk4jDR5k959JQS0bTmgSMSad3MWdse2OjOXJX8443yfBItULast5JIEnReIXr2aQHZQJCN8i2nbZGcjpbeSY5hzKeO4tC1UxyYFv1A08Tn/Pcd8XxsVvMZDwrUOrQesnV+uCc2NqzgGl5bqpNsVoJWwk73RK2jFTzNhNn5iCKrY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KLEX8WlX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KLEX8WlX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3F99C19425
	for <ddprobe@lists.linux.dev>; Thu, 16 Jul 2026 05:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784179713;
	bh=2yU3GtmgbPw4LaAY1dqn/Q1+D10rpICR/DaXhmq7lLM=;
	h=To:Subject:From:Date:From;
	b=KLEX8WlXHKy2xOPHm+tnU5WMm4PrATtZ4To9IbokRZO/FkSKljhQi9hbZGusdyQRB
	 ghAkQ86U5rRXnIFqi/rRytjqXOVYQMZa2zAW1PyYZHlQgTAmPX73+fQv9wTiWe4bMc
	 iRc1KeoMYV4JHU59rPJamZt9rC4zXyToZ8iXmkRnQ0MbA8xx+u8bwkvdGrm22aqddh
	 jYwQSqvP+7Vc2sEWYqKknRMeXhE3tvuGgZGaklC9g3cZaSWYZgqv3YtIieBKi0Y0X2
	 8z8EOGqqmKhONFIJT/6vUnhcU4nfy8SCom5OVcqmtU4k/mW5fv47dmkkuGjA4oCPs9
	 4xjiH6lefCkeA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE889C43458
	for <ddprobe@lists.linux.dev>; Thu, 16 Jul 2026 05:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178417971369.1659.10750450943149450324.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ce157b6712eed6f3c2f90d1ca09ad8f0ef56c512b9ef2289c116aca2dd0654da
Date: Thu, 16 Jul 2026 05:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784179713
