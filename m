Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 05E7D3D0D5
	for <ddprobe@lists.linux.dev>; Wed,  9 Oct 2024 00:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728435354; cv=none; b=M7xKOeuudrRAhW3wWqJ/PB+sVDAgC4uAuzI6y5i5lzbH8YVI6moW2IXq0iob6wo+BGGSLA2hmHvQOkaWrJYsLggrA1oDZlUjD4z0LYl2aWIHAcs+hzWtMGQLhdsP+K0H5+FzY0d/DUb21Dt0l2u+1n06y2hhK5cEU/IO6iklxX8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728435354; c=relaxed/simple;
	bh=sFS+LROmdtB5QYnbVZCWHxv9qyqPuou87XDBP0J4RHI=;
	h=To:Subject:From:Message-Id:Date; b=putiBoGqgD+Hn/pc8X8y7dziFxN/TPLMkV9ohBk4q+ZwelNuCqP+DqyEGOYlK6QzX+WFvwI6dOiKozwj8Iu39qnniVjMAQXITrTZMn/0GP/q4xfF9ahUO/rXFNVEDph3vNqTSR6GLsmYOv2Bj+cAJDNFmOSlWnI09AEQbTIXUvA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CHPl4l1O; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CHPl4l1O"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5BF3C4CEC7
	for <ddprobe@lists.linux.dev>; Wed,  9 Oct 2024 00:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728435353;
	bh=sFS+LROmdtB5QYnbVZCWHxv9qyqPuou87XDBP0J4RHI=;
	h=To:Subject:From:Date:From;
	b=CHPl4l1OR4NdwZf7lDkWCRWrRdGRDyqydqW4GGXe+YiV3iRP34p6m790+4H3LQS2S
	 p+DLx2k1Twq7GpHY27cp0CfqBHKewTSZsID1jESwFe6xDHkr8N/QlLDKq8t/1WTYTb
	 gf+Fn3hiNule3bCXmA7VwRFz8s2P0j4nSnzotD1GS80w1e46uQU2I5YOLnc3UGN60e
	 jvF3qNiuAs/IvgjQfBrk20vaodg0LGjYqAGN+Wzut8iWgSJOqgSyrvgir4Vq7LcSaV
	 Cl5k246+xbFvfIys+zLKmLLkDL/fyGFUXRPJW4W5DU4T8rR092XU0j3RUJhdLI9hip
	 KiXhrONtAG1mA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90D0ECF042B
	for <ddprobe@lists.linux.dev>; Wed,  9 Oct 2024 00:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172843535358.12697.11086744551331453699.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4acaa5838a6d8320d16126d29a4c057514a6be3549f40406095c9666da6c3f3f
Date: Wed, 09 Oct 2024 00:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728435353
