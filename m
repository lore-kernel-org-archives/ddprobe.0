Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E51E131A73
	for <ddprobe@lists.linux.dev>; Sun, 28 Jan 2024 20:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706475497; cv=none; b=WmFO5NO+WxHMJq43zK8y6CX692I2Q8V/S4fMUYFkzc48h8Kp9VprMev7bYcCAZMUgaipMxIrk4kb1bMKOUodR/cKvv8ftl4x053w5gzM2N6eLIncr2L5ITurFyako3IqwE8QiKz3P8skYqYLygIZbtTSCj3hEYy3H5FGKUzwFm8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706475497; c=relaxed/simple;
	bh=4RK3DlUDEclwIntMjO9uBoCL+rDgTYGwNa5vcV+B4RY=;
	h=To:Subject:From:Message-Id:Date; b=o3AKlRlBoCmnzFWNJQsrn/+gBb9A6pkn55nBDl4vi+qTv5Wa3FwG4DeCRmqzuGfTtDQs3nn/0WtFCKBdWTDfzjJlKr2xg5yWXSwKdmtHO9h0h/adfoAo1MifVrT6OAeAKI+QuJdUqZCEGozdqrlNl2m7q3GZfhvTBLWqF4PXkRY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SrsxkNh+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SrsxkNh+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 78051C433F1
	for <ddprobe@lists.linux.dev>; Sun, 28 Jan 2024 20:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1706475496;
	bh=4RK3DlUDEclwIntMjO9uBoCL+rDgTYGwNa5vcV+B4RY=;
	h=To:Subject:From:Date:From;
	b=SrsxkNh+CdH9QDAEG0nT0Pc+XdLlFB6GbgA0gJzALsdQfrAS0XitNftiNEgeZewJf
	 Wvw+QgE6e307IeDx41xywm/fS9i3ozFrztQ8Kmak3xdSogSX+zUcu8tVE/KZRiAg8a
	 PP3hkXpQC43vaaU+J+dRjAQmGyQ1J11k/HKJYIDKUh9zff9Vg1z/8a2TiRcFZXLLDy
	 f8ABA7VOli/ywdJHNtuRL+2gtZ/aOmAyHOmzeZLJgcYp847hqQuYvkj1fp8NYniisH
	 H/bU6O0Y9taC16sErWf4ClVhSn1xmC2BDYqvNcsuF78ZRu+AAC99GIMAJz1MpEhNcB
	 r8wvnoP2W7wrQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5D543C47258
	for <ddprobe@lists.linux.dev>; Sun, 28 Jan 2024 20:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170647549637.11865.13915072040493439861.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 543aab8d914f5d6ec72dc441dc50c85433af2d91cede127feed64387c61ab5bb
Date: Sun, 28 Jan 2024 20:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1706475496
