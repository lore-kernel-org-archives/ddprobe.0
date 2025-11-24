Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F02E227B8E
	for <ddprobe@lists.linux.dev>; Mon, 24 Nov 2025 14:01:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763992914; cv=none; b=jU8Xy2Zo45oxP6FoIv+ny+5fyhtBbzJXGx1NG2LTJNMt3+l9ir9NxMmQPSmLJeCHPvZ9Z/WSTaR7bjWphuXP/GyViuBJ38hm9UH439onB0ZCRJAtNXH8wkGiyUzORSUodxi6sPocvC+XkXH5aE9aCngDOL3GHk2OH6SAEpv1l8c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763992914; c=relaxed/simple;
	bh=95Tu4nzUZhq6BD+X0/+ROB+WA1WVpCzUj4lZIytfYU8=;
	h=To:Subject:From:Message-Id:Date; b=iJUy/SuG6PLSaTnOTjsPMP8QaKAla7wd6sAuFr1KK6apEnTg5Q1O+U330yY4/huPLvfqkplr1DcRj7gt5BlDDnjZfcqm2iCynbA+HlrTbXmgCnYL1jhd0BBKkEumTYnxOvueGuclvavjIIA2ANnDU6rZ5735BimVaUzAQI2jRhU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TJAVH1fM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TJAVH1fM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2B97C116D0
	for <ddprobe@lists.linux.dev>; Mon, 24 Nov 2025 14:01:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763992913;
	bh=95Tu4nzUZhq6BD+X0/+ROB+WA1WVpCzUj4lZIytfYU8=;
	h=To:Subject:From:Date:From;
	b=TJAVH1fM8Ystfh9UyiTr1EvOtoSd8iY0h/HWueHjVxboKMsbxIsQ6W+vD+EwYURss
	 L7YUU9wsyM9PX+XXNc5trcD4nEgoVbxkOFMobO4O9cBvw7mcfdU9bv5beVaR96/R9M
	 FSE/gqbfGKnL87H8NoVi+CFT5cPbRICweN/WAcXWTG/EulRGe4pex1QPhgegLXb5Md
	 q7pXDoPifoS3P9sQahfYldN+xoUrDp/nx5UrvtXokyY5f6KDso7tr5oCdjer265+Ts
	 jNESquftMyoQw+j6Hqja3hhC7qFX1eCMLfg61FRQEi+/5MmmBDvT9hw1aYgZtAg1/D
	 EHbfFwhg8doGQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92FBECFA466
	for <ddprobe@lists.linux.dev>; Mon, 24 Nov 2025 14:01:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176399291359.4083.17490310022245780324.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5ea49ebe1c1c583a8d64e4e8e786a941f7b62e802933c437322cad85b96e7331
Date: Mon, 24 Nov 2025 14:01:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763992913
