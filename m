Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F21126B2AD
	for <ddprobe@lists.linux.dev>; Thu,  9 Apr 2026 01:45:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775699134; cv=none; b=nKWHI2r9vMyqpo1O5HhqKtA7dIiep6GEwx31IyS0ygahDnwD65P0uaausyTjMB4OwH8xfkm8dayBFOrkxisDGe22CtH6HrHkF6p9uZQ/hPJ/WROZw9bsSv8XgcueqDw3RPmZsIAR006GLSKTki2pyDNamZX3f9F+rRB2SAe1oP8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775699134; c=relaxed/simple;
	bh=e510nqAx1beD53yoU/5KP7O/8vFQtvVEOnsKOVYtsOA=;
	h=To:Subject:From:Message-Id:Date; b=rUC869QeQ1p6LgjnT20hQ839w2e6+JNRddwMuZn/JaW8IA90LFo97wtBfVO/hnULtZP0RYiHxubH1JbIsJCPGBdjAEvj9gvnqvAzJjWmYjPrUX3Jwb4bSuO+8EwP+2pH11qpFhjIike7SrLonGo0q7FqTk4sAWQWDJxBHg3u4n0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=e6VaLhU0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="e6VaLhU0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D46A2C19421
	for <ddprobe@lists.linux.dev>; Thu,  9 Apr 2026 01:45:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775699133;
	bh=e510nqAx1beD53yoU/5KP7O/8vFQtvVEOnsKOVYtsOA=;
	h=To:Subject:From:Date:From;
	b=e6VaLhU03Da9qO0M6bL156IyYFAf8YnofF2KBrUVS7LI0grXv0CREp9xaFwsVjN8t
	 WkfsmDlT8NB1TNowMwA5XZVbl88Lq0bOsgD0U7Qbd3XlAqjC3pPG9EkD36mtv9LLtM
	 XgFES0x6K7Upyu7sVABRLniQMubSjQd0LwhNVi9S2RTKYzutl9L9kKlv6NxtJKYRVa
	 GNttuJQKsBRpZ6gWFim0W9M1j2AmXJ8jNxl4vRoDmwQDL/hMeIHeyPk1Jsj9Mg9EpN
	 lkDb0quE4Z+RvD1pwj1cJ6d1cf2CM0kN8JHlJUOy6RnNwxmKm4X43Df5Wd/0VyE3gM
	 cqsaLXhr2oqow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BDF7110FC466
	for <ddprobe@lists.linux.dev>; Thu,  9 Apr 2026 01:45:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177569913376.2613.2654586272039766371.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: de4a13f75b8e332508954e592758e328f6d429295a8fe22fd9235bb281abdb33
Date: Thu, 09 Apr 2026 01:45:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775699133
