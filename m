Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4FD8D347BD9
	for <ddprobe@lists.linux.dev>; Mon, 27 Jul 2026 06:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785132634; cv=none; b=GlPcyrWHLMkHR8LR7eEBxWr2qM2E468RAcsw+hEctI3Zh/wrsq3W6IpuOaxJtuStDZV5sWxUEEsyzr67V4aSWbW5LGxDjrtJtml9Hq6iVpBYtqu5oIyqgCx9y6nWNh/JpsBk5xsWNlxBZsFYwJiHE1ap2Xut5h68OB0H0ZJI49s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785132634; c=relaxed/simple;
	bh=Vt0b01YDnBHUqiqDzR4AuCseMjBu++gyPkKYRlZo6qc=;
	h=To:Subject:From:Message-Id:Date; b=H4RFZ0JVpjdJbbiJA9eUl9pYFuJ2K12Jqj0YKZEWwJpKH5yQTdG04sV1uEmMcQjmzioaoAB3mUglQBMMbWA8uYQHyJyltdRmh0h01OFb8f5H66+XhpTrUa0K51YGSmS5QFMnR0zC7ZCtJ6Ct5hmLscWxXHtzAzC1sVS3VXE1y8w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ko8BZR+9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ko8BZR+9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF0D0C19425
	for <ddprobe@lists.linux.dev>; Mon, 27 Jul 2026 06:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785132633;
	bh=Vt0b01YDnBHUqiqDzR4AuCseMjBu++gyPkKYRlZo6qc=;
	h=To:Subject:From:Date:From;
	b=Ko8BZR+97agvOPalCfDH3mTLDGJ8JkUFTU0lM3DbKMJ64LW9d8b66YzrrXZjxTKUt
	 67IhUzlr7wqZLWNrR1r+/9Op6eDZRP07n3pZidI+HH8GrWkPL/hDlUzo08ppWuj9bZ
	 tfnyrA881ETIaNaucZwiXOw+0herbZbi24/w+bSD3uFp3IsUbUp8fIMhrbwud+9ucc
	 PDeJ++B0o0e6sRIJulEW8vrKPCTWvqx2z67Puu8M3M1pxZqaPXQwqVJ/ZPmKkQBagW
	 mMLglhgZnQm2AXCHrbLSyNSzrLUjNZQbqyfRttiMwZz17Q5dMA/u8bKweSzjMP1/rX
	 rTT9gcQCG9u/w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC1CBC531D0
	for <ddprobe@lists.linux.dev>; Mon, 27 Jul 2026 06:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178513263368.27618.2179201507371062428.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7e5b4cc237774f30b699a5843a44db4186163640691a8f10f792e6b33ec71074
Date: Mon, 27 Jul 2026 06:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785132633
