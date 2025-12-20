Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E68B207DE2
	for <ddprobe@lists.linux.dev>; Sat, 20 Dec 2025 16:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766246634; cv=none; b=e3F/mlTZfPQnReYNs0eZV5m/Vr08lq0CVn7FkKHpbnoL8IgCRwk2MvTW1LH2rcwwr3svzwhjtQuG+k99R3kvjFDLYU1TShQ1RhrOP6YCgQn6wOb+qG6BHzQAsY/1vSP9c62nCG801qAG6E1vOXWBtB8531vbx3BdUGq+Rlbnn3c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766246634; c=relaxed/simple;
	bh=hgAwEe+TX0+KIhORofifoFCrfczcrmnGcluhup+o3JE=;
	h=To:Subject:From:Message-Id:Date; b=OEy08yMdnxDw0JqaSWf8SrjbYxBFwCOW1mNXTAlDyYl4fDbrv/oGWhTTYOPcM+ncQr/iCeB7N0GX3S1uFJ9nDpQAHky3XvhJvYrrYFIpyCVYrYRCR0TNl4yT7Y987vGze/ISP6T2kDnZWUFt9UokpKAuPLOE1zP5UFSKzJxBHyo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cQ4zleof; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cQ4zleof"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4682C4CEF5
	for <ddprobe@lists.linux.dev>; Sat, 20 Dec 2025 16:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766246633;
	bh=hgAwEe+TX0+KIhORofifoFCrfczcrmnGcluhup+o3JE=;
	h=To:Subject:From:Date:From;
	b=cQ4zleofPZlcSK1wty2mFGrZjcnLI/WhM6wEoKvF5Xx3EOC94wRzwd1X0L6niUUmG
	 HGNpXr2/4E3fUGhXWenfUnxNI02Y/J1SuRjuBTQuiNufj4xBZYELkQGjVL+En8cr2q
	 LEMIyKx1tNKHcTPMebOKrV9fxWEktq2/4rYPn+DIm3BLIesBzP+d14rGwmv08ibWvd
	 SeIZSUBhaxJeE4FPi9llvRY17uS0Nw1qqp3pRkdAffdYeb42oTouE0Ehncq51ne8+6
	 hd1aEkto9HHYuRNYCAbiZOxPo1jjcw0ytb6hxL9AU/fh6eMdUmIWsbCCsSPmk37zhu
	 vQ/FsPnwdnCQw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 904C4E668B4
	for <ddprobe@lists.linux.dev>; Sat, 20 Dec 2025 16:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176624663358.16247.897279713542497838.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 011ec83838a19c464bb656a0a6169fcbc68d08bee98a8321c9ac3c3e2f7d1120
Date: Sat, 20 Dec 2025 16:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766246633
