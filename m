Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F28DC34D911
	for <ddprobe@lists.linux.dev>; Wed, 14 Jan 2026 19:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768419836; cv=none; b=HXLEL5arMBR+vqloZGLLF0bDMgrAXqe0D3UTUejKfXZkWjTKq0bs1P1W6PAWfLredMjKKm5w9w93IFUfBQkQlvYVwV49q3NgmJkChendUHkQtrlbMFPYgyuwVJDK38/QjI14+WAb3B2+LbNOoIvt+n/1u38CYHHKyDTNyvh7pn4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768419836; c=relaxed/simple;
	bh=AaZ2avX1jPUa88sRgcvCZQESA7+lIbHoWzBCE7cmsZ8=;
	h=To:Subject:From:Message-Id:Date; b=uTj4DfTA1AnbOLh0P9gFry+skyYfI36WRO2pNLk6lXi6r/I7jcRMM+OmLgF0auA2mIghv9DjCRHv9sjy06r6WG5SSsC+ZksvN6M6gYgtR7WscuFwqtn4cc9HFhK7WAJ1+cCY4uEWzYJfm70urB/1ETgVuIpPoXsqo6CUKVasCNw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZBByRCiL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZBByRCiL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9F35C19424
	for <ddprobe@lists.linux.dev>; Wed, 14 Jan 2026 19:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768419833;
	bh=AaZ2avX1jPUa88sRgcvCZQESA7+lIbHoWzBCE7cmsZ8=;
	h=To:Subject:From:Date:From;
	b=ZBByRCiL5so08vMwVISg79Mok6B8PtPjFXRHmYvoVJeO6GT3iEXWc8Zm+fuGvQkyE
	 Om7aydNt8PtNUNDEYD3l7v+jiBG18O4KxsQ48DB8VybANJGVJSKH4pzHLKzEfFigTm
	 xMCrJ6DGuWwvk/sExGqYYnq8INOqz52LUCZux4N5ZG1vRErlQBoPGylA7RQWRt/UWL
	 ZkoEKkAld25CcnNxuIKqg0r5OEcJFy5GTYsunZUGgBab2Wo+wMJ4orxUhodad6fGxs
	 xmrdAW73f1YhoQeDZwuZXsK6ozDIxWQC+3rksfUTQlNyHzKmX/dPK/VNRPRVH3/ZDd
	 qZz2pJgZwZHDA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97B26D39011
	for <ddprobe@lists.linux.dev>; Wed, 14 Jan 2026 19:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176841983360.17261.14099751223518705133.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 56e327700744fe450b367b37c6a5631fa15934b81336ab96a6ea877dc1e2cc0a
Date: Wed, 14 Jan 2026 19:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768419833
