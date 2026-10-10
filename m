Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32CE5318EF6
	for <ddprobe@lists.linux.dev>; Sat, 10 Oct 2026 08:50:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791622234; cv=none; b=Y14Ms2pKg79QCo4GCjIAbeWd7zv8Xn6JRsUEn26Yyd4vNedBvzTdeLUJcaALOiCuzx/8ipceUHEQow7S03Klc8sCnVR2z0uNgDbkAR4vIq4dBHwiB+0bz/iCcWwyCn4ThEJro7M4UeRr7Tv/yyD1jmmht4u0fYNYjn4WjSDOQDo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791622234; c=relaxed/simple;
	bh=BgHpulixFIe8KQDUoijc1wjpQC0CAEYdyrrSwd9sLig=;
	h=To:Subject:From:Message-Id:Date; b=ONBFhHyCxtGmt8k2yw+vTRBEh2mfXhvC7yrwOlRIwo3skILk+yVcXEQDS3MZnkYtpWB66UD5rqsX1CFhS3W5WeoGpLXkXP3yYDQjN13DCnkYZUuPyX5XpeY0sBReAR0CyFbzcuBHWrEFcwmOY9lrfTKauaLxhhe7yALWpqRe6aA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rCthB73g; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rCthB73g"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0B61C2BCC7
	for <ddprobe@lists.linux.dev>; Sat, 10 Oct 2026 08:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791622233;
	bh=BgHpulixFIe8KQDUoijc1wjpQC0CAEYdyrrSwd9sLig=;
	h=To:Subject:From:Date:From;
	b=rCthB73gGlH6mOZQ0xTY3ZpiAEWstluZgfRKnHBbO5zs8BnF1NTLxOSeV06rERZ28
	 /nyyYXBLq5ZMlMJgs6CzSQNAeQEm3DLSQAEOgGXpHcnYxa/qVhpJe2uWQZbo+W4Uu8
	 vTv1KVdtwY5Q/qiPSh6ydP3QVCgVXv5CCAuUJIpknBmzxDuM3qciWmXwqeRpTWP02n
	 DNhlLOj1tl991H1p0qYbQLR2h2e1oki2KA0SfQKFNupImdYBK0IPBtDJzP+8XC8bwX
	 oAtZdx7IqSEIwAkbd+0ZoDUV/yoDOvaXI7sSy5XYRSD7OpvjjpvHTLd25f5eQ29uAt
	 kUHEaEfuvcMDw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAA2CCA9EC0
	for <ddprobe@lists.linux.dev>; Sat, 10 Oct 2026 08:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179162223368.2633.704801358861995037.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 043f2b6328e154c05dd3e800613a38fb4b6b7f5bf792ef803f04ac1c2b880602
Date: Sat, 10 Oct 2026 08:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791622233
