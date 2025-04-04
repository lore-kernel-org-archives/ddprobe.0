Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A8431F2C5B
	for <ddprobe@lists.linux.dev>; Fri,  4 Apr 2025 19:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743796794; cv=none; b=gjyhiSik8lnumNRbVfKTB7g+lf8Zcwuw4tOnnHuZJa0T/LlDZSsT0f2rOoCQf3IOruigneRUf+sohTvX1WJsRpHptFm9IFZVxE54JVjrY9rSNYcNqsFEN/bF9GpcRDbnRyV+JqC1Pf3OhGtE61faE2Sd4frbOzUliKBxiLzsXEk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743796794; c=relaxed/simple;
	bh=SGt5X7PZy87Fu3F8HLzmaXsHjQnGlV5ROy3/9dAAXLo=;
	h=To:Subject:From:Message-Id:Date; b=rskHTocCjfOgZaWir5/u92N1/pJK+a/SRkYHggDwR1ykDRt26UQQ49CoF0yqrkWk824aaFFQBn/0p80pDAFo18s+H6MEGcQkYxgLA4eWBltuucId+MMDjOHRVyIvtPch0CZLRjAGt9LKRefHifO2F9SXHlwKxtx72ej4u66nr/U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JU1Rjwsp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JU1Rjwsp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1070C4CEDD
	for <ddprobe@lists.linux.dev>; Fri,  4 Apr 2025 19:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743796793;
	bh=SGt5X7PZy87Fu3F8HLzmaXsHjQnGlV5ROy3/9dAAXLo=;
	h=To:Subject:From:Date:From;
	b=JU1Rjwspkagid30B+z1L7CwBVQfy6a8MV0zthfA1wMXCMpL6fDhjmMR0CaCunG3R+
	 vbpgu7msu+mdBixJ+ZL4TtdndLOF5CfzkQ4oROFg1NtHtCnG86mUZoDy6MPWLhCyMp
	 J4EabZVWT/g2A+vtdQnmfms4Z51wzBDM1TbKewHMwmtI0OttiS50Q1MZdX0GLLsui1
	 X28OBlNt6ohEEq76phAJenXUwAkNsEA5xrEBj/4ThLNK8DkRa9BQabrDaJ3N6iVQj8
	 hKVviasLgmXdzm+i0qHQWtwuGXxtCuSOxUlYf5IvDoS/UwPe3KQeESOgdS60hj85de
	 wWxw2IaLlCCtg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D3ABC36010
	for <ddprobe@lists.linux.dev>; Fri,  4 Apr 2025 19:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174379679362.21686.4538752400045657247.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4a14aad784c18a7f671e8b3e38c407d0a610a4165bada172188bbb9a4c7cb484
Date: Fri, 04 Apr 2025 19:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743796793
