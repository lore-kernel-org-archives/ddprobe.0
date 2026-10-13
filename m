Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B1094FDA47
	for <ddprobe@lists.linux.dev>; Tue, 13 Oct 2026 12:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791893434; cv=none; b=rd1FMn7khqeehLw9p83Mq4pzZaTrVNVIjFQ6q51uj7C3smwFbQvKTwWaPpo1DVAXG0+GqjqtMNfi49rHUIhQYYtgZqvmK0D9W5URh/SBgY5JO5PYtR8QeZtw2HhRAGHHZYFECyLDCfoET/rzeE3jvz25txegnuNLasuTBhcWNxo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791893434; c=relaxed/simple;
	bh=I2mkHOE5nkmDXCXPsPtYOu+DYQcprCeEFAbNojnEv1c=;
	h=To:Subject:From:Message-Id:Date; b=HIDTRIl4BRGmlLmZ0e7dXyJeyuJLj6c0KJ9MXoAT0JjFOkDRRwgnW2eluwLDNrvYO9sxflvQrTv0zQ53r9EAbL/u0G/4NsRFVipj4Es1sdQh4P5zR2inwbKc/XtxIGh1ekwIl9nonJ6bXplGl+1M+HKQFrLcZGbDD7ImsOKe0PU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GYtFrpYx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GYtFrpYx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFA25C2BCF7
	for <ddprobe@lists.linux.dev>; Tue, 13 Oct 2026 12:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791893433;
	bh=I2mkHOE5nkmDXCXPsPtYOu+DYQcprCeEFAbNojnEv1c=;
	h=To:Subject:From:Date:From;
	b=GYtFrpYxnFIMPLu7smaBjHzkioI7QKSZVwjy8WS5YrRxHgfudSTzzWqCh4Uxf7HjA
	 bedTGuGCsRcEnt3DI18XC8HLuvaHzqpH4NOOaolD8ommSev37rwuCz8ULsVLes7BRU
	 J3jG9Kk5Oer7AWq97GIXqqnMjLWHgVTLyZH0RboIXPYNyCggBNmifWWk+qegNY3W+j
	 xajTa5SofvU0e9clu6pKRHF/o7Q7h9UMp/1B9MoLGinPhpCkkBce8yvpgFI7R7jekq
	 zyHWMtabycWOYYp5UdELCgRea814G77enlojezyBVaD/RSeI0JjlDMgkeb71fTxutx
	 OHmx+4MV5mMew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3DAACA9ED2
	for <ddprobe@lists.linux.dev>; Tue, 13 Oct 2026 12:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179189343372.27205.9896849549187253447.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 73ab516b06e3ef26a995204a38ab95d70ab2c4a2cef00f50ec717f6ed1499c2a
Date: Tue, 13 Oct 2026 12:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791893433
