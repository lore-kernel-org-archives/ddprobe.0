Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F82831E820
	for <ddprobe@lists.linux.dev>; Sun, 26 Apr 2026 08:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777192054; cv=none; b=YLP8mZmxcB95rEvKHvzYfYq95Oe+DPaHrK3qikAYG2fxhjkO6VqSbBf+P1PQXQqbF9GRNc+l8DqRUMID+HneZ98hPJZX+3OkflSQB2Y9SeILXr95+VvVCsb0IYulOPOs6kyfzQ/A23MwiuWKy0WeeG13xAOBKbmrOnMnw48wyRs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777192054; c=relaxed/simple;
	bh=6RRVbLAfQURmDOecTG3RnXhae9+cNUlkDcU9RAe3sTY=;
	h=To:Subject:From:Message-Id:Date; b=SMWE5k6GaOzEX/VWDtoUkcMwWEqOiVKsUbT7J8qTpRtQ5xABUE0JydkJS4iYEIkGNV8cyo3BtVLvSMNBIcADh3b/h1jf/O9XXyhdqJxSNyW+bhyGGpUOqUsHLHxLOiGWhDE1Utb0f4Hs4NjXRg6Ri2oaao7xqhum0z6eXj1p0AI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KFG7sjU8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KFG7sjU8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9F84C2BCB4
	for <ddprobe@lists.linux.dev>; Sun, 26 Apr 2026 08:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777192053;
	bh=6RRVbLAfQURmDOecTG3RnXhae9+cNUlkDcU9RAe3sTY=;
	h=To:Subject:From:Date:From;
	b=KFG7sjU8vpIxZmZmDz1/eVxM9+BlNhrebiOnc7hsq0hLJ5B235G13qYPoEi+VV+Q3
	 E/lmhogGJ2c5gRDalQQ8T6FZfVDlWYw/IavcrAznhX7FHFfFRb3/iaYKUcCw213ynU
	 r+KUYDS9aIw/KYSZ4wBAwKu/sS4tZIg3Pya2wuLpSFC6idXAOPKUNLidSkbwX3Bbt+
	 vSB3az08A6p3Z71+Q64b1K9ziZ8dl4vs2GBA//SQ8rw+fFhtjt291TZ09d/mrtGrIw
	 8ul/p+hEl9lhyrA0A71mkii6hBL6r+qekU6ToyIEMtRGrY5/nnyNiTmF7TlpYXBKbD
	 HAehkDqy4kEBQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8CFBFF885E
	for <ddprobe@lists.linux.dev>; Sun, 26 Apr 2026 08:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177719205368.13754.8835477557095740284.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a124623d76804ef7f0291c6cf67e82b85423e202e0e1903c71f36f2a6574f7a4
Date: Sun, 26 Apr 2026 08:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777192053
