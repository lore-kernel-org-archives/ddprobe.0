Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46425374E55
	for <ddprobe@lists.linux.dev>; Sun, 26 Jul 2026 00:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785026434; cv=none; b=W54inCUbGLdqSxOVUk1fpjptCg5OoPJvlJZZYu4W+CdoQ4d785xseUuf20DTjNhRn8z6Lblrg3ORwmZa1Jr/fv8eUIUEJDvIm1tjn/EBB/U2aRuZdUZlVd0WUl6fHqgurX5+mcTI10LKjEoevY8b1TCeopykN46lroOrNqrVtbg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785026434; c=relaxed/simple;
	bh=BuoftGBpTy94f1wIpCMy9com4lJj5CyYnrgCIBTGzas=;
	h=To:Subject:From:Message-Id:Date; b=TiGI9oOgevmXss3ugGejb6BH8w0xQHnYUnKuXI/shn6/seaafNXq3m8PiwPSoAzmbv6qHV5MW3VJ24XiK2Ng6GWJJIBOfRvMUHcxqYi6vutXNmdYU96si4Sbgx8zgPo5Mta1bSOCFiTElp/AOu7VhqXvR94GVoQE0TqIJOEVvzY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ffRWL8PN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ffRWL8PN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D122DC2BCC6
	for <ddprobe@lists.linux.dev>; Sun, 26 Jul 2026 00:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785026433;
	bh=BuoftGBpTy94f1wIpCMy9com4lJj5CyYnrgCIBTGzas=;
	h=To:Subject:From:Date:From;
	b=ffRWL8PNY5i2L03xlWgmQSEhDjwlfUfeuR7HObsZUazSZwBS/Kffw+g2ifB0Cc69Q
	 uFAYfP87jITWGgmAHSureuQHuXzXt86L9kSpwXXl7bggqObhTza9fWbG3LbshsMwfO
	 mQ+XsLAPjfOpxAHldU1KgjjQLeBxD8WVHY2BIJrr4Rz8CnD0Z2seMl56YQUmUQ1haM
	 vE1fjenlaludI1Fov+brWqVTTSDwlps/lmmApsXkj/C1qlU8vTMpsz98FPc5BY/CDw
	 axcBPuFjtVFiFSNbLlnz3oEUV8bvAVWFi5t3ubTos7pgWUw0fT5YZw4YUvFr5a7bik
	 1SAq7p6/1XXyA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF1B9C531D0
	for <ddprobe@lists.linux.dev>; Sun, 26 Jul 2026 00:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178502643368.26696.13565959657532496030.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8826ed8084b2c3775e3b0ff55f46b5874f94ad116ad7732940dfb234a56e8a3f
Date: Sun, 26 Jul 2026 00:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785026433
