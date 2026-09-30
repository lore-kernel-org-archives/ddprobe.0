Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46C3D2D9484
	for <ddprobe@lists.linux.dev>; Wed, 30 Sep 2026 20:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790800234; cv=none; b=kd6YmB9Gh1SEj7p+ZLqj9gnngDVPkwQ3kGlNLpXcvbHHj8dlFDlQI40iJXQ7UARKHuOMCvzf9K24iIyAPpPKv2iDmV02MF+HC5xKwj6cXggz3R/mSmyqEwvgGShyAG0I7n/KUWXtfVfwTEqkXU6gc8MiwF8SCDluTPXR91d6loo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790800234; c=relaxed/simple;
	bh=U5URZvSTTUPcWzWXF4uD6Q+GN7N/Zz/ORDQs+3oFxXc=;
	h=To:Subject:From:Message-Id:Date; b=uaWVemqSBjDV+jR7RwGCNA5g50are/IFIzFKcEFY9YBqzH9NCGmO8EyV0LyY7AqWV2Td9D/Cv5wgfu0hVBxVECs2/I6qnEkNC1ogSQ7WlI6KpbkueXe/rwsEK2smG5hulgGb8zTcZpwHvKaIVyfbWHpKwPybJkcRpHfyQ3OZ7p4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=odIlUP1+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="odIlUP1+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC7F9C2BCF4
	for <ddprobe@lists.linux.dev>; Wed, 30 Sep 2026 20:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790800233;
	bh=U5URZvSTTUPcWzWXF4uD6Q+GN7N/Zz/ORDQs+3oFxXc=;
	h=To:Subject:From:Date:From;
	b=odIlUP1+WqGCylN98xFl6zab1zTXGT3SJHrMNyiBh8VBjcJC6swyoCZHOnUsHYG5W
	 lYfszXjURy25Qb3JtQ/z6uRz6L78AAVa4JSg1vYPh3U1U17MOT/Hx8J/GShYMp/bX6
	 dmLMhSOaFweMw3epkgLtyb+cwtEwrlgzC+Tlbz+PmuIsay1T8YUt/c2y4JgeTKSOaR
	 VCwSoiXeY/7pbSMIyI5AYU88BDEO5vtSmts7d4Kd3KUor9LY4GFKKd2pCDzZxOU+5Z
	 DME/ZsqZdw6jAzHKCk4pt7luG6GW3xq1Hnm8JxE8JA0np31h71txMGzwQtWxKliq33
	 n9EyTAKI+BkCw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAB93CA5FC4
	for <ddprobe@lists.linux.dev>; Wed, 30 Sep 2026 20:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179080023369.712.2766927615181202957.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 83ae5252fa641206e41a5909c96b23b6d45050b57507b0490148f13cf8acb87a
Date: Wed, 30 Sep 2026 20:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790800233
