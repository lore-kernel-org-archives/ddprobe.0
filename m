Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1AE4A524F
	for <ddprobe@lists.linux.dev>; Sun,  7 Jun 2026 11:04:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780830274; cv=none; b=j8YdVYB99EMPlYhpsSPMcVzblZD9N3znZUgBO7At+4VkHMsqACqr6aY3QWphlXwWYxMjwGSlCvM49uk2j7qMuSWWAvgGn0QhsFly+wpOvqIrF3VKwZBf/a91loDsGvLUUgBp82387ii9ft/DWxBxeFzpu+XyDq40kBbJYwKobOc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780830274; c=relaxed/simple;
	bh=PCt7NKfqTjyYd1EzMjroF+QYliX4w6XHXqHsCHXcHvY=;
	h=To:Subject:From:Message-Id:Date; b=aq7F31twubaJ3sS261i4Ezuz174DourMn0hrGaWVykLk/csmFg17A5sss2mfiVitYzTH5cp106e/m2H29oH8sC1v3iVka2tUQiecQV8QSe6/Zm+l/A4t7Vkd4XR4X14sUxiv1O2lsTUFu9Z81wvYyYICAh5dXrxFRrx5ECPOARM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=twxCNidU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="twxCNidU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC0E2C2BCB4
	for <ddprobe@lists.linux.dev>; Sun,  7 Jun 2026 11:04:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780830273;
	bh=PCt7NKfqTjyYd1EzMjroF+QYliX4w6XHXqHsCHXcHvY=;
	h=To:Subject:From:Date:From;
	b=twxCNidUQQY/qHvgmjq7U0ZQiVNxTkkmsgbIkkDNJL6YW3LKf697T+UlHqbF4HxkD
	 5hFMYAXLJ2sTU+4OuwFLxGQdPYOsh7FJrQZOyGY1ndog5eOT034t4+JCE+DK/2I9ce
	 WVOsUgswspu7iadfu1tfrdUh2Qgzrr99Bva0If5Iezmwnca3rlasnCIiq2ijZ8l6/3
	 p3Wq2q8FONWpzLN6/2xiIjHf46uD7NViDMoCaD3MFz1rJbq3+EdlqHvHBsmjyPOXSY
	 Bq8wCmjmRKZHeZhGtVIy9lrp9oy8ErA6pQ7n0BH0agSncsS93uagYX3zEgQwiMnIYf
	 3mVR6+WS9qBBA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3F2FCD8C88
	for <ddprobe@lists.linux.dev>; Sun,  7 Jun 2026 11:04:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178083027370.25253.10278903119437354076.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bf7567f3bd9abfaa1467f202b78bc3fc5efeb54aa53645cf706e543b8731a763
Date: Sun, 07 Jun 2026 11:04:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780830273
