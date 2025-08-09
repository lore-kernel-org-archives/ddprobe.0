Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30069224AF9
	for <ddprobe@lists.linux.dev>; Sat,  9 Aug 2025 13:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754744994; cv=none; b=AnY7/3KgKHHCZoSr7WeQJYsNuuM7xqgTy97eORHhMaHKrIJRAeEWpfmIUspGbR1Nw3VBn4aKF5tgo5I1mziuZ7tHPQp6vsReHM/fDwmbWih73qpYLQJffDya+f23J9B5hBq1AgYpSerPxpvIL9h6iCKPP9U19kMB+d6F3CAQXak=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754744994; c=relaxed/simple;
	bh=87DdsseigQ5R6f9zYhRiDizQdQZJVOa1Fw6zV3SE0ZM=;
	h=To:Subject:From:Message-Id:Date; b=VebpvUdZDdLQKudyheHg/EFfy0uuzS9WVSXw/gkUQvNEb4T+lPLikpWvTW4cM5wsaHBtIY2zjDkAvKAsc3ioWkPGHrSa3wwY4kCzks9cfPKCbyZ+pZsOHX9wk7VbcSNqc5GtfuyKMXGjVzx24KmdvsTfCxDZQtkSPq22BXvNO4Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kvOsIpim; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kvOsIpim"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D4E0C4CEE7
	for <ddprobe@lists.linux.dev>; Sat,  9 Aug 2025 13:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754744993;
	bh=87DdsseigQ5R6f9zYhRiDizQdQZJVOa1Fw6zV3SE0ZM=;
	h=To:Subject:From:Date:From;
	b=kvOsIpims7OB7NDoT7IYVrvW+qsFjTHa+s/eUiKcDoXIN3DPHnSgCZ51kNLlFwfnz
	 YV1CGj+m/69PsnkNFpv6WkIaQyqJEFDcWEwkaKA6PzgId9d+IkjSSpjTYcrLr30xZM
	 uUXZAHTuRFJdyna6KEeeR+K4tXlS3yt3G8OuIJE5xsmpWyd3vGRGd+0FaymOr9+Bal
	 5hEv0J/pKt/pDq04qshqpyINwl7ZdT7if6bmTrX8s5WGYA4sX/35TXzYsy4us4xYVJ
	 BI8KSTs9o/yfzzgtex60oefQinm/y+JQGpom3hbu6Lo+wIYS0UqvRDd7lnnUQMD82S
	 eYARurUhHL2bg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E07BC87FCB
	for <ddprobe@lists.linux.dev>; Sat,  9 Aug 2025 13:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175474499357.24341.660491493326696491.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 93c71d42db1385ec40b4a4913d73640d8d0813f1f81977b8abbb5a2e329bb5fc
Date: Sat, 09 Aug 2025 13:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754744993
