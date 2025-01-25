Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 466C24A05
	for <ddprobe@lists.linux.dev>; Sat, 25 Jan 2025 01:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737767154; cv=none; b=bRzBRZ9N5xYs8WaA1tIFCw8py4Y9LtC+FLtaRg19kAgbiEcNC/kLxbhk93IbsLKRVodRrsmr3ou9U1BUp3N3vFwAZ4ZET2+7zXfmuSnoDziShoc3McNVn2AJ5ZhZcEJ5ftp9OgvPWNEZFlG08rtycqjO7QF/y+X5tXqga91/sz4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737767154; c=relaxed/simple;
	bh=xxR0lEn1RptghlIQcSoJCG/8xgNhXgCkebHj+ao/dTU=;
	h=To:Subject:From:Message-Id:Date; b=QEyRwKum61jKGAEHEEDPle13z2rgycBx/6AaVY4M1bz1d1mYxD8rKGHxFhmE+V30wT6ETIcdUpeiJvs8nZg9r1fhGXVA70ii+FpyoPmRarZwPR3pQki69Fi0zk1y6McSTl8kBdm9CRE2SOsczglFEkTcj5kwHH4B3qnsdPZnvJ0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rsyzFoe9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rsyzFoe9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF527C4CED2
	for <ddprobe@lists.linux.dev>; Sat, 25 Jan 2025 01:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737767153;
	bh=xxR0lEn1RptghlIQcSoJCG/8xgNhXgCkebHj+ao/dTU=;
	h=To:Subject:From:Date:From;
	b=rsyzFoe9C2HQMUEc8EIeLxs/W74/tX+k7pxJG7rypx/P8m8k+sEHZbbbDKX3+Ns8G
	 tnrIHdjrUem4hcFesj2X8mmyRPlmdgEBR/vY40TbWpnMZO3Yx3FHfS1TvRJ3bKu3so
	 Tq8gVvKa7MjSDJ7AbPYr3iQEUgvEMgx0oymXbytQvwDp9Gd4mBymzEeesM/RMQww+s
	 UmkagsUeAiVKPMixtrolzV7aZSaw4vTs0H1oXIFxho3CBDvw+hjpIvn4Tke0UM6APo
	 28DfLrbmu3HLeddEJ0L7gXoO7YHvK7yKJuONFDR7up9lT8W1mBsR8Fo9QYAL19BmJV
	 Zv/GTL6AkSg/Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96C1EC02181
	for <ddprobe@lists.linux.dev>; Sat, 25 Jan 2025 01:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173776715359.10478.4476563893589352742.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c4dc667d4acc43e7d9746b035094de757df9259bb564307d6209389b58028575
Date: Sat, 25 Jan 2025 01:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737767153
