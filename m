Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A6E3C152
	for <ddprobe@lists.linux.dev>; Wed, 25 Sep 2024 13:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727271954; cv=none; b=OpP7J+SyAFDypIvNCUZt81chWYJ91Xv+js3xDVpe9SezcPDXHYBRxbdR81uXuWt1SOJLI1aoqhqRMzhaCTZVzEnAerjqrARTrUp46g+J4ZfWf4eTC34W2JUZuuhUCg4bkq1uVPECqpICHTYo6fRa7IhRlLyPojFPwXMuWFvNJ8A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727271954; c=relaxed/simple;
	bh=fn9FulvWvs11dBGIg9FF98Zo0rDgzy0u0JIyCNsEUPg=;
	h=To:Subject:From:Message-Id:Date; b=g896wYkepsPag3wvt3IpEtN5lkjGtvjQiQ0P+vBwQg1ej3KnlbamFe8vXg+t9fHu2e2CZwCY5CBb2n1dsQMOgSvaeW5SeSXx6v2Edbq1gU5KjJhUKi0vRobBTcDICidpq1NdbOGs/3fm0vrZLmoXpUSAt97whzq+wY4QmHg+EP0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dLOY0OSh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dLOY0OSh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1AD0C4CEC3
	for <ddprobe@lists.linux.dev>; Wed, 25 Sep 2024 13:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727271953;
	bh=fn9FulvWvs11dBGIg9FF98Zo0rDgzy0u0JIyCNsEUPg=;
	h=To:Subject:From:Date:From;
	b=dLOY0OShZ/KVL4mJcOnLy7sAYS+/ovUqvAioxcu85hIEKICi/61PyjdcvK08ksMbF
	 xDH1KRjHb/BwvmMgPA7kBYgw9F5Ae+Zj7jr67Mbvv0NN8EkGju6maaInkGBUHtTOyY
	 MRnhKn+Uyb4OctsPgfEcDuuKF9XOLa4NiQ9CV3mQki+FHN52RTqHyFMVzmBs1c9xSP
	 yrVn0IEqHQW5LwXME8HePsoKNGaWj5L0/ssLQFFmKcKnqaRdPVaig+UIjlU9qVyOaN
	 uCe6GV4i/AiE6zc7H+lOrg1ktJ7XIU6UAwKm30bbDyqt9Fm68PUWpuEjkq6mh4Svcn
	 rG3sYjeSm2Ujg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9177DCF9C6B
	for <ddprobe@lists.linux.dev>; Wed, 25 Sep 2024 13:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172727195358.30848.8031480773730586091.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 18b602b7783a332fbc0c5ccebaf3e3ca070845249ecef0b852ebc94692886878
Date: Wed, 25 Sep 2024 13:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727271953
