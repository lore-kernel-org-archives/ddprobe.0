Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 14A3D1C84DE
	for <ddprobe@lists.linux.dev>; Mon, 25 Aug 2025 03:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756093194; cv=none; b=L5Vfx0XcyYMrLs3XXLS1fTaghf8tuJ3jilMX0hPEvUghiFK8yorfz4IzKOSMLuMhOP06DuK4+eab2/iocuPlSFABAFnggmn3dUBsUqIA2KCP1Obtmvu/Ov1FRwVpn+s91qb5nYMUeSe1Iphhvwm3vk7P6UkP3AfOpLgWERZFyVY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756093194; c=relaxed/simple;
	bh=ReSHXApoxxw99Gq6ozipkOUKVFHQ0QktYtfp3/tD9jU=;
	h=To:Subject:From:Message-Id:Date; b=I48HxP+PQZ6FQCoJP9mYS8ODr8fc/UsABLPFtIrVuwAgcnwr4MlC8IR7MWtKQL4eIkHT9R/uQsLduOTrWaPqKWZSftbVmYR7H/EL/uWoVSqN5RjVaXo5QrIrfSpMqF+qIO4JB0sPZfB5MYYJLyoFxpcERbRuJeEOrmqkfzipshc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tNsyd5WW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tNsyd5WW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2CFBC4CEF4
	for <ddprobe@lists.linux.dev>; Mon, 25 Aug 2025 03:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756093193;
	bh=ReSHXApoxxw99Gq6ozipkOUKVFHQ0QktYtfp3/tD9jU=;
	h=To:Subject:From:Date:From;
	b=tNsyd5WWwiJA9q1awCSKPXcRHNNxDFWRisNMkWdQV5c2Ihpqg9AM88PwDP/1XjdL+
	 X8ByAawUMGN29AWDWdFJBa/SL4fCj5XO5CkZ/6nkRzKGEtZ32yTTth4nM7KrfoVA2W
	 hktEQKf7XgTSFutfyxpzNQBe/jXRHldS5YqpE92JKw8apEEIfll6+BdBwCPBpcWCqp
	 7TK7vyFZmqsJJBUR6GSjLu41ByY4OYxqjaSCpP07cDn4JDwUzO//uI9BrQ9ZRfGwJ2
	 zRe1hsrMmJzxhU00u7RagRUXzwor71Nd8RchJrONLkWiL1O10CFvQIro2biHF8mpq3
	 Y09mKAuBZV4bw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 910C5CA0EFA
	for <ddprobe@lists.linux.dev>; Mon, 25 Aug 2025 03:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175609319357.18192.4984091359232009221.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d923afea5ddc562d2ddeb53abfc60c428bca5e518da66d106367184ab29146c9
Date: Mon, 25 Aug 2025 03:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756093193
