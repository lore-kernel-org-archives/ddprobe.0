Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3EF0512F399
	for <ddprobe@lists.linux.dev>; Mon, 21 Apr 2025 17:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745255994; cv=none; b=KxYJh3xGeoF/9b1tN4a9s+FqZBDMpjRC6oW6bVNBUTYL3NemxW6t6LtR84bettHSE1V4aAQyACJpkHp2JaCxtiX4zKASl3z4pJ6y0RvzUapKb7Mz2nppJYED3WVRwUx9cn6BJuzECkMUdHiXuylfGRiyB129o8TShGDjmFLY2og=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745255994; c=relaxed/simple;
	bh=FVq6FfF5HEdwHrcEQLKJyGhcWgKn1ZnGMJW/UwP90qc=;
	h=To:Subject:From:Message-Id:Date; b=dsnCxnxlOE0TroINzkcbKK7VgFJNOWDq7+/JIr8MIqFL8baKmW7V9hePuN4Hz492oOaE8sps1xDKz/8nDZu7CVgLEGNPUNwyn9651tujg39HRwF/gPb4itHD44+FfRut1xZ+i2Qyzmn0PC6eLXCYfC9MhQQhXoFi1SbMXL6W/ow=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=i2UmpHlj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="i2UmpHlj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A600CC4CEE4
	for <ddprobe@lists.linux.dev>; Mon, 21 Apr 2025 17:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745255993;
	bh=FVq6FfF5HEdwHrcEQLKJyGhcWgKn1ZnGMJW/UwP90qc=;
	h=To:Subject:From:Date:From;
	b=i2UmpHljiwMJbhHb60WekALeSTqCjkUWQLOy0Pw0gBRjHZSQ5NPz7ssAaRj7pMY/O
	 9hmBfUjT2lCPjXUygtyGbTvud5hBABy7zy9GJcyXgVRN1AGlflVt6r+U4Gy66B/jjm
	 esy5H8ij1K+tkPwkP/4VnEmAHHegFS0+4HrYl8pB1XBoA2OIjhT/a2buosYLq8bX10
	 RQraoNZ8C/YSq8VSDYCPcWfjUIMqGD5vv8czxYsOVDDnNK7AqfGf+LijJUpDvUMJtH
	 c0iEEIW2C7O1G6EwuUGSJvW25Zxnbz3RIXkHovSDiC+Pgq/r36bVWigLCRciRAopHA
	 U0botcK4tCH4g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9481FC369AB
	for <ddprobe@lists.linux.dev>; Mon, 21 Apr 2025 17:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174525599359.23522.2993803448761448852.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4a7c90420e2e5384a70048d006ddddb2aa62c999dbc2fe32f17a5050fc2bb3f5
Date: Mon, 21 Apr 2025 17:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745255993
