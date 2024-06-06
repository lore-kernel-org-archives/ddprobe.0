Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 554D5180A64
	for <ddprobe@lists.linux.dev>; Thu,  6 Jun 2024 12:47:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717678043; cv=none; b=nArX4mx0cmppGOLfP9xwQjUAc88/0s3sFa+IaFscXqbDlFaxHg0aRhZQ4qTfQ6Ep8z/pjBHchHlrxrxAf4gxGAgA1pvZ8fr5emkYybyNftIehqL0bMLDX0TskkBPTONlbdkaGtlbbnY6t0/eWKmUIPCOE2IjoJ/P3HOSgFhUDbY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717678043; c=relaxed/simple;
	bh=3fbhliqMK9UE5sviZyCBoxgLgroJjhsFpIDuYRWPfk0=;
	h=To:Subject:From:Message-Id:Date; b=KIU8KqxgqWngwuJxgl0ep6e5L3XBRiPUiEoFsWfiy/fqXtRlYWDO6VPWYEGiEHteWbaKARtFMDXn+vgkKyaIyuACmHLqw2mG95eY0lAbgv32jHhbV1HoLzPRWYKLgMcFGBmpHVGhufZitJGw26dOyZowk2IaJ5Yr2ZCxICWZ7+k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DSCHgnpW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DSCHgnpW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DE7BFC4AF07
	for <ddprobe@lists.linux.dev>; Thu,  6 Jun 2024 12:47:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717678042;
	bh=3fbhliqMK9UE5sviZyCBoxgLgroJjhsFpIDuYRWPfk0=;
	h=To:Subject:From:Date:From;
	b=DSCHgnpWX/fGV9WSJy5x1NCdzhBQmaWC1LjKplU/CL85CfxcZdCgnNBeYDDnGHE6r
	 Hfos+1+/iPRDXFLzgsov/h0AyxrzOI8Tja3grMJk0sXVTk6f0+NdO8Y4vvpk7Zd6gk
	 VGP+TuOvx0mJ8JaXqYUNp7aql34LXBFRvZMOBgTcMP2/uwWwdYmyCd482ZgKHRcO/3
	 fysT+uaLZUDA9E9z3MmDzkp4PK5HkdUWlFWoj5pMzifeJKk/xPoHteMzn2ty6DzE1+
	 8WYiDNqnl8stGSswPfuGQcjboZFBbm03tefSTBTtX5oqFsjSzV0r6oiToRr7c/6eAa
	 GlHtzgakJv6nQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CFCE4C25B75
	for <ddprobe@lists.linux.dev>; Thu,  6 Jun 2024 12:47:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171767804280.3754.16137608207139164082.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a89075df1074d472c66180de445424647fa1c80d14f9a459ecc2ea4331808e54
Date: Thu, 06 Jun 2024 12:47:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717678042
