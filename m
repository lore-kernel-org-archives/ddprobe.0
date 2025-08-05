Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 241A81F948
	for <ddprobe@lists.linux.dev>; Tue,  5 Aug 2025 02:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754362194; cv=none; b=kgcT4mr6lup+ApeNPzWtmI7Jmx7XinhNkkFsTVuPMjRWpTNVcLovn7QUn+I2P6CRL/byJm2HEYvGzFAf3BQbNsVqBhV2jVI6XJ9aIUFnH6JlrJLn1ACViEcpmMO7isMa+wuU0IESqyS5vpL/2p7WYHJxdNfWIth2eDrHA+FnTJM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754362194; c=relaxed/simple;
	bh=62g5IQ7zEKoZIT1++CF25Is8KGNto5jxAC8bHGKR2uM=;
	h=To:Subject:From:Message-Id:Date; b=TXtP8yPb0hKFT0ZDM/eZardFx0oVuhV8eSKN6KprrVc+vFRy76dLAMRDJEQMUsvIJ0YCUpYzhsHO81cIAlVBX9OUegLNsbmtpFs9vwMe2XKw4DnhCabNguPbgizwugID0uC2kdoQH9Qg1QVmaXq5Bp7NAcn11TZu3tN5zj3muCM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cowAWsP+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cowAWsP+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A081FC4CEE7
	for <ddprobe@lists.linux.dev>; Tue,  5 Aug 2025 02:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754362193;
	bh=62g5IQ7zEKoZIT1++CF25Is8KGNto5jxAC8bHGKR2uM=;
	h=To:Subject:From:Date:From;
	b=cowAWsP+QrxaT/MIEnuSy5br+Vy0IJS0uycGA+cZDX/16iPW+PSZs+Df98bYrIghY
	 DV359I75qQgakmJKM7BkU91EkQUwn2ANwGURdLGSfcmBKRhbVALPqBFS2hjY+MqKCu
	 nrMSbUGLm9ZWBNyswRuDdduVnQuG9h39Pc1CGN2ytCzz73VHrhCFBKCDTC0untW963
	 Sj/+JGKO6+HZeDfDXGR5SQ5BQcmhckZjXUWGpnFfhmkNXpYMW+AJAEgj7jxSps2qPH
	 kUzf81jJwoyXOkxLe1RbbqgzcZ85MIdyuSBA1wPglyPfwgeFa9a1z5ct1eWEyQZOWh
	 MJRuGGpA7zWAA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8ED28C87FCF
	for <ddprobe@lists.linux.dev>; Tue,  5 Aug 2025 02:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175436219357.1567.3687718363839563656.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e08018f7a8830910ff23da07f75c7bc4662001cd4ca4f798374eda3115b40715
Date: Tue, 05 Aug 2025 02:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754362193
