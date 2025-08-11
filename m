Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34AE6311C16
	for <ddprobe@lists.linux.dev>; Mon, 11 Aug 2025 16:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754929794; cv=none; b=XsvE6282r72Yfv/0DEQTu0hOrlRF2dM/GKBGKdYdRkUyTa68bYQ92RFdv+RXlg5wwh2Il0xmkFAxuVPjvHBFy4k9wSjW4zAR98G2OjFlexiJJydA2jwJ/kRiQYearqudsrzqaJ8NFWoASdo9FJN/COZgasiN+gDI9S/27560ANw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754929794; c=relaxed/simple;
	bh=k4A75EesVgrhI1K/ZegtxQ1fnZPtRQJm7huJE8UNJiM=;
	h=To:Subject:From:Message-Id:Date; b=jcWR4q7VIWOErpAbny/M6g4FO6DzM5usxger8/Z0Nq1xzIff1Y3jxTMfQ1nzPknUcys6EZniCb7MCmpNqzUzebJVEBEsfJi9fX/NoRN63GOtAY86PIJh937CiwMQt8DE4JQrlZak8fjX0AoaYN97VuPioTve7Y+DGupV/mXeRhw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=F0Lo4lsQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="F0Lo4lsQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0630C4CEED
	for <ddprobe@lists.linux.dev>; Mon, 11 Aug 2025 16:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754929793;
	bh=k4A75EesVgrhI1K/ZegtxQ1fnZPtRQJm7huJE8UNJiM=;
	h=To:Subject:From:Date:From;
	b=F0Lo4lsQLQkdUmHB5Yoz8NQv9EUbDjG62d8fxqwqVqzJVJ1Hhp9XdbR7jTGUjEgKu
	 QeWQQu/p44Y8n78HjCt1yuusszBxEIkWGfHuUEV+rZJo0Iy+hBFmRWUhr7v6DPbjW9
	 Ui7bBDng/JKphGf8ppMROVsnpKsyBsmQuUlqBYa/dhMr9CtLncv+5ZH1U/B4TJKHev
	 eF7vQe5rCJ60sB0c3cs5B1TIUAbX7qMx3bitks2CYod9eKiHqYsgHjyY+M025JkLBP
	 am3mAX041aB5UFUSn608cKEMLrmarxVd52FhvNjsdqlBeevOudYAHz1qOFjkJoJPk0
	 aico3C7YlmL/g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9096CCA0EC4
	for <ddprobe@lists.linux.dev>; Mon, 11 Aug 2025 16:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175492979358.28928.13124322582960416649.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0031603b8a23bbf7ee6d4718fbca7b22129bcf1b9d587b3840625e5b5ad9810c
Date: Mon, 11 Aug 2025 16:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754929793
