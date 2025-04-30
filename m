Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B7F729408
	for <ddprobe@lists.linux.dev>; Wed, 30 Apr 2025 18:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746037794; cv=none; b=GWpXPODRUJHLm57a3LC/zxXKs5fMXnejXxqtyNlpzWC+fJ8KrBgDtE2lRvjGpuQl24WuICaLnyhSrshjhXi+u8cwUbuxcPApoTrSLKuAo0SQt0iVg4hJozQIe7XRPuBgYbIEsSfXEJfUi2q0Fn4BNNGaNZkNj5HFYgWiVpQSQXw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746037794; c=relaxed/simple;
	bh=zWLp8OeAzWctYAR7TXvy14sTAts+2oyEcZlMrLil/gw=;
	h=To:Subject:From:Message-Id:Date; b=nD6mBBKXAlwxMjLK8S4bN2YefRPROV5HZ07QHwGXCEML73H37SFDqRAyGW2JHLLEFtzS++Hbm+YKd5b5LHPfr9JFMobD2ag8Vyue+PE6GMA8M8JDqA8WhVgHZpq1siosEbBeyuQaN7zyrBTjB2J0X2Vg8Nh78xYefYMkdBbTByQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Rd9zwUwO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Rd9zwUwO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A33C4C4CEEF
	for <ddprobe@lists.linux.dev>; Wed, 30 Apr 2025 18:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746037793;
	bh=zWLp8OeAzWctYAR7TXvy14sTAts+2oyEcZlMrLil/gw=;
	h=To:Subject:From:Date:From;
	b=Rd9zwUwOcliboJW3Z+msNaS0aZOz5TC8mp9dyHqctpggsLEuTawwiDElbL9Z0YaxO
	 aJYkAoRQEue+S3Nq58kaRL0wS70KH+tEGKP8MSuTYcyLsUvpXe4m1NzNvXgcM046Xo
	 fZWpBLEOewCm6KBVRrStnKFVY8PznXAm2JRx/yHsMydZ2In3qrgnmOqcYfSwCx8cCX
	 uBtfBcbL+XQfCLdfRimGyLVSiPThEGaYH47LbSE0tp6GMR1iXU1InLxQ1ZH6a6PkVv
	 BgkD9h1qL1flJIWyUQTYsDxXEbx8XQz1x1tq0q5OQwpZK2aKQPR1YfkJq1Gf5BsEPM
	 Vv1Ai2urzxehQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91D5EC3ABA9
	for <ddprobe@lists.linux.dev>; Wed, 30 Apr 2025 18:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174603779358.8967.7536441085651445613.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 97b6117ca5923ab94b3665b5ea18911bfa459061e32d3d9c88214a4335d34b6c
Date: Wed, 30 Apr 2025 18:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746037793
