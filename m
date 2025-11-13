Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2EBD735CBD2
	for <ddprobe@lists.linux.dev>; Thu, 13 Nov 2025 17:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763055594; cv=none; b=IdDAgBjNo6nXED3f9Py+/zDZIrmjQw0u6ksDZO7oqgDd2Tz7//2qO7l0v5eDh2y8NJtY6uO2Ow6sl3anbLMkOGwR/yL8C7h24xBPAtPoEtZ6XYnb1tVYXZ6XgXDowXMBEW/PXTPTnCBCxlLzMhFVuKdn9RCBQl5i+BtNf3eKlAo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763055594; c=relaxed/simple;
	bh=IH0YPIW19M7XLM6lqBeGMp5KrqeJm590z67sXQEtACw=;
	h=To:Subject:From:Message-Id:Date; b=MkNZj0lKKaNZ5hH84h/Ww57DsNVbBBt+J3DsVXAhyORiXlBW/gpVEw6IR17sGQGzoeiWZtP6hJeDPHX797bvgteNyLZ7dcsLPko7+dG6hTJoGLrWrgdLIx1/cr4hHG3Y+Dq+PVBHGrZe7uPNb6ybqbiEEBtYHV9FNxUDmgxFJBA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MXMmAIp1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MXMmAIp1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AFD69C19423
	for <ddprobe@lists.linux.dev>; Thu, 13 Nov 2025 17:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763055593;
	bh=IH0YPIW19M7XLM6lqBeGMp5KrqeJm590z67sXQEtACw=;
	h=To:Subject:From:Date:From;
	b=MXMmAIp18gUyATgWfGJBv78fGybzNJx3MhIcaqWKGuBET5d6ay1dOy5FFxbxG1vly
	 UMZ3UAgOJpz0E8Kk3lTgsY19MpZXHEeuMilChTosfDvu1ynMQNtKFhAWEqnoN6F3It
	 3h7SXd/wvXVVXsBXuHRAb8R/PTJhOhNgatM8xMi8n6B63NPVksGp56HQg/x9kWmbey
	 eUWT8zJjUFfHiY4R7QwUfab7O6r9xR724lO/LK+zd+h2fpuObN03l3nIPB1L4tlwOn
	 EzXBiUXD9fJkIkXzy3dQSPhOBGIXd9ALbIj+uIQVIIwxAMzo844vEUS4q573Z3w9Iv
	 HMU5RWDSbRJpA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93B02CD8C9D
	for <ddprobe@lists.linux.dev>; Thu, 13 Nov 2025 17:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176305559359.7670.7550568924256778761.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3417918c76cea5bdf40c062a97d1430ead0e98030b821c952a2847bd57650aea
Date: Thu, 13 Nov 2025 17:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763055593
