Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FBDC20E31C
	for <ddprobe@lists.linux.dev>; Sat, 14 Jun 2025 23:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749944994; cv=none; b=GH3s4gUz1ilrPMEZUpIHK5dTK5uDKudeG80Cz3zJ6P3ttn0zQgWHGu+DxiDJHXTZ96/7X1dycRB1/qVGKlyUY9YAoksdJRCQa+GIlCdd6iqqAUkZ6OrwSeg5kpCSXCPyIOZBKcINgEWxEWBx9/aQjshdgjhp5SpeTztNoXe44nc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749944994; c=relaxed/simple;
	bh=s31tQxhWYZ6JM9cZjZd0BlFvxG6B7j3D8ZqAkZS2X9E=;
	h=To:Subject:From:Message-Id:Date; b=KOePbs8jEj4fcxqU/b8+N6VkqYyn7uQjMfsS3viNJVx2mJbIO4tTRUXT1WQ5eHRDkNtOltVWK7wpSUMikZAQYRRVVO/LVb4IAdzTW7qspy7sk8EskydvNJQvWwdBXCPr4vBfUee3nbuQ3nLoDlTXuTsq7xHmxFnrVBPaUdmB2Tk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fz19OreK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fz19OreK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAAFBC4CEF0
	for <ddprobe@lists.linux.dev>; Sat, 14 Jun 2025 23:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749944993;
	bh=s31tQxhWYZ6JM9cZjZd0BlFvxG6B7j3D8ZqAkZS2X9E=;
	h=To:Subject:From:Date:From;
	b=fz19OreKhsFpYO+EDwTIrLtHDlNUg4KDQ0HSGhdIOAb18k2eGfyJYj8t+e6rXLW8/
	 YFug5OUYhMa/ZGZEFu+y5fHNLuvdIPrvOEPFMu6QztAJs8pRNeg4gruA8L8V+tcKzB
	 lKRNAOCkeFKqak+hoOJprYqw5Ws+kf2B9JjvzaB0SB7inaurC0BzVTy8PyWnyQ2Gx+
	 GgvU8AHuOEwpPzPzlvVM2dA+qwFGK8J6F3wuUW4dygHYw5/MCs/i5CiXSoP4Vat06G
	 DVtLJbAOTnAIDG3Zx6r/Mg2j7OabD5FfnoHlLnBCbLj6eGxIvlz4y6csB0bq0INM89
	 BqlrBhooLEvpQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 985F6C71135
	for <ddprobe@lists.linux.dev>; Sat, 14 Jun 2025 23:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174994499358.11475.17683305499740204554.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 272d1a56005184ab79a075e3de18df9eac1ac575e3080ca9bcb525375c29d9e2
Date: Sat, 14 Jun 2025 23:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749944993
