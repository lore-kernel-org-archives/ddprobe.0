Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 52FCB2F0C7E
	for <ddprobe@lists.linux.dev>; Sat,  3 Oct 2026 11:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791025234; cv=none; b=Ai0OVAEk3XU5cGTDOudiripoS+cJzYZTP14at2g5ALJrehgKqSK1B/Fey9SJnHdVMNjvhk2M03fsV/QkK1OkYdSMA3r/lgXHlnlaxpBPs0ukM9in2N3hZkGg520NM0R2/Vuj+n3wBF4TUJudGsxgNJ6g0qMHjJ65dh4yJL2tPAw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791025234; c=relaxed/simple;
	bh=/A+nappiyzI76PHMivT9w34oWg/YMopCXVAEKtDjBLU=;
	h=To:Subject:From:Message-Id:Date; b=CYNYmhfBNyQUNNlDHyJoYA5te7YG5OqkMrX3C0zP+Q3VXduhMUqIN42+J/OIbm84YJ0KvJcbSKd7kpctP7IAZo0EdGkZrQ3P9KXdbSoJro89418KPmegWWkT9qaSQfbPdtRxwhKcK5ndcOIM7ODL7YrCKATrkJRm5KXDTvVcJ6Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BgFyjwS9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BgFyjwS9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF794C4AF12
	for <ddprobe@lists.linux.dev>; Sat,  3 Oct 2026 11:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791025233;
	bh=/A+nappiyzI76PHMivT9w34oWg/YMopCXVAEKtDjBLU=;
	h=To:Subject:From:Date:From;
	b=BgFyjwS9H/uUva6XVStTyf6d0lgWLMqxD/3pvouHI/JMFP/tL/YJRLvDi5FXRPcyw
	 eXbgOmTSFh+R3AHcp3pf4P0fF1gE4GPqdKPv19IP8IOLT3elRuGWLjHVmb2pU9lMAz
	 940+dgMDy027e0oYBVNESB3oI22xUjOs6UTbImkeQu2V5ZLBUubgFLRkOSX/FR92c6
	 CPOKbqmJ6ZzItQp+AlyqCDcZ/EL8JA2/bqVADIhveofOjFS4o6va9QSxphNarXgPFH
	 4g3+YACDvBpToznrJSLwVYexl/zkZvXK0JquXhT5XFafeBM0/+apej1t+QecKW5kwt
	 AX2uEYIE2lWyQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEA66CA5FDD
	for <ddprobe@lists.linux.dev>; Sat,  3 Oct 2026 11:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179102523368.12571.18029981243174023882.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0ec126135ba5861ade664133e96d1eb9c09a5b3ca75b291305a0e0cad90374dd
Date: Sat, 03 Oct 2026 11:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791025233
