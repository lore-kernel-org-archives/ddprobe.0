Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41FB0374A18
	for <ddprobe@lists.linux.dev>; Thu,  8 Oct 2026 06:50:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791442234; cv=none; b=XNwB9hiALiV6dm/psVASqx+2Q1MfN6SPIN5w1enFpITI4mkQyuqeXKAijjeuPnmAvbrYBoJbr64MzX5L6GAbRf3ClaTa6fniyhe1fI1HqrZr+JFkaaRAo/gK1beJZ7QlJyIoCdEXnBp9EhZmzc34AfEzYUJ/27NPzgA03qYcQFI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791442234; c=relaxed/simple;
	bh=1XF8Ol962ra+IouhlyGaHSAmrxLZAYSJMj0KM3BOkIQ=;
	h=To:Subject:From:Message-Id:Date; b=qtCfw3Py/dIrMMDGKN4eZ1WrIiOmkYXi0CgS8mgbvjk/b/NCfJxyREjTViBsoHWOGQPhOUBuqLNHmImoyxScJWHqQBUHtdw5q5AQUxuOPyVYf8QE17A2VIcdcXGkw2OZYv5vgc2nlHPUoLSIHMMXHypaNTPf23R1ZVE/PlZjaT0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eyks9TOm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eyks9TOm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1A87C2BCC7
	for <ddprobe@lists.linux.dev>; Thu,  8 Oct 2026 06:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791442233;
	bh=1XF8Ol962ra+IouhlyGaHSAmrxLZAYSJMj0KM3BOkIQ=;
	h=To:Subject:From:Date:From;
	b=eyks9TOmgF4TWBiN367SA2TjbqrQiuWBoXDlGXUfHTPRqZNu8jfzOqJOpIGzh9pHy
	 yi14QJgIFk9sZebqn/BnDUECWiyGrr+Dz8XnX/Wc1ypkyyQQDSwqO9/KaUBGMCCvvg
	 XCG3gCcPR3QNqkRMUtdDA0TWi7DouxFwI9hJOHyN/8HEbcQ6x1hCaRo/mlmiQbQKmG
	 xwMrLbAhAldo0+H4uNgL5EW0VdPUFiCmk39CHTOtrOw/i4eqhlMegaUG2taL4uxYcA
	 AVBF/9wJBVDOSz8rCnxW5ETMKm5HfkrzvGfQiXelFYQ7SrE1mELAuZ2cltnFjesIO/
	 FXLDoC5IhT4sQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9A94CA600B
	for <ddprobe@lists.linux.dev>; Thu,  8 Oct 2026 06:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179144223368.26568.5595218554636689098.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bcea273436e2315c0ee3d0f8e808424a13e895b55a7f0224e5715c49b3243dbd
Date: Thu, 08 Oct 2026 06:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791442233
