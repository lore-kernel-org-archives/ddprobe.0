Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2207A192B66
	for <ddprobe@lists.linux.dev>; Mon, 22 Sep 2025 16:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758559794; cv=none; b=Q4U+e22XbH4Z5y2PTi6fJdCjQzKc591aD8v+ZMCcWRleRazhfp5N6E/BTNYPYV4DGSWrjEvOq51rGAFpctyoEggszVmpLG79ScpPdsortfb1zrQwXEfVye24rWtR7UBoJTay3rZ3aSvYgEnq6hqE3m0qxS2xPhIJ0MwJhQwaOag=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758559794; c=relaxed/simple;
	bh=biWvWaA/Pwx8zhVCS6HhKh++sQ5OXq1KGZ6c8jPAxZM=;
	h=To:Subject:From:Message-Id:Date; b=bdDSLCS+k3NZcTtadFPQQKoyjU4PoAw5TAOtFQHnKKoyPCpDPBD96Bt27M4Rshm108qs4hXnmd/Ez5iryDA5uUk1XwT9LrmN3mwZSthFDudqyRSawp3WJz1o/pCUE8S5Aj+xjugfUK9eGuJBOrajrylVFetzQBdmPLfiRjEgZ9I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZTBtBoZx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZTBtBoZx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FBC8C4CEF0
	for <ddprobe@lists.linux.dev>; Mon, 22 Sep 2025 16:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758559793;
	bh=biWvWaA/Pwx8zhVCS6HhKh++sQ5OXq1KGZ6c8jPAxZM=;
	h=To:Subject:From:Date:From;
	b=ZTBtBoZxRrR92sP13E682TUCcK+0zRgMa1grm5uKgBXY0EppB8afUvYy6JU/PW+i4
	 9kOXO5LYwcVEP+7bXmn2lXAiggRxGaDBBBScqyzRbMh6NoAjwwJbnIk96v0aA+wLKn
	 vq3Ceb4AFGQEEoS7QStVgVzBs8kEoX38aUinJsAQze4BgaTZ5LmKwewCm9er9v5++s
	 splopZfBXGLDDKvHqe8PC2WtILeUw4nivZo9MNaGD/IZoFoqtocWYaGc7fpQGHJPQ3
	 7QwiFI2TxygMSYd0K5sjUUqGXNiNMovrPIoYTspgu8ouML08njVs7l9H8vzKuyPa7u
	 CzgSY4C6TERPg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9134FCA100F
	for <ddprobe@lists.linux.dev>; Mon, 22 Sep 2025 16:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175855979357.22413.12282820153078602884.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aa3224328d791c3204ee685afef90dbcc69d206942e2acf64e904b29369146e0
Date: Mon, 22 Sep 2025 16:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758559793
