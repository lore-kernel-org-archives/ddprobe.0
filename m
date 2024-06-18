Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 985BF58ABF
	for <ddprobe@lists.linux.dev>; Tue, 18 Jun 2024 16:29:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718728163; cv=none; b=cybbVkILoTkWXNxv8GMkmbx7u9xPeh3Njt63koyA6oGcR+NVzjUcpI0pUpDAjT4ih01KE/hDi2zvw9Nrouz4kv1eWYqBGJqWSM67xB9zYsXxrn6nmt6Y1cqacrJ1QBZVoZ7epRYdKDhM3H5tArqrDA/YbDuPdr22a8/X/dKHoJw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718728163; c=relaxed/simple;
	bh=fBW+/Hej4HeUwElrhCPYKzaVxwyZ01BACMd3jmobzWc=;
	h=To:Subject:From:Message-Id:Date; b=iy/wqoiifHA50d1lQLF2CviUAG/2VA2RDsRx8eMZSex3eRw/xVeYD0ksSVxa+oMvSD/fI9KMS019XNyQ5XoyTSEVL262RRZtb7624AboajgzZG1Nf9kqpYKTboMXwULbfC/rThoe8LHj+r4xdSiVEdApoCO3/9T/uH7+4wGVJZY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lii4AK3j; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lii4AK3j"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 1358CC3277B
	for <ddprobe@lists.linux.dev>; Tue, 18 Jun 2024 16:29:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718728163;
	bh=fBW+/Hej4HeUwElrhCPYKzaVxwyZ01BACMd3jmobzWc=;
	h=To:Subject:From:Date:From;
	b=lii4AK3jqgS8WRfHjjXXq4l/6/LHM5pou7rdYhvsT2bW1qX4p+NqEDYYXN+uHVfDP
	 y7OBl2E+pUl4A588IxOvSjKso+s/wx7HWBcID5iOVAiaLU9Tw8V8OSXLvwU5AYXm1G
	 lq+lmY6Qsz8A5Hibp1blK8318wdvXKKjIhItoM+QbRwuzug75ZJk9vP1YVLsBn4C1B
	 QgCuK9raHnpm1Mky7YNXMs0/ljCgPU8GOcN4K0FBURtcxd5fz8dowLs0ssXK4pkTlV
	 cTsgyWCReA9pzle3tpAT2VlWgnnneWwqMzUB+xv/y4+410QfZQXaJZrwXpOnKYKl5U
	 v5xOTh2LHFBsA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DA18DC27C4F
	for <ddprobe@lists.linux.dev>; Tue, 18 Jun 2024 16:29:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171872816285.24012.920169884185105156.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 139a73a26a0a3b69934dfacb5c22f22021c7ddc2a507c9e910098fff07e9d0c5
Date: Tue, 18 Jun 2024 16:29:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718728162
