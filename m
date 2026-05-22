Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37C6E3A6F18
	for <ddprobe@lists.linux.dev>; Fri, 22 May 2026 13:22:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779456154; cv=none; b=lFp9Yr+B/BBGyb8wiqMek6O5URsqOA6IUpY4QdvsNzFdX3h/QA0DKmONZffNqQE05ua4QXkujlkkI4qnKU5XIq8SXIye8kMcLpUryMqIJKKruci8jNx1JrO/XRSy25KB3XLsplxOKF2kdwgabNt88XBeeQMiqAIQjgpxwZ+nd0c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779456154; c=relaxed/simple;
	bh=+AiqkMX7Hv9gI8zqF1376C2u5MoaOgCBW3cjQvhuNM8=;
	h=To:Subject:From:Message-Id:Date; b=m/6H0JIb50nplEiuSf12ICfZTZcsq7MOy5SSME6QTOfjnPVTxpCNhTBieKfvr6P+toiclQ+ggi+qJXle/pB8QU8ZiK6Y5ADU9RtrqyPWusEmkxX/x30eVInsFVLg/mOS/eYie3RwP3Xv+1rPulZav9/lJxmxDRiGWKKStzAaO0Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kuMRI56G; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kuMRI56G"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C10ACC2BCB3
	for <ddprobe@lists.linux.dev>; Fri, 22 May 2026 13:22:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779456153;
	bh=+AiqkMX7Hv9gI8zqF1376C2u5MoaOgCBW3cjQvhuNM8=;
	h=To:Subject:From:Date:From;
	b=kuMRI56GKlICx63Zaam8MxD+8hZoiMwjmlfyRWhJFYrOUsyqqgyr8S0hJJkfyl4kD
	 xDfJmj9/TRwypQdpFFbDCdACJFzOIC9sQCBUZAfWRI5X2a7tH5g22FfcoPnEuGUG9o
	 0aT4llkLMldbZOGBKaugN67rIgdECc0lDzfDHjKC0CHQvjowTHu/D4w9XPxhUJwo5C
	 o2GO7Y9zDm9QyEZ7mscZ/8Ii4odmQI19lgzNfP+dklz3TMBgOFqqkiZoRhQ478qQOp
	 5Tnot4z/d0EztGMjfnBduW+fTNaaIpwyHCtvx9q0fMKvTRUYI7RzOxnY4pctReL6ti
	 zmlzYrk4vWQoQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9E3DCD5BB0
	for <ddprobe@lists.linux.dev>; Fri, 22 May 2026 13:22:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177945615368.14518.13888685130712275962.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 04282b9364558ca2a687ebeaf7fe30f65c836ee8917fc2ffcc5952210868f83c
Date: Fri, 22 May 2026 13:22:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779456153
