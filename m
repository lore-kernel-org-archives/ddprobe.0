Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35A37C2FD
	for <ddprobe@lists.linux.dev>; Sun, 14 Jun 2026 09:46:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781430394; cv=none; b=Fqo14RWZzCr1wnHztKzHawSiW84gzgobAxvrn7sqM/bIcyLDibMJZuQI9eWmPNMCJvVdFcJMnSwXEOis4+hdp1NEEbiyAz/1RIi7rcuhYsgsuKxZ5vivBsh2nDtboPG5X44DfwrcYTb7Jjps55G/L3ZbgMfBu+Su/jByjClNm5M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781430394; c=relaxed/simple;
	bh=+kvKrplstc7iTBG5DzIfpk+9sOb+ji9EHoem7FPqPXo=;
	h=To:Subject:From:Message-Id:Date; b=NRHalu2GAZYFZSYrD+2uHcnDsDOK6XEH4euxJBKlO4tqtQJ9js7YqFvHRymHH0D+BS7MmxaTzDur6vvFDhC0wC3E/V74TzWrUPry0OzmMQhHQ1yO3v17ZnK5V6RlX9tv3pPpavntKwPVICyBvi3dbKMtXin09PcDEkbO01pR6yo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZqN9F7MJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZqN9F7MJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CAFCEC2BCB0
	for <ddprobe@lists.linux.dev>; Sun, 14 Jun 2026 09:46:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781430393;
	bh=+kvKrplstc7iTBG5DzIfpk+9sOb+ji9EHoem7FPqPXo=;
	h=To:Subject:From:Date:From;
	b=ZqN9F7MJqQyzuMIqzbu1wovujHMu/+0VRopOSTfYfYL2MGA53Bc9EkmLDefKVAm97
	 AQULpCt//yCaCF/dPFL7OEvX3IRjKU0T2BkqnQ7y36nDyhtCK//H9G3NwFv0LOG28a
	 JYQdQmL1QOJMyxd6Du/tMwr51I2hPVwtCb4V8QFL5t0Q+ggIe7w4xsatqc4PEPaznt
	 4WIJvoFgLUsZJVqO6oXO8C81mh6BjQX8RCloY6BEwDtcJV1XRydLl2yfpkYCNHQKKE
	 f31w5zns7Ocy5tlyclCwO/bQYdidsJYKwps9r746EemXnUPVRnrJ6skGSkw8oXYPr0
	 AE+CWoW5Nj/9w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEBFFCD98C5
	for <ddprobe@lists.linux.dev>; Sun, 14 Jun 2026 09:46:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178143039369.15151.1293877532916836837.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4f8b12094cfafa10ded8575a9e912acf9c4db4558eec3df151f9e7f32dffa4f8
Date: Sun, 14 Jun 2026 09:46:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781430393
