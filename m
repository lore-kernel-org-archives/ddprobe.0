Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E00D1B78F3
	for <ddprobe@lists.linux.dev>; Wed, 16 Oct 2024 09:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729072554; cv=none; b=Dr61nv4x9FTV50MxaVIWd0jtKfJFxDvB12P0fN9gO+KCTJiSE37Y7rYHbssQycnb7PzJl8sNTltch7utGKJznrWuhlY7PiNNhxKEmJjgSeKvSxcZ4FjHrt143hZ1kAuHwDHmvxui37ZndvJbTj4zmWqWkLvYU8WWW3f9j18JHD4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729072554; c=relaxed/simple;
	bh=nxqHW4E8f3zi9TTECtNHE4IwM2rejY1lfqZZiYhfUxQ=;
	h=To:Subject:From:Message-Id:Date; b=E9rNwW7N6wYDbLS64yX62DaRe+SLeT+MhqNYalF2pG3moxTKMlfyCatJbdhTaSjGY7Cw1lEVS5F3ocYwqad21B2P6AnODYFuS4AszeOaa6cY9aCfCv5bD/7ByRLVityvFdvt/Zt5luxbV+uQj2konuknK/9riuNJauKXH37rIK8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NaqxoKbG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NaqxoKbG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3BC4C4CEC5
	for <ddprobe@lists.linux.dev>; Wed, 16 Oct 2024 09:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729072553;
	bh=nxqHW4E8f3zi9TTECtNHE4IwM2rejY1lfqZZiYhfUxQ=;
	h=To:Subject:From:Date:From;
	b=NaqxoKbGhRWG6oL/6l/imKVUaqGb76P3ApoIXodB1JgY/SfN8tkCdZDbHpUkzXLPU
	 eUTf5SufJejz438MWmoA2sGQRom8+Az13Mfe9exBsgMHl859NL0lEHQQyDmFYhJOdH
	 Q47HcMq4Sy3iKCnLeBGBfRWRa3TQDuOH5RHc2UA8UQmhNDr15vL2uaglqwrStx/+5V
	 tdbcfHaVR3ghSe6nOHQYoJ+dfsh0UAmsd1b3V8svAXqrswhMZmmHh+9mY0hJav1nm1
	 gnFllfRtIMJKWl424Pf8oEdiIJ1dJ4lW5mPPIsxxqNRWqrGzPeqjYiD5GeAu7gx8Fh
	 24L9VQi8XfqZA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9357FD1AD39
	for <ddprobe@lists.linux.dev>; Wed, 16 Oct 2024 09:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172907255359.19733.10344202436959887411.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9795d926d196b732112dd376e68227dbb3377fb68b2ac5df624159d843884bc0
Date: Wed, 16 Oct 2024 09:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729072553
