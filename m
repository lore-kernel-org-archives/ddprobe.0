Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 380C3191493
	for <ddprobe@lists.linux.dev>; Sat, 26 Apr 2025 02:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745635794; cv=none; b=IatbvGPyLTu5U8fueT2jjvpwhpYyOIqo4vScfb1g3xg8I2+AiDK7O+/uq7mOO3MLFGpa72HZf1n9x4ZwxdSDgggGviQfFu0IQNyulP+wUUFLiLMgmGIG5HF+4d9Codlwh3HHa+Ibi6B6fjV3U4r+85xT41EpVqDCtcA/680VWHY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745635794; c=relaxed/simple;
	bh=736KxJd2RWGQcFJVeLLlU55aBFdJ1kgXfUSqiuNu+Io=;
	h=To:Subject:From:Message-Id:Date; b=EOT/UjOOHcPTti+UHrVBvVL/nt0pa9cbWVvGCoAilG6VTB4gGLl+x06VlxZLE0sjABnK9Aivqh0pHsk1nq2k0fQ+lwfM43sFHs9vkZOUM/i/uDBiF9CV8HYOeLe15krxhSII8mxztZk9N2d+xJoK7pjzrcGlMFiw4KHztyVa63w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kiQTnYNS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kiQTnYNS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A647BC4CEE4
	for <ddprobe@lists.linux.dev>; Sat, 26 Apr 2025 02:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745635793;
	bh=736KxJd2RWGQcFJVeLLlU55aBFdJ1kgXfUSqiuNu+Io=;
	h=To:Subject:From:Date:From;
	b=kiQTnYNSj+orhh1I8Q0inxohq75izvLhPq+J7QjuNkIxUkOM435pQMyFQx3sJ94zD
	 vZLg2aleosJCiMNqRQ4OKKFBUKyHt24+65Erv2ptS1nPWr/ddzUl+47Zetub+oY/k5
	 UjcxX2BHd5Z0rqAnOnHdGao4xZ/gMuLvtNK6spKSu7cKVEWYlKgEMZPBiqGMXFRhx/
	 /rpuXQgxwJLANLkZUjEGL1ypX0+fBBire4DMiA0SPIMMMfouuupZE5Om9cGAW3Mnjr
	 rdQjOzl+o1A3C/5P5WPgd+HXGJJc+gUQGfDFDyzojKijMppqWjhL1CaA13q0iz7n9m
	 2em1X62A+ItBw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 918F1C369C2
	for <ddprobe@lists.linux.dev>; Sat, 26 Apr 2025 02:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174563579357.21159.5149464571252251940.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6a521a9febcce291cec66248bd60de95dabb0ed5c0e59063a6eb32bddc299377
Date: Sat, 26 Apr 2025 02:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745635793
