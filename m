Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46A483FCB11
	for <ddprobe@lists.linux.dev>; Thu, 30 Jul 2026 10:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785408034; cv=none; b=b8eZvyTJhZ2Cnlr4JZMaXKRH4pvT4OJvvFSYT4rFE5ckuJTtgvHtvo2T7bVFcUN52ALB3ye0f8e7aai3GhNtBwuSSZv7sBQ68eKHtAQaSOjzJ9IgDpcKvR5P3rkT9xS0J/27N4YCQlewbClFc3Y14iH70svGnUjRjc5DiN4PAf4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785408034; c=relaxed/simple;
	bh=gd0mpaLoIxFC4fUWFXpQsQhu7VR56KpffqHZkJ3rbm8=;
	h=To:Subject:From:Message-Id:Date; b=GDX3qdwySQV+3FsPaUXESYKttu7jPALa3I2vn3XSa0eWPFdZbWtRfuVjrt8ySAI8ojjLchaPzplbgGYcsBlgSyJ7YtWHd05jwZvLnCT/LT8drDfV8NYbXEv36lQZUicMTWIO0WY1IYrTPaavc1Jgafv8tyQnmIRT7LX4hMWxt8Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=elz4jEj4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="elz4jEj4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CEBAFC19425
	for <ddprobe@lists.linux.dev>; Thu, 30 Jul 2026 10:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785408033;
	bh=gd0mpaLoIxFC4fUWFXpQsQhu7VR56KpffqHZkJ3rbm8=;
	h=To:Subject:From:Date:From;
	b=elz4jEj4ccIMkoBWLfd9NS+Ql0qy16UDbMcZ7t7MnQRt6L7yzz8GMaoOt0bO11woE
	 CLkpV028/pN/fteAxhUbS+wsw/j61Rln2uvvBw6y5PMd1JcB5cqoY6tI8S4Be94akF
	 dfoIynle6cl+nVzpj9tJvCl4ZCBQNfyknadtEebNDJgMint7cVmEFcoEp0QNcdKeQ3
	 1lpJLbqLZfD2QYah2gfvrRVrG9SHIlda5VrZCBfY1rBwnLh9M829YUlU3hyR0/3gk4
	 KNmFrhL9j4CDrDdcpzewAJKPfUlNr35Q3NxjKoOlYeTJ2JOeXLqjr8D1DSky6eTpCa
	 67wJk4vttia6A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A94F2C54FD2
	for <ddprobe@lists.linux.dev>; Thu, 30 Jul 2026 10:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178540803368.4913.15278550066704090743.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 149111feb694bcdfe7e9cbe78748e2e32ff5e172b065ecfd5f549638412f6f30
Date: Thu, 30 Jul 2026 10:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785408033
