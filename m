Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B18C3BD23C
	for <ddprobe@lists.linux.dev>; Tue, 10 Mar 2026 20:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773174294; cv=none; b=FrGqmmS5rsk/rk953wwWAe/yRbSQOZuhqDHYg0LFz1CKadtlkn9K0R5FZyP0lsCDxj04UvPPwy2pH6TG5LVRvxHH4JPQe0nq/ps59wWcPhjEhg91dNHHXP0lhlF+K0OAamXM9GU+o0JbWdzBxfZx/8NKkP5f1CfaM8/VgTi0KO8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773174294; c=relaxed/simple;
	bh=3LpiFVqgWUFXiu+wud9YWejosKdmHQhDhakSCA8F0bw=;
	h=To:Subject:From:Message-Id:Date; b=gFdwskEE3GZQFb+Yr24SpSnTB+sN6VNqikKq7CqziNd0/prY5ZScgRRmnft4cYHBauwY8ZlHhoOzaqFYCBuhmNZG9Ih7+28a9cFez/yqStDiwY+37vvfXxCzEvqKALiKEwyzNYrzyfvSpCcQH5Tx5oEW3Q0D1ZQYxUz2Jq58BY8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AnBjeuWx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AnBjeuWx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6028C19423
	for <ddprobe@lists.linux.dev>; Tue, 10 Mar 2026 20:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773174293;
	bh=3LpiFVqgWUFXiu+wud9YWejosKdmHQhDhakSCA8F0bw=;
	h=To:Subject:From:Date:From;
	b=AnBjeuWx2cYst0Vzgsq9hDK5QJdPRS2jK8flRbJu04mk/gxB2NRDei6TMio71uOXy
	 r5kqzgldIQ1PvBU0cPcnhd31VmcZ2yGL3mJfqJ07BFTpDyJqdoasN+NyiUD27N8QCA
	 atToIYCKs0r6CKesg+D7BaGSqH71U7fQOyHYmSWMYCjQ0qCBPF8CpB71xwNihjQevG
	 7MpUdXVMnH+Et/mYPuuRz1DPQQi88UU38QIyh68S70fIvR4yk7o+zCvFZy6wIn26qw
	 wTyzgaF0rlu6Q5yV1RO6k0R3AqiWShOqchNtKy/6Y0ldPqqkW6+aTkCoJsEx3P1kex
	 10xJT+QxWw5AA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91031FD4F33
	for <ddprobe@lists.linux.dev>; Tue, 10 Mar 2026 20:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177317429358.13380.3732260052078467517.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f39ce1f3dfda56aca36e72dbc2c551ac263725ad0c1f0da3a830c56de84b3eb3
Date: Tue, 10 Mar 2026 20:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773174293
