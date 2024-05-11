Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 53D893FBA5
	for <ddprobe@lists.linux.dev>; Sat, 11 May 2024 23:32:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715470343; cv=none; b=jnqCJM514/BLC7wG1E9dPN8Uq7YH9sXA7APp+d+ybXCkndcA+vKt0jIGCOvaCa0RD4J6bhK7u5HQJ2F1lbETTbUoiPo5A0U0c0MI0bP72gu9PpQjDjxE2CPPWXtUNPOtGoLDNUiFbJvYL/koUzd7A+15/IYN9gL7281NlwZ/16s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715470343; c=relaxed/simple;
	bh=N9z6ABlwu+0o8j5rPUzZh24CR9FZjGCLHrMI9zdxUBY=;
	h=To:Subject:From:Message-Id:Date; b=dMrE7xajVVlyyYhID/FDffQP7lYcc9btGm6Hsgw43lU5C2y+t59JyUCzN4MWUh4mcX3JDBaR+q8V5+JG7hPPkoekjybgUjyKC6q9IW3xy1ldBbORErYe3qxoStKGiqILq73kwDIY4XSDC0qmmiN8LS/xNRKsJ235oefWy+xkyE0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MIMxEe5q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MIMxEe5q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6CFCC2BBFC
	for <ddprobe@lists.linux.dev>; Sat, 11 May 2024 23:32:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715470342;
	bh=N9z6ABlwu+0o8j5rPUzZh24CR9FZjGCLHrMI9zdxUBY=;
	h=To:Subject:From:Date:From;
	b=MIMxEe5qUC9JmI7XCXbYQbJRn9GoYqHEvWLSrVDV4qkpo2qdKiK9MZlUojfNkTk9g
	 AO7rzWq39fRrfbycxHEst6JfvntwGwnRMN3oozEuZpkprqFeHN4SAmusuZeyC1P7Aj
	 PurIwnH1CVUpHDDlM0RlSZbsXE5Wopow7I9/Ve0w0aJZgzU5zil3AWTKBL8tcqh43p
	 kP6Ib//HpvaREMaQd4ktei2kqMdbZ/DChZB3aT1782nBxURSCMjxkwUJhRZi+IXD5y
	 MGf5iabGpR1+Q1/u3ui+E0XcKEv2fQrdyfubvxzdKVKwbHukDiChw0Gji9B76GzOBA
	 ZHIXocfhYzYvw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C114CC25B5F
	for <ddprobe@lists.linux.dev>; Sat, 11 May 2024 23:32:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171547034278.18444.13533244606372928892.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 646b6d323649299e055b5e8444bad6b4089e77541599b6ed0e924dd0012f2311
Date: Sat, 11 May 2024 23:32:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715470342
