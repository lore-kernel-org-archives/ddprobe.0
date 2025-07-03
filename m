Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B8F62D46D6
	for <ddprobe@lists.linux.dev>; Thu,  3 Jul 2025 23:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751586594; cv=none; b=XojOzotB/DvXkqarOoFdbUSfNgay3Vb7yzyTypSCnEDmD8DmXddG0aX5fCyS7tNQZo96YFmwPy3Rfi+D3lYKH0TTAUzb3gg6BHF3iJS5AJydPctQ0p9uW3M51l6P1oAzXn6Cs6GY9sTWO1g0qVz80Z7DxJfgsfUzU/yt7PphLhk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751586594; c=relaxed/simple;
	bh=jCc7WYTvjKmWtBHVEtrgGel1VZIgGoGZMDDZrByq69s=;
	h=To:Subject:From:Message-Id:Date; b=SLQYVbNZK03kozowZkdK16UVn+Fp43Cub87BBJXULflCy9051yGpxyjQeofhCBTF+yQ1+GX29EfWxzDGfGk1Uzb4Vn+mRaVA42CZuVDiQTMPMsdIXNw+BRdMLszSDPKFmdo35hiwRxsw8LoWxUhIhVhGoYEStIJmV6UXr2MvSpM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Aoyi+gWX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Aoyi+gWX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9CCC9C4CEE3
	for <ddprobe@lists.linux.dev>; Thu,  3 Jul 2025 23:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751586593;
	bh=jCc7WYTvjKmWtBHVEtrgGel1VZIgGoGZMDDZrByq69s=;
	h=To:Subject:From:Date:From;
	b=Aoyi+gWXfUFdY2TZMP8iYA3w0Qb7UByW4xr4FD8LUzZUwlofXL/JX0mvTwO+K34zR
	 X+E7+Q1HZW0sk3HYzKF5grcsvSFpuKo2EaN2DuudZp4UoNwWNdS0OEe86+Su4jV5fk
	 24gfteXRv3GuQdmU+ZCDW4Z+186hy1JtedFmawPuh7vCfbkql149aojFi3j81m/Uol
	 bVrqDZ42ndUNhKL71XtObnpAWZzY5CpZkgGUR+UJjZh5740oTVOj8J9OWWtT7DlwpB
	 eb0++owxKtdoP+frTcqqn4mkaSG3l8FvS6LkrlSEz21gAwkwLpXhOzla6aC/JQCCAB
	 ww913CUHaTRjw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EC24C83F03
	for <ddprobe@lists.linux.dev>; Thu,  3 Jul 2025 23:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175158659357.23736.5181522426845876.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8d40f49d767b80daa1a000c316d2de098a7700bb4347a6fc3b3556f27d7dd8e8
Date: Thu, 03 Jul 2025 23:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751586593
