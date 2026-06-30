Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3332E396573
	for <ddprobe@lists.linux.dev>; Tue, 30 Jun 2026 06:58:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782802714; cv=none; b=BbU7KX0jp2FP1T7bhppOrExi1ukr6WxM3wehWW2UhMgqUHrDcS3FJyF8Pu5IZTBgdzCuvD36cAjk4ZdTEM7MY4s3YqQZwNeBBUpLV6Fd/+2Alr43rDRHdwHFLrZSdYpk9wo40yC2FfR4rXQXBevPtfe5gXPqo3tKJppHZrU/e3Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782802714; c=relaxed/simple;
	bh=vb/KyPt1c3Ot8uGT9zpqBHDuBdjxlnbQL4yi2wnltvA=;
	h=To:Subject:From:Message-Id:Date; b=mVFgD2y2iafzXMB7mNQq7TY9PfITHl0HS9hE+aZBOxD8YJR2hKOJ00YhU9ER0zLCLh8ZM8ZlVTQsBhOCDJwE4V2dMpfTqDRk0RuKjtsjztIDPqzSZSYn9igUED0vliSKQLaXr1cLTr+/h4tHtqsX4QH5Tt2fIhwGvqnUcNeSN/o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UxRCSQrN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UxRCSQrN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C09EAC2BCB9
	for <ddprobe@lists.linux.dev>; Tue, 30 Jun 2026 06:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782802713;
	bh=vb/KyPt1c3Ot8uGT9zpqBHDuBdjxlnbQL4yi2wnltvA=;
	h=To:Subject:From:Date:From;
	b=UxRCSQrNQfqO+GKG8uZSFPi47vRB6vYjJbOyK7hUa4gSBwHXveNACkcEeF6S037IG
	 iUZvw2do35AOsxCTlXbfqX/RCjKfDROdDEK6HoPMfQUweeaKHwx+jsuLGQA3RkKkKt
	 jO2qmlGIBljGFV9kPxPI7pBbfEqIDBT9Ic9t072hKG4MTxOvqJcJ6sTwcVlbehS7iS
	 ClevQ9a3/vZUq2kfzfxUGDRpajFogCyvx07Efs7ffx1Q3A+5cWHEmR+wHusimZteTq
	 iY+Kx8dUyWQmLxLbHUJ9/9jMDG167HOht/T0R+JJzmvX8NUORHC9BaAzXMKCQzMcxT
	 Hblsc7YYjffgQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A95BCC43458
	for <ddprobe@lists.linux.dev>; Tue, 30 Jun 2026 06:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178280271368.10282.8998190246360165671.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b4393c77d5b176395060d50d0a709dd926180d6f215b8f154334c2a167f72c58
Date: Tue, 30 Jun 2026 06:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782802713
