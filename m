Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 59A60356A38
	for <ddprobe@lists.linux.dev>; Mon, 28 Sep 2026 01:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790559634; cv=none; b=kmtYhC5pSngDP87hD3JI767rs2ZNmXB2MMfHOKXH11kh7pG2V62ow5Qja8aH7YiY/b6uDc9QiM24FWEqRAymNuNrt6DIDab1PGaWUxFJ6YiMPhdAqY9iGe2srDhwEYrMIIdt3m15HjpHTuJtGNuRg+tM34KpwrL/X0TP/A4zHI0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790559634; c=relaxed/simple;
	bh=lJ4WRhUx9BUchRrWzcsLQ+ZIJTW/rW2vB0y0ms5WzMI=;
	h=To:Subject:From:Message-Id:Date; b=nI9RaMy1klqHI0paTo3Ub7qb2nba30OOgoJaPjVIHCtTMl79CQuZ528+Pjzf1KU3XyAA04QbEj3FKjSuCq2jmAkJApqotBXPwww9/OE4voIWZivkJ4ROIeV2xhCu7w8gLyUogpi1pfWqaK1OfwOoXNGqgK3QZbhKkpI5z920N18=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RFMMb/cR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RFMMb/cR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD839C2BCB3
	for <ddprobe@lists.linux.dev>; Mon, 28 Sep 2026 01:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790559633;
	bh=lJ4WRhUx9BUchRrWzcsLQ+ZIJTW/rW2vB0y0ms5WzMI=;
	h=To:Subject:From:Date:From;
	b=RFMMb/cRgbcXXoRJi313G+c2KJmkfqdFPhnM6vhRKLq0PYPsk/OLkBzkCFhaxojEc
	 IMjo8aqVYM8MyD6UNPaVvqJuH/KyTtloD8EkXoxiAW6pvkZk9STANyJ6nl6rxLf1c6
	 G1jzZWfah2UeW6iuqoV5rI2VgLzDeCFSCWQsDnjZloEHWEtjV1BCJpUpizjICL1ZbR
	 A41rR8rmUQnABFfls9Z8vPLMXL7mWD9fIH7J3FCV74AHKZdm3Ic6gzAJU//lfpCHQt
	 XS6xFzTfT1e6Uo6yWt7aZ7+9ftQFjn83noBMsH5zNMhteK5vXmh0e8hrhBt92BtjJT
	 fJxDyTnv3Yf6w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AABB4C9830E
	for <ddprobe@lists.linux.dev>; Mon, 28 Sep 2026 01:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179055963369.30879.2775430646877361763.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 03800d313fa23fe88789ba4984743a797e3d33c0aa7f9e05cee6968efeb958f7
Date: Mon, 28 Sep 2026 01:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790559633
