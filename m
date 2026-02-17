Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4823154739
	for <ddprobe@lists.linux.dev>; Tue, 17 Feb 2026 04:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771302294; cv=none; b=i/V5RdZJK4nSKgU+K2vKmGZSobG82aWnj3yjqx9Uds4W6LBw4OyBEpCKa19ANAsCZKQyQEqwYB236G53BCCqjnlWTj7VLjwWSf6Ee/zTfeku6HmgjtQgTaGZxleL2GdNProWPGpMvVxogSR8CMYo0VY0UstWoXaSUV0vy1g2gPY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771302294; c=relaxed/simple;
	bh=7c2gyY2U/k0oBakUSJ+rScUsYg3sVhLFy0q/PoOSv5s=;
	h=To:Subject:From:Message-Id:Date; b=CDXTXnsLmDaEZGCM+sfF21+rzjYLu9DiCrlnsJB+U+Uaw2UitmHRU0JJr7J0Y2nSXTjA5OGry38KPzPq02LlbE5eT0LxhQIYomsjv9pGXU6DBH+MylPtzSuaC+DFLqK435CCfopszcIHoeaT7h8TOwaKfY5wIzMwDGZ2loCs37Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kXIejF4f; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kXIejF4f"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C167CC19425
	for <ddprobe@lists.linux.dev>; Tue, 17 Feb 2026 04:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771302293;
	bh=7c2gyY2U/k0oBakUSJ+rScUsYg3sVhLFy0q/PoOSv5s=;
	h=To:Subject:From:Date:From;
	b=kXIejF4fMyvpdAauVmnQBkzvNN0XV0IEnaO7QPkEcnTrWweVqKW/C3XUEUJozBEg+
	 65A7ggxHqQP54QAdS0JzfNqkAzMwkibR6VNwL5wlNrlgoLpyBoMh5dVjMyOQFQnRUo
	 VtKkRfTHbFMZ8js8uAAJL03X25TlbLSTVQ7jpPzQJfYOS0r+0UngSmxc+30e8MYRs7
	 rjzKWDEkqPtSWYpWnhRy0n2h91uR26CEBZ8U3xOqXlVZyYmydGnY9Xst/irjzNYPjm
	 ADdF5DJtF8UfZ4q80e0GLIKgDEGilEyhRdiZkxeMx5s07HpYkH519lnSad2VCT5UrM
	 rqW4DyK2qjV2A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B5B1E8384C
	for <ddprobe@lists.linux.dev>; Tue, 17 Feb 2026 04:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177130229361.18352.433636989357888201.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 71feb201cb3bd2d066a6e4719c7e0a87bb0aac6c703b787bc7929960d7ef5855
Date: Tue, 17 Feb 2026 04:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771302293
