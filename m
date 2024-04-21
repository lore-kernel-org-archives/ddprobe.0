Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 80E0F645
	for <ddprobe@lists.linux.dev>; Sun, 21 Apr 2024 01:00:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713661223; cv=none; b=CQwCmXYKDymtJfFz9cyyclN21+RSr0DZGU7j5pB/ogHW0IZBagYzg83kU/4mE/5i1t8yjczUO6XBtDHeywPxj55ZioK61iJIRMw9bLwRJLkTS7exD0ngYN31+EWMcnymIhCvEpvYSYbgPrM9fQs9Az+5rt1loa3Rp87eAEkzOtA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713661223; c=relaxed/simple;
	bh=kIwQ2atawFtvLAutMyRhooaZW4fk3EnqrWN6AJbQW8Q=;
	h=To:Subject:From:Message-Id:Date; b=f9fC0vnkByGjkjAmqGyj3EwlmZv/uMKkOS2RWDOMCNvtGPz9iE6Mkd/+oTDJQF+210RAQYYlKjCEACJ6XhrpD8Ku4wwsDBnM6MpX6oH3sfV1sAka+fMPRjQCJ8K/jfbJlt2YIWeFZdHFjSv8AzVNBiVbj3PGu7KkNknip9ehB9s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=g9AYK893; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="g9AYK893"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E7B0FC072AA
	for <ddprobe@lists.linux.dev>; Sun, 21 Apr 2024 01:00:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713661222;
	bh=kIwQ2atawFtvLAutMyRhooaZW4fk3EnqrWN6AJbQW8Q=;
	h=To:Subject:From:Date:From;
	b=g9AYK8938/blxCFcPZxZsXIXXPp6UuWXprPRvbaarDqguGw030hpxYvgEoYRVtPI4
	 3u9JLXH8z54iZMRvZErHywSUBrmREfBBD96enTN7TOw2cEWYB3hKqKUcW/+EMSxKtq
	 rmMl/V2NrQ0tPBQQJd1GvM257zMcvtACfLVVh6bvQMnBjhA3x8gOsIIjCLQc8MgkVE
	 Ctb2+HtHZk7lFc3dm09O0JAmez0v1b4L9/EaSefYKGHrC+E/A72OQNvgE1IoaeSthj
	 mkI6/9C/TRYxovb26ICNxuzSO3DIm64YG1fz/8IIgmFe7kYISFGfPG/AQ0j2KdMAqM
	 DC7G1LXIVLS7g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CC173C4345F
	for <ddprobe@lists.linux.dev>; Sun, 21 Apr 2024 01:00:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171366122279.9971.8693635292429968652.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 735d23f21b627bf120abaa03ddc5e9ae1d0a5db0fc2988af4860856349d43c18
Date: Sun, 21 Apr 2024 01:00:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713661222
