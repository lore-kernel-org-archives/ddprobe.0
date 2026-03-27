Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 11D5528312D
	for <ddprobe@lists.linux.dev>; Fri, 27 Mar 2026 01:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774575294; cv=none; b=AMG42AZvetl7uoAizcRO4cNYT/ygZsx6XjGUV+dAySi14ZAD5+k3r8YtkEFIpofQW6eGQxyg9ukDvVq8jQzTHVA43GQebQ3H6lOrSXxi7QmQ7K2Heygsc4qW8NUEse2/X86j+WfURrCaAcbDBclbIc1cVI1aUNWo5P15PnnhX8o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774575294; c=relaxed/simple;
	bh=4k6z8jtm6KBcbIiiGQ+TAF1rFNANAHj3UgJLN29g0Ik=;
	h=To:Subject:From:Message-Id:Date; b=I91vPLBw2bw1xj8Z+f6pqA/sqI0HQkOR1458eoMjqMweG6VLa5XCXiDLeK/+4hijq+NCf/8+9V/+ZcYYJpA0uNeI1o7e6PSVU2EN4pT3c+WR1MTcgSO/B/WPAR5PxSsOBjHgje23sQceujv2Z3C1/5Z+jaZRIeGj5eFfjYCX78E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mYyisYIU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mYyisYIU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A513EC116C6
	for <ddprobe@lists.linux.dev>; Fri, 27 Mar 2026 01:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774575293;
	bh=4k6z8jtm6KBcbIiiGQ+TAF1rFNANAHj3UgJLN29g0Ik=;
	h=To:Subject:From:Date:From;
	b=mYyisYIUdRQ3ePWqQUNo7oR36jw0zTCF/abi1JNP/7b0Xbea7s0GxrGXETucNX75N
	 b9/H1Ac5RrPMkQezz4GOUTls/q9yleineSswVaa9k0PONM3uuwEPPzDldjHyWruufp
	 t6qNkHS2IXpjXqcE02sba3w63uDiSXU/zeaR7givMLuMwEQCReYqrmkUXCGa0vz/sG
	 8TpRjHM4iocwUlQhd08tS5aQCTsvwUnUjOh3TPKoHoIbFw9+R4pVc7nWwfl3/X9rqo
	 qrejmibP1hnDlpTD79gxlbFAytfPs17PzbHu9PMM3wjxAXMCRyTVC7vzM0xl314sma
	 wOJjxzrRr/d+g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 954ED10AB83C
	for <ddprobe@lists.linux.dev>; Fri, 27 Mar 2026 01:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177457529359.12120.11842101602613218449.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0859ad52863f83d5984ea84c610479794ccf073adf855c546ee721c14b01b990
Date: Fri, 27 Mar 2026 01:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774575293
