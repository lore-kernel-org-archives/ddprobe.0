Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2653B1C695
	for <ddprobe@lists.linux.dev>; Mon, 15 Sep 2025 05:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757915994; cv=none; b=FXAH5sDH8CSCW8q/JdvUkjlXuvmCVmdCEdlLGVBXlrjdvelPvVClaPB5XTOxEsui52I4Tou07wc7Np8TEcNsZ6rJdqcfa/VHfD2H1tQff+f1Fz09WZhzcWKXY8nlw48nSFQMaBWvN2Jd9uzr/RWT/Rr3AaIoNqH2kvBka09xd94=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757915994; c=relaxed/simple;
	bh=+PG6SMTOIivpCidvykdT0eDpDT7PYD+h18adf5hX+0g=;
	h=To:Subject:From:Message-Id:Date; b=tRFncGEqm0AVx63nqUgMQULkiIJnkJsmyPMomdxrzBVg7O9UA05nSJLfiV98FAdsog01he5feOu0yYd9xBPzXNegTOngnnF5LF1oz0q3tgOIEQe3Ouo/iZTaySMUoA8pT6dFMNfwIFUkNarDpuYpv4PV/K9qwk6bKmE4Y/cBo4Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bSVAGBjY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bSVAGBjY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7A66C4CEF1
	for <ddprobe@lists.linux.dev>; Mon, 15 Sep 2025 05:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757915993;
	bh=+PG6SMTOIivpCidvykdT0eDpDT7PYD+h18adf5hX+0g=;
	h=To:Subject:From:Date:From;
	b=bSVAGBjY9U5iijhDs1CN8qInfb6QCQCcR85Sw9lTr3TdxRr5ydXG2caYnfZMIrzJ9
	 hXtTn3f3T4ZT3wBni/8xIe5WC111kE3Qfe3Mzw3GxvPOTo/fjTszjytpsf4K5wt9q/
	 4UKDgzxYu45Prv2F3UWRl12RYyyJpxZL/NLo/X62giwdq1VvQQRC+dNUEWstmEM0n/
	 WC1CpSvouFuinYTmXWuaoTYiSwBn37Cvb/6TJ7Zjw9E16Jl03NpFAefv/ideJFgJy2
	 SRCUufuOVy8mQO43A7FLfdsSH1AUk0N405Hc9xuxR+yFahY1XqBs2bTGXiKco0H2pC
	 T/9vcZCyIJIFg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95254CAC58E
	for <ddprobe@lists.linux.dev>; Mon, 15 Sep 2025 05:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175791599357.16434.2244519396043557474.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5bcff8358a2237565c745a8494d6cfe6f82bb0d8cc419323b2668780b6ba4421
Date: Mon, 15 Sep 2025 05:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757915993
