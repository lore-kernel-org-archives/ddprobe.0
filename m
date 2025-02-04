Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36E9F2040B5
	for <ddprobe@lists.linux.dev>; Tue,  4 Feb 2025 23:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738712754; cv=none; b=GiQQfOR4wfscLqbUYwKTb+ErC8MjZbdVCtWT9/wXqGY6dfsiBOxAKAypMIcinbYOuPCPPQhiDL+YVbm9JD3aAOP50Zp7pRHBjvvXPoRK78Z4tKKCQYbwVQeWxWYDrX6Be+d1MzwjwgAe0HEuLwj0I+pTdYtdwiLx4kpA5ArZgnk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738712754; c=relaxed/simple;
	bh=nhFv6xWxfIfgFN+yt1iQAV6B6LXL232QlUfpachNOqw=;
	h=To:Subject:From:Message-Id:Date; b=c6IcinS2oF2NOg2rgtnctsyOQKF/Np4L2mKAW07CrhyGW2L75xW9VwS0EaRL/jzmCsY9lc1n9xuunppJCXu2FjpHxQrsA7CFqkkr92X08R73SoU3i1l8iqJh6Ny3G420vRzcpyR8DfGR0eO9blpcdOTxD5Kt0dbMqn14MZtROl8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CgnEnpuz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CgnEnpuz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABA5CC4CEDF
	for <ddprobe@lists.linux.dev>; Tue,  4 Feb 2025 23:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738712753;
	bh=nhFv6xWxfIfgFN+yt1iQAV6B6LXL232QlUfpachNOqw=;
	h=To:Subject:From:Date:From;
	b=CgnEnpuzrtOTtD9/LOjH2b/eFceI/1GwY6fE8Q4qnoT5nbW+WQUhcE4iAwEv0RHbn
	 jRylAwVDlnHjl7BK0vX5wN5D6dVi2y1PcOd+5dInj/GDa9FaCYNDNB1Kg58jfDxpG0
	 yWb1ruof9GodHrnkWPhAzBrBOWJnWD8C3zHsujI8zOSB0z/32ZNiyFocI1C3s1xRIX
	 y9riPttSUnK3gP4e28an2wQ9GNxT2PzEESDXyak8S+zSf63Gu5Af7wxdHTiU4yust0
	 o1cIdsdpeaZwDt25OZdBS2NnEplpMMIbKGDJ4qiI6mp3jy8YzYItRS564ecJjIfzBk
	 n1bRD2I1pF2xw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94B7AC02193
	for <ddprobe@lists.linux.dev>; Tue,  4 Feb 2025 23:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173871275359.23908.4867324541338335970.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5697e8090f856add0548dda34743df643b8fe3203ab90be7aa3616158b772fa7
Date: Tue, 04 Feb 2025 23:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738712753
