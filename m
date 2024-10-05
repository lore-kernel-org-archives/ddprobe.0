Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CDF579C4
	for <ddprobe@lists.linux.dev>; Sat,  5 Oct 2024 01:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728091555; cv=none; b=Zy7K8oBhOepr1pDjJDCCFR2lwP2HmPyk6fl7W0LV+QC9QiTlKm4ilHKHY+njb4Z1jQZMbbt6qH4vmTM9JyWz6LUdS8NlRuX0xBEsdIF7T6HLQfNUL1Ky+MVp7dZKxPKUioI9mSzJ62wxedmNipAKBfWefHF+/h/7tQCVXJNulgg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728091555; c=relaxed/simple;
	bh=nA5QLtCzKGzin/kxg+VQKsHMS/7GeUi5NI4uEOjCvSc=;
	h=To:Subject:From:Message-Id:Date; b=pNXzBKx99Y9McGLjBHUPTyELlKGjro9GCxVJmyvixc3xqWeKPZlmh1hP8F59NbMKAMF65OibcJ9JkUmpElT0CIHPAdg9Pt9OP/mTeCITMWHYAuK+kUusIQsvcCJnYX3hQGAhy7X+4t3Ix1X0vw5Y0oYBttIhmA8fQpCFXCKZPYk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IdigmNij; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IdigmNij"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8C13C4CEC6
	for <ddprobe@lists.linux.dev>; Sat,  5 Oct 2024 01:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728091553;
	bh=nA5QLtCzKGzin/kxg+VQKsHMS/7GeUi5NI4uEOjCvSc=;
	h=To:Subject:From:Date:From;
	b=IdigmNij1OJhIqef9WzMl/I6H4fo7DU1okuO7goq2TXPhNnyqm0nI5xFmQLLfW921
	 VVpjf/M1Es9hZyWLawIgaecmCmKOJ04dRT1o8izjBBEzOGKu+yP7AuixMXz+tf36cL
	 tBjhqE1jx0xc4juBDcwz9BMStMR9vDFUH2f1QCLLStXrM7bps+s3BvNeR5aheFycuy
	 Vk/Q4Bdv7jjRDIZD9B0Il1K0LyROpGlUrb0qjW/Jfo5Th2hKgKl4JqMkLwx1otKN3s
	 X9l29yM8I8XswtnzYBpRZfi6w+17sRgN1MAAvXY7CAfTjksMEkdckdJJL8CMoayQkc
	 aAQSypuYo0olA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94172CF8869
	for <ddprobe@lists.linux.dev>; Sat,  5 Oct 2024 01:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172809155359.2619.12826890518173160270.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 605fd5d09738de4d644d7057ce81cc5cf6a8bf94e9230c57d734c4157f67f35b
Date: Sat, 05 Oct 2024 01:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728091553
