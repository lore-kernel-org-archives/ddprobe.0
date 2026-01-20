Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2959833123D
	for <ddprobe@lists.linux.dev>; Tue, 20 Jan 2026 16:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768928034; cv=none; b=Id/1I+s8bFb61TndT2RL75Y0vdv1ga7bYvyz+eNe3hyOxLjS0/I3b9O0Uer9kKsCu8mpSN5I+7tfN2Vy6gGLrLCLbZmWRjmUFWAxfpWydiL558cancY4otA2+xPQPZAZYDM5Wwym5Tz5fl5EzCnTrXpfY5MOQO0UfYCwtFEzHek=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768928034; c=relaxed/simple;
	bh=k1dAW6RKFUNF6vb650YbnQkfIxpBeeAhXGcbipYFfvs=;
	h=To:Subject:From:Message-Id:Date; b=N0W+FLxIBzerZ6jVcDfpvKmQOqS+y6zxKtxhgJXgz08lHAM0YjkdEuNQK/3v3aUay9DH7LmJKcvzYRYYo2GdF79VWkXmdmOLGcjGIc1WqfvLAZ3peg/FJo3e8ee4Pf2dgGg1ppBrTB7vVAKIunlY8H4iSAdKJbm+zLk0SDWrlDg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QuD+TjrA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QuD+TjrA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D649C16AAE
	for <ddprobe@lists.linux.dev>; Tue, 20 Jan 2026 16:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768928033;
	bh=k1dAW6RKFUNF6vb650YbnQkfIxpBeeAhXGcbipYFfvs=;
	h=To:Subject:From:Date:From;
	b=QuD+TjrAll01/Uq+u4DKOz4H9yM9/TDHnKXmYCTWqfsNHDyyspA/36wWmNX3piUi/
	 fB11YsvL8S4hsfPUjYkn+IR8VLtGnI+4cCyRUnsEJhOhhSdBYlApAN4jneHrBTSw1n
	 r22YMCGEBwBKKVDePm9XgWAPhb5W+WkUfHAvkYMJOlLY1I0Bo+2RVxwICNen/fb6un
	 MzeNKXBeSw3nMWgrzgYaniXbZewFwcK1/gah0GdL0pF3l2QkbUmOKD3wJfsjmSaXpf
	 vXMpsRFN6Nyp6jX22/w1F3XWSjAx4FeTMr7so5cM3LeW/+7Avn+Wo14rl7Byvqf+vN
	 rBZg8IsMDS2JQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FC51CA5FB1
	for <ddprobe@lists.linux.dev>; Tue, 20 Jan 2026 16:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176892803357.11748.8217311282124004874.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4ce81ab3ff32403a4e57c40ade53f133e69757d95dab0608c99ed4dcde8b9598
Date: Tue, 20 Jan 2026 16:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768928033
