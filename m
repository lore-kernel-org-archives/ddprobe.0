Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 212D534BA20
	for <ddprobe@lists.linux.dev>; Fri,  1 May 2026 07:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777622254; cv=none; b=fweMyjohcCBXBwGuSP/qWmhjNFMWMti+g9d67bFQGhjEuRkJAXzQWlK23QNRg+Xhr2bLkHwO7DLE7f7uB6SmmmaIrQvuKwqk4nt8x+nyj6SU56SZkygA1oOJVnGqCRxGTk/sm6KTUBBZZAlUVJA3NIlkKSEonpUUw924Km0Thf4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777622254; c=relaxed/simple;
	bh=LjBWf7ACinBpkkXrMFM+jO9x8fwc10f2kJJTLElvLyw=;
	h=To:Subject:From:Message-Id:Date; b=m8rYaLfcXosQvi14qBpIF5DKaqgIVzCEIijjWy5z+YjFYfrMzy07ZPxwM/WQ8ps+7Y4WbqUPcT/VX5IJD5w9bFeiU9B5kyuFDfi8a6H/GSO0mfRPuNdpa6Nk0QNwYCo9HtX2oqgn0qYQBmGxYDxx/FiL/4JQNnCvz0y+Rf1Oh58=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=av2sPJMM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="av2sPJMM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B837AC2BCB4
	for <ddprobe@lists.linux.dev>; Fri,  1 May 2026 07:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777622253;
	bh=LjBWf7ACinBpkkXrMFM+jO9x8fwc10f2kJJTLElvLyw=;
	h=To:Subject:From:Date:From;
	b=av2sPJMMYEFq95GKmBMIZJTfcB0wXy9bVduNw9/LmLk8ArQ3BKufmyJOI1XuuR+ef
	 7/wyn6zaHo+rI9Rtpg7V4MW+Po9WUe+W85N32PLUeDCFhyldcVIOrB6rNu7Tg6+Rbk
	 nAf71lc7nmrDpK/cgu54Xn2oW2QFLANp3+aVl5TZ3mTQNHJNA6B+hzfalnxVj5uZKp
	 mwcku67SE2uP0BEEdBXb8uEr0956wxqZ2wnpcyICgDLzlcUxHrpfqMpOQtyeFOZUMq
	 5BGrnlS2YoyLXUMVErlM4eHJyr9/m1u7WWG7eY+D4P3qqgwBRTtrXMpctLR0vdv81I
	 UmZe5XoMTpA9g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9E37FF8864
	for <ddprobe@lists.linux.dev>; Fri,  1 May 2026 07:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177762225368.15751.12982106030572006781.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 02bfadd1e47a5f38802b297641e0367d0846b916a388c5ecdd46bf5f6badc258
Date: Fri, 01 May 2026 07:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777622253
