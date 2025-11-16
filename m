Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C9962D9789
	for <ddprobe@lists.linux.dev>; Sun, 16 Nov 2025 16:41:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763311314; cv=none; b=ajPDF+3eA6ZiddcO+h8dc3L1MyqIkkj90uFqmu0xwdu6n2zOm3cXs29KedV7UwwaZkaEmlTz0ToztOFLMgOrxzIFu+ahXKsRUM114TBYoDOCElQz5vjZthxrJke8Mke8y1EMyXtlLEhN9lk/wbP8cz63o5XsTqDsXMx53LIGQSw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763311314; c=relaxed/simple;
	bh=uaj7+IY+kL6x3MrnPdSdRw+weS4XkFsDRDymBV4ZJng=;
	h=To:Subject:From:Message-Id:Date; b=D7YsOk9wVIcTMhdigjxO138WN+q2nMbPOCOG+ok0phkkEFpDUhqrW/9MPgxrNLFL5Xsf3OwvLcBLJJWtLrNSI+AsmOEGSh0TJ5jMgycTTFjk2fs128I30W6gvIp1yUC7H1PJgLQqxXGAJ7kzlGImV5FDjyo10fx5nwfGTELonmY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UXR/Myu8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UXR/Myu8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C3059C116B1
	for <ddprobe@lists.linux.dev>; Sun, 16 Nov 2025 16:41:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763311313;
	bh=uaj7+IY+kL6x3MrnPdSdRw+weS4XkFsDRDymBV4ZJng=;
	h=To:Subject:From:Date:From;
	b=UXR/Myu8hVPpA04CCtMGM/KUdoOQQHvb+xyQ6j7NmigijRrQy3tPsmzOjNJlkjZK7
	 vcpy8hro9vHN9i7pAXry0zvG68Gvmy+4PlBjlHh6BhavRWEKvrHHHtFjzpxT0coNRk
	 +tsgSU3DelbvNCIhiJAyvweaInSdYaX/qZ6xTqOjVmi4kE/yzOXsBAuBHDV/795+p7
	 s/mR61x3t1Hp5jUh9rS2NgE7FGXt/OMKN8C6MlxmqSkGBZeKaOnd+r53kzO7TgS7lb
	 T/VXi+PXhqk77+FVzX3WpXQzO31B/UMXYirTzBlalXfQKHvUBR0HRgmCVSu0+Hj/48
	 1e6z5EXQbpUwA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFFFCCD4F3E
	for <ddprobe@lists.linux.dev>; Sun, 16 Nov 2025 16:41:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176331131364.10954.10433458578567560183.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a8921ee45f6e4383514f8c46c0d83308d29dcab089665035312d0ae267478b0f
Date: Sun, 16 Nov 2025 16:41:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763311313
