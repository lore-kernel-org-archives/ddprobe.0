Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E22F8222590
	for <ddprobe@lists.linux.dev>; Sun,  1 Mar 2026 16:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772381094; cv=none; b=pdfMSCGz83BI7GCu89tT51vA8WiIE0F0VTBs3FsxKCxbSz9UXD4zvSJ3COzd2IzOFbIQSqdaDESby5xCquqN346iw2X1+SD1Clb1hqTje8a3tPVKmroyNyeWmny3uN+87tovV5lS0kMxEJMasrDhRLQGLq5eQ55uyIliFV3WHXg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772381094; c=relaxed/simple;
	bh=xlZxmaHnQeNezAiYtVvTuwTPPveGZqNppZNKExW3Yvg=;
	h=To:Subject:From:Message-Id:Date; b=uiOvt2/5caz5rhIEgSylLnXcM5R/un0Dh8KtiLJ9XtHYgeZS0hN0vJxAFNb5tTbBlGRwM/2sZmgirwDtc9lmzSCkIOiSNo6X6TQ0abSR6ayF/h43JzXXQzD9+Xll+8E+eYlBU34jBaFqwck0TfVhIk/6bBm6uhlYGjDBzClZlJM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RQZGxine; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RQZGxine"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1B63C116C6
	for <ddprobe@lists.linux.dev>; Sun,  1 Mar 2026 16:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772381093;
	bh=xlZxmaHnQeNezAiYtVvTuwTPPveGZqNppZNKExW3Yvg=;
	h=To:Subject:From:Date:From;
	b=RQZGxinejCbvB5K89gYhSixusPEVWjLbD++xetjLBsZeJrZlc5LnmsSgOmo0+SAz9
	 J6gpl+SrbI07SelHevNm1ViSeNqsSnp0Zd2WBMofHmiTo8LLG26/EnmcAl954mUiWb
	 azzdOpvXzVFYXu4Bh+fhxPLepActh8Ys3AFqnw5HqCuS84eqowmIDPETIyyO5RYztj
	 +ciy0Btw+SPdzqm1dPCOZZ189t4hcC3PU+Pmn31I3sYQ9zccBI2C3r7VMUhyEsd3xB
	 +ENW+HjzO3S48AshDAhBEnbRENGqxUMUr80MRYirebqC+h7Q+KajZ74qMqEJXm2H74
	 hGykeae3RRziw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97862FD006D
	for <ddprobe@lists.linux.dev>; Sun,  1 Mar 2026 16:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177238109361.17490.4834803922080984548.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c16bb4a4bbc8e8e9b776e6006a1e7e7bf140d7a52f7d6973ddcbf114bb3a24b9
Date: Sun, 01 Mar 2026 16:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772381093
