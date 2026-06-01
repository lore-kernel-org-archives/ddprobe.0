Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F4C41EF36E
	for <ddprobe@lists.linux.dev>; Mon,  1 Jun 2026 19:24:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780341874; cv=none; b=kJbpyd11Koz9bKrbMlNmanW55c0fD7LjS83V4KvG3EQQpPFxO6s6CFypNSwfaU2Dm0r7iC/k6wUDKfC/U3xqLmQjwlbEQ3DZcsd9nzU+tXgCs6mmP91lsXfYNM4XujNA0EOy70QuDVxlLNkM2PYsu6eTG3pGn5V2R+5UXOHQhF0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780341874; c=relaxed/simple;
	bh=nnVKUGeSZM029wkTZ9O0ov5bZRTF8hy2iGHVra4OzIk=;
	h=To:Subject:From:Message-Id:Date; b=I8VidZlGxYbFGtDnf/JqfQhjPr+pwhS0JgA4lCN96CKKU0QzBKHBgxLA3o4POQcPNKArc/vooDxAD+FnighcTm0YarwaZa+npaTuAeYkvThH256TOrKwPjt90rhSyCVkJtKbGESpNMmeYjiL3dQRybyNI48FVdDVBg9NIikFW8M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=amzDoRiK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="amzDoRiK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C8089C2BCB8
	for <ddprobe@lists.linux.dev>; Mon,  1 Jun 2026 19:24:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780341873;
	bh=nnVKUGeSZM029wkTZ9O0ov5bZRTF8hy2iGHVra4OzIk=;
	h=To:Subject:From:Date:From;
	b=amzDoRiKAH6s2d2fDjtTLpYIUzqmy0N0LBB5FtGqEEZoTI63BmGY1NOhPNP/OGqG0
	 25c4ixzD2boWZFKQ8DyNny0HISRHK50d6OHGHtqcf1PynrCqZ2kkmPl0lnTbLQa2wa
	 JDCtTfsru81ddn9g/r9Jsm1e7CE1yF6KxoXFWbllELQgAiS7K1YwoBxPrIdPaRKp6l
	 IXnvMz2ruu39myTe+UR66xuf41ovMvOBVNXqaaUGKCkvbKdF5fj3F3xGhMq+unl1JR
	 X2k7jAHZGVAmm05mVfve4dYpIpRmcuJ1GQR97RavvX+GXmJu5YEKBhtvUjVXuXGMP1
	 Bsoj9U4Ki27mQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B6AB0CD6E55
	for <ddprobe@lists.linux.dev>; Mon,  1 Jun 2026 19:24:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178034187373.22117.17726683588370999643.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 310c9e987b214d6dba753f3b8fda5d00ef64511c3b8c80c554f75967b8c5eb83
Date: Mon, 01 Jun 2026 19:24:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780341873
