Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2AA1723B62C
	for <ddprobe@lists.linux.dev>; Sun, 15 Feb 2026 22:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771193094; cv=none; b=gg4lcisQy2vl5tbS5q2KLrZCQFSfr9i136S0E+/gj2+lVGzmJIlDEA6Emfr5e2EBII4hpEGu3cJIwIv9MOJBzcLHFTmzf4+lmMMUJU73qomci3WqxOOBUdEhJuebwFYY6p+cbpgMnxDDiUozTWX9TmKoIPheUDQvleqzd192odI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771193094; c=relaxed/simple;
	bh=vBUeK0nmAQ8FhxSYYSr6Mxl1tvrv0u18Ji2mS3z7DCU=;
	h=To:Subject:From:Message-Id:Date; b=Z75idTF1VZoFMo5iE34NK+yTj/PN+luJ4GJuOA3RZiv0cDtHiZvOIsNEBJQeXCienfd3VAdSd6CXBQb2hEO3jF9l8xQc9XIzud0fYdQf9FkuLhAEYVoz/lBjA4vXHKIahQWjOAiVNtarnP7OaUbz9mzIOxjqfKcLNZw7Lgyi9A4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jg4H+XT0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jg4H+XT0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0D37C4CEF7
	for <ddprobe@lists.linux.dev>; Sun, 15 Feb 2026 22:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771193093;
	bh=vBUeK0nmAQ8FhxSYYSr6Mxl1tvrv0u18Ji2mS3z7DCU=;
	h=To:Subject:From:Date:From;
	b=jg4H+XT0CGah8VKLkHXQhk+LElJ9bAOoNeKh8/RrGqA+AWLh1MOZAHCjBv1uR3SRR
	 WV3Vwmn4W3Soc9A1gzLCb2jcwpR0dTwWbwGO+eMDO+yfsJBKaYIFH7l2WY/eUN2QDL
	 KKVHDuvXUHpN53M8yGGdtfZwTAADEy4MQ4u2zAHQORJgrz79AKiDgYVd1kq/uwzE+3
	 0WA9iwp8zAKS0MnjJPRpmattQ3YVOJFWpSO3sqpg02ZAbntolJXDTqKx399amvue+3
	 zwoM77YeA4DQ8UtfJ0h/04c3GRJWriOTJDVllFC0zF69jd/ETi0+EkafaJdzvROBz5
	 4XxHsVXHFjQXg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98DDBE63F19
	for <ddprobe@lists.linux.dev>; Sun, 15 Feb 2026 22:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177119309360.950.964723660813570782.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b10c03526ea81148c9f5cdd2eb0e3385538081474b414418bad158e26bf9548c
Date: Sun, 15 Feb 2026 22:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771193093
