Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24D263242AB
	for <ddprobe@lists.linux.dev>; Sat, 27 Dec 2025 18:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766858634; cv=none; b=S/hbNJtC0o4ICgAlhECP92D0cG9MHFu7aJ09vaVeE/3g3kPqF3KCBVGg/w/1WFCur/149xt7HjXhKrtTDJ9lzltr4p/wu/Wz6AQreNjJLVvHbjSxy0iR9IHgj/8/R3tUi6zL7BjjabQe3IppFs7sKYFWHQP6QoIQDpZBwh6KiNM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766858634; c=relaxed/simple;
	bh=zRrPwleabkwcpUv0OTEppuF6f6CxSKdCAGZjr2Fx16M=;
	h=To:Subject:From:Message-Id:Date; b=J4mWZHpioyug9UfOTsMU5JDCV1ceH8VS8qdPhdnwCxrqFupKIfZ1Sw4bX3leKHq/xDNDl7InSCJ79eQboHmH0o5AHr3jh+AinprrLWDq+urGi+mVSij7MFQC8jEXL4iiblvlgIo63i6V4Edu3kxDQOfi48p8PJoNPNsT43uZoco=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CBtjeNov; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CBtjeNov"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2366C4CEF1
	for <ddprobe@lists.linux.dev>; Sat, 27 Dec 2025 18:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766858633;
	bh=zRrPwleabkwcpUv0OTEppuF6f6CxSKdCAGZjr2Fx16M=;
	h=To:Subject:From:Date:From;
	b=CBtjeNovrkJJO4Gnmaoahx30XPS8CJ21JhMq0rtLVh1vMqm2W9+K3ZAM+h8RhHlC0
	 Kb1HyFtH1KuOLInzqt6MHxOZYXmHRRSnXwfNcklG+JmC9HVtA3yz/Oze2JpD22wIGG
	 pwGmWq6I771Z6kcvYRInd14lyz6yholFSFLz8T5NKr2MZnFAk6/z+umKsRWNdsZIe4
	 yeiIV4c3Q2iXKBhK33U4P1D0epALQ1qXgX4tmwAFeU1qbGzpws3k0PoCIbnGVwLWqx
	 JmdySY3W7+oMsj8f1WAEPBdECoIdAAdPbPzUkS1POdL9o1Kkpxhr+HY+FbUYIpklN6
	 br+eNpsCNP+dQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9CE5CE9271A
	for <ddprobe@lists.linux.dev>; Sat, 27 Dec 2025 18:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176685863362.9507.6251544884653746666.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e254004db8df45e0e0290ae2229d9c4281fa8da0ae3fee78b09c5c9ea53a3dea
Date: Sat, 27 Dec 2025 18:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766858633
