Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7E29437F001
	for <ddprobe@lists.linux.dev>; Mon, 20 Apr 2026 03:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776656254; cv=none; b=ewtFanK/tl57Pdv6W9bUHOMxS6YTnBLn6mfc/pkAFD0jx1zuanQjtuW5sTBrdWhHDi5lL4c0zKbrqNJJ1vuqNPiJVBKKBNC+I5KPMRzJrZuhGbk0h25qTTf3iSzUUqzsFOtoxVFIMk6RJ17Mm0pzfNLniN9sa5xhXEimYI/Fwpg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776656254; c=relaxed/simple;
	bh=pcbMI0V5q3fdINDz6gMJLH61d6N+o0WpcL0rE38oImw=;
	h=To:Subject:From:Message-Id:Date; b=ugHBNTNQD/4uYfxYt4uG2lrqkWMUOGH/MDQ3L/rzDRWxpTo/HY20qIvYHwBGUxB5xlfmkGg3Lk7vVBMWuSr+OiQYleaTSOdfNCGkzGGGFrZ6Z/UEGwUOe/ynw2vInC5ZS/YpTfwSn5ZiBadEEtyzDprGtVJ6HrbQMMioOV2arQ8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=erHsE5lt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="erHsE5lt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C183FC2BCB0
	for <ddprobe@lists.linux.dev>; Mon, 20 Apr 2026 03:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776656253;
	bh=pcbMI0V5q3fdINDz6gMJLH61d6N+o0WpcL0rE38oImw=;
	h=To:Subject:From:Date:From;
	b=erHsE5ltRTnpuKTUW1YQTy9aVV9n3Xk/UQ41hQTnXn45MysXvQ0XWa0zo9Ym//Zm9
	 uNyLVjjR3b24DLmPl7xallEB49Fw5Efbk7t1zK/DrfYxxDdovHBhSK+CecZeAtObwI
	 /AdL2CceRBV18oBj9CwMfzZgwKPZB6tK2qVZFfzRcvgwOK2gHBNh2lTZXWYqOm/5rQ
	 HDAsNEmfrsn6hoOK8pbsV567CO/xTu4W7g0J+53fETVVKo90aP59wGh53xlxEr100R
	 mcdzyXo2kaPo3zKXNBu7ycGgfPQXP9QzcxN3+HjwO9lzlgBkkWm6T65TUD09X+k47A
	 YLFi2nRb4i2wg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACC1CEA71B7
	for <ddprobe@lists.linux.dev>; Mon, 20 Apr 2026 03:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177665625368.13349.1969281292363021926.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5d69f8d04caf9bddae9acdd81900faaba3806dff5d8277f8c52f35ddbe4dc162
Date: Mon, 20 Apr 2026 03:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776656253
