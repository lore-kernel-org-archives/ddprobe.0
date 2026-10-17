Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43C083C73F6
	for <ddprobe@lists.linux.dev>; Sat, 17 Oct 2026 18:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792261234; cv=none; b=HauWMeEah+lTjj1u/BJ4m7/hBI73zJoS5yTu1TV27D3qHrFJdB5l/4eRNlmI4F9U6KWiq+Pryi82KiTnxaTMDYDu0dCOvca4jV6eLCmir3geS2qsUVVNguoCtWkffvprIrfN09Km7HCRSVL+lUCsRs+8oiTBOzsYm3LRafmXxKM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792261234; c=relaxed/simple;
	bh=atr+N46iENKnJxMlEuIi4S86QakuWkIOPgc0vsbLmWA=;
	h=To:Subject:From:Message-Id:Date; b=XWaq8ybHrD0LAUVibFgjqs3QSU+alI7X3BRbL5lIn8ewoD7wptPhjBWErtg1jNr/fdLVF5p6IuGfimF35dhdtNvuf/XFE0lAARvxCnPG/7qgc8sPoCu36lH0d4yrrLn8kI35RtQyU8LNZdmevwKhp8k/TB+9eq8IJ1kYeqliL+o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=e/wKWQ49; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="e/wKWQ49"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF08FC2BCF5
	for <ddprobe@lists.linux.dev>; Sat, 17 Oct 2026 18:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792261233;
	bh=atr+N46iENKnJxMlEuIi4S86QakuWkIOPgc0vsbLmWA=;
	h=To:Subject:From:Date:From;
	b=e/wKWQ49yVFtI5+OAy+EwNqucQZO+xZPXxTeVyrbv69jy4J7aHcLvh5HGrrZp1ilA
	 jD4NZJWI4C9J/ptStWyIydb5SWOwOATsRDVCVIix4FkVej9MzDFCGZQmXvR7mt8ELb
	 +CFLpi7fqHxeWpVyKfAGiwJunQ9s8Eks9FBUsqGRjTWEI1p4yqcskFOBSwFoioQYfk
	 zBrox0kgxcIiDDEVRxw7i080VNHZiPuIbEnL3Ng2Y/0k4bMyHVWhp2mSwhTrHcGn4a
	 5ovSYfvtLgcdGi1NbDkmHerWugI/bz7o0fl8NllCz9eHyUSN3iWwrUC5f1maVxwVon
	 HSH02kXxisk+Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB3A9CCF2C9
	for <ddprobe@lists.linux.dev>; Sat, 17 Oct 2026 18:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179226123369.18937.4130831299006724681.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: face1f20a09acfe20b84885c71ed3ba2e196f18c94eaafcf4cffab4384f6d4cc
Date: Sat, 17 Oct 2026 18:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792261233
