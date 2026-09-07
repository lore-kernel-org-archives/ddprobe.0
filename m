Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6C0BC403123
	for <ddprobe@lists.linux.dev>; Mon,  7 Sep 2026 20:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788812434; cv=none; b=ByMR7FH/19g+RponQ/+z0Vcu8P/DoBnkeszbbjj89rjSgpJ9NRuZV6iv2m+RK6fdqF74IgsMW/ITuRZ75j5dxtZ1pM55H/oicnHgzTGB6oGXx5e951mde9xCfoRxIbQL/n3YHmfZONr807Em7xMmQaaH8+TfK8m6tbuHzirQIKY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788812434; c=relaxed/simple;
	bh=bg+yGOstgCp1qm5S6cAD9/+wQFEc5L89wND5C/jXKCk=;
	h=To:Subject:From:Message-Id:Date; b=sCMD7N72WvYvGD/KtEGK2wfqyn+OFJ04gLyIekiNvj0WrV+8YFg6Q0Liniz6d6YJxHJoEBd7pAi6Cul6XJ2FYPSUx2YgHT9WA4Aoxu8k07a9Oxs640ZyGDgpT5XeXJSZLuygvaAeTUwIUfXCDdVx5AWhGi68/GfUlhj/QzCeXUQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WWkxtk8b; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WWkxtk8b"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D15C4C2BCC7
	for <ddprobe@lists.linux.dev>; Mon,  7 Sep 2026 20:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788812433;
	bh=bg+yGOstgCp1qm5S6cAD9/+wQFEc5L89wND5C/jXKCk=;
	h=To:Subject:From:Date:From;
	b=WWkxtk8b5kwJGXYEMJh+otBu/P3t6TGmxGbUnNK1ru8OLfnpGj61+qMsMd4UNGVog
	 /1WXSL4FwKJ4uWQF3MyD8gZh3nQeKkSqYQsW6WQSpFFQ8ix56auTZMilndhi0zfSUT
	 fo7eLRf6Q1NWRrRbqnpD/ItNRMyWfJV+ljnadu0uR14HjDMt2g25tNDoGc7Y9q1AMh
	 OOrXWCQbZpjXLixzGcDwSye7ePzghnJHXtzV+8+3L0EIAAVuay3O2pSjcH/zmYJxhI
	 Sysq5kxRnLfrkoLQ0kjR9dKfaVFXkXqmA+FR5noeUvO7Du56b87HDV7kvZmQdFwsrJ
	 i0RR/t6Apo+BQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE52EC79F9E
	for <ddprobe@lists.linux.dev>; Mon,  7 Sep 2026 20:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178881243370.26314.13819767867085944048.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f12f17ca37298fcad61da1353c1042e169c9eaedf8108cb2a0fc71713e67c2c1
Date: Mon, 07 Sep 2026 20:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788812433
