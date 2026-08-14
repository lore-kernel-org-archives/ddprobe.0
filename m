Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 55AD93A8735
	for <ddprobe@lists.linux.dev>; Fri, 14 Aug 2026 23:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786749634; cv=none; b=CavqaBluLz5rt7gjrFOg4osAUvO6AMgOmnIplIs6VciFJ0F1Y7KA71aGfsZOGXk5FUgTNNM7z81MyC5Y4ETr5eQ1klXwDlyEueLIrzDLstsNu0pHDM6xFKXLsIwwVkfouhX9zQ7sb+8qOw+QODhdXiZtFdfnF6C69TqfaNnQ1X8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786749634; c=relaxed/simple;
	bh=KCCnvWoE4Y0acF1QRpCqKUf9xyPQNz3IvqN9fcD7oac=;
	h=To:Subject:From:Message-Id:Date; b=Cs7DIDO7sJ5HqHMWyIN4OfOqW20ZyMTxgl9Wqx1hDSFYWzAMHiSFzfV8VWoAFGYUWz3eOEOIMbQhSkZXnCtBwOxnHLwIsOZLNnHC82QsaYBgkeR7zZMFQdGuNMNCvOY+RjrS8YcirHci7RyBS6a93sF+SvLg5+KW3anY9dBTj+4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aGJmGXY/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aGJmGXY/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE6EBC2BCB9
	for <ddprobe@lists.linux.dev>; Fri, 14 Aug 2026 23:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786749633;
	bh=KCCnvWoE4Y0acF1QRpCqKUf9xyPQNz3IvqN9fcD7oac=;
	h=To:Subject:From:Date:From;
	b=aGJmGXY/KCcu6iH3oItdfQpcx7OvpdqKx3o6Sph+EF3stV1qwyfTRzV3dRwrreeGi
	 kAsYpcC5yv0bWFmbS1YbZq8KGTIxFg/n3Gn4v67Ns1c5wq2DsNLkr+2uHbA9PorhLz
	 PYUtlKw+CLJqyeZP04Cyt5lY1pEtqKq8cqQD//ATxfeFEQyrkGKN+byte/FnQ2nOt2
	 EldB/ZHBGqvBT/yN9oENepDwLN6qiRakdKQXz6/YK1F+zRMj1BDrfsutRWaSXpLQYt
	 aw73j5j5wWMwPGuiEInta2KUdTx1Yiv5A0en+QQcIaUEB7dh3APAfwFoeF1of1j6l6
	 899UHUAlanGvw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAFE2C5B572
	for <ddprobe@lists.linux.dev>; Fri, 14 Aug 2026 23:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178674963368.13975.13307294928025903237.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ab2169374033a4bbe6c1e6422a7e10ec723a5faf81f4e6445cfab911e5a6515f
Date: Fri, 14 Aug 2026 23:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786749633
