Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E93C410A03
	for <ddprobe@lists.linux.dev>; Wed, 10 Apr 2024 05:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712727497; cv=none; b=sjzXeRIEJbZygSwbhFJfZT5Z5Rr1iwSLtw7q1qURiJiFhB5EPmAB3g16Ayp8J1+M5YOl79FfOSWBVJPIHuaQpRcF+8tbSbfJITjO52uV2P+L8mMB0c1TJHt4kfUVYvoX39GPH0bkX7PiVpni2jgCFXiC41mmPhVqeG/xjQaVJSQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712727497; c=relaxed/simple;
	bh=Upst3w85jBVB4Rk7CnHR/ZApYB8WkHaMRf1cnWpkjzk=;
	h=To:Subject:From:Message-Id:Date; b=X018cS56XXmwO11YefoFlw4zpBXNNXeYc4e/RUek5WhRyVij+hRk09Lj5C2qmSFYosi2uFo/3+TceKApDA6sxhNs7lDs6WjIGidbnUeM8LSe6ZfGcfLE5chXVbNx900aTNWwIFyikfftwW+qMx865+NKizZhUTPVlvvgnAf7C8Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=C+5lN9Qd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="C+5lN9Qd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7F30BC433F1
	for <ddprobe@lists.linux.dev>; Wed, 10 Apr 2024 05:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712727496;
	bh=Upst3w85jBVB4Rk7CnHR/ZApYB8WkHaMRf1cnWpkjzk=;
	h=To:Subject:From:Date:From;
	b=C+5lN9Qd+tjmjbmGgRxvxv5V89GQslcdYvkOefe0tcKfCkwRUTBxmQHbnwU9FKLYs
	 QzZnFvKgDSFEkomQpmnbWsGmAtCaNT0jKxsiPWui9Su7fnZfBbWI4tso8cmP3JSpw4
	 uFx83sxL1jDTK2tQoW3JXkggqzUYF70jXqqYhCrshaeZDr0MItZUhpRv3WsNszXo5T
	 6SjhWa1bW2Sy/ox5SUUOqciEVL1IwEdEWh/q+F5og46dgk3r+NiQpGmrw65u55aFfa
	 x3yyC4oXV5MmMeRyi5JdcubbUGf8WkWN38xIFujfPToKgiGun0vEfKNVbulgqcxFiZ
	 EbWPOiqHUSIYw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6763FCD11C2
	for <ddprobe@lists.linux.dev>; Wed, 10 Apr 2024 05:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171272749641.16290.6126820340168641953.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ffbb1c909fe457916d75dbc73d27cb1b4affe69b5934bb58943b0ba8c06d751b
Date: Wed, 10 Apr 2024 05:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712727496
