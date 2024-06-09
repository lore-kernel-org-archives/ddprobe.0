Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6677CA3F
	for <ddprobe@lists.linux.dev>; Sun,  9 Jun 2024 03:47:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717904843; cv=none; b=jDRanb8iK7EZI3Vn05/mM9dvi+6kBzUxQW8dEN6Eg2CCevufnLOOkZ8Bhvh5fPFdcozXOrUUUmICAhXI74+k0Bul5z+Dzh6ODDfkZ916Qt5OMsWirrl/qKTL/S7HSQj2vBtIJ1HElUFr5/pXUSupEUWe5t4A0HNKndbrNOAam1M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717904843; c=relaxed/simple;
	bh=RgooE1LCoJiGR/d3h2xs6WQ8bwaW5z11anQABbpdrC0=;
	h=To:Subject:From:Message-Id:Date; b=ClZtYmg75elQP1CMTY3fsKdQVBZlpQkv78gUG+S+u7s6Szesg5IYsDRhHL/W4f5/ElwDei8Gr6SBQAzivJdUMQGVv3oAjuUzhLmcAWggF55IlsxlG6bsHYuRiQUZCkVomynXmi9mpVFOfHdwAw80onUdEsaYSSfffklt1G0/PII=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nO5f3sPU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nO5f3sPU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DECFBC2BD10
	for <ddprobe@lists.linux.dev>; Sun,  9 Jun 2024 03:47:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717904842;
	bh=RgooE1LCoJiGR/d3h2xs6WQ8bwaW5z11anQABbpdrC0=;
	h=To:Subject:From:Date:From;
	b=nO5f3sPUMIP6SMIf6l0wra8VJ4Aq8eqlCxUrM7RWbUlib4hPqfiQ0WOhdySwBO6N5
	 Nl2xdGPwBy52G0zy40GiZkIOLH+eNWJAI39VIlnBMEKx12wdo4K4jEGFDrkyR1oc3V
	 1f90oOl4YAVbKX/9lvhug6yC5zdCpA6lVS9q/QmBhFY6i07knwqkV3EPB/8+Q2Ut+o
	 Q0X/2EQGyQP5ZUvldOWFwUSAk72pwxKzujLAw4kyWZYja7W6yJa6I/t6qdKfZTQfyx
	 WgvT+Boun+1NDl4m+WCRJ3e8U7zSMr9ulbwaQECnCl3+LD/R6aK2bZ7T1o6UlCIFql
	 jI3w9G1Otwnhw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C8519C27C53
	for <ddprobe@lists.linux.dev>; Sun,  9 Jun 2024 03:47:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171790484279.7691.2873679081292057023.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: df089338653ee3b1e88b8639a4fe6afa07be8df6c64f4eee306aae19824664aa
Date: Sun, 09 Jun 2024 03:47:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717904842
