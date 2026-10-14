Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 62F9B4CB8BC
	for <ddprobe@lists.linux.dev>; Wed, 14 Oct 2026 12:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791980434; cv=none; b=BjxqfWp8zeATsTT83fkyBftSjI5HYJpc1Wjraw7bTJM5LwkxlrTt20k/Fa041YA0dDhMZEe+twpMi1wi5gYsDmA+d/jrxk6hAdU2Rl2UXakEyeGY7L5g/T5neabedJum7zq+9xqWDonSKPCJbt58LvVCQnsaqVGejx2zN904nd0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791980434; c=relaxed/simple;
	bh=3zGX6dIgMQmNrNK7Cw1oM00/4mLj7X644cpFA/6TsV4=;
	h=To:Subject:From:Message-Id:Date; b=Z1EVJbp5J4AdLlfFyjw1DM6kPTPjTfmYsIGzmHTWr62OiavgoOzNfQ9ohoN+Dppvwv+33i91KW0vLqJ3EzC4/4iEvCmsqOJseUn+C+fj6BjuEPYAbIhQk61pGktCAyr8Dc1TK0kLM+NVG5AOoD5VQuzHIVdwE6zZmAqf/8pUYnM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pLEpjQlN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pLEpjQlN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3214C2BCF5
	for <ddprobe@lists.linux.dev>; Wed, 14 Oct 2026 12:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791980433;
	bh=3zGX6dIgMQmNrNK7Cw1oM00/4mLj7X644cpFA/6TsV4=;
	h=To:Subject:From:Date:From;
	b=pLEpjQlNQ6XdohZ1rCAHc3Y9qtCqwM5jafBrpX4AoNH8tiQxK7s/L8XM87++AOYJ2
	 t7pZ/C4dwPbtQAvxdgr6K3EmQ+gT931D7UInUGupw/Nqo0soU0nZbVvxUPDUzf3TgM
	 NwPJdIdvE0KD6dxNI++UbWTHrYubYRTtJ1ZN3JX+6QbJ1ZgpehNU+9ln9zHKP0Gpdy
	 /B9krKbuRur2XlbYNyEr6EUV5QfsjvtdQ4WEVXLykYqGBqpw+3XtRZr7ValmGQlh7c
	 mM5L4Txh5Oyvf5WDlg7IsBgXsSvTGa44REhCUf0VVlaB/r0cNiVioJqKtq5NnBGpJY
	 +2SJ8nwv/0weQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B141BCC6B1A
	for <ddprobe@lists.linux.dev>; Wed, 14 Oct 2026 12:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179198043371.15661.6054886292538325139.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2c0c8a758bdb5e0a3a81c8e55b96437e2442a86ee606c6c8c9f4eaf07e59e0a9
Date: Wed, 14 Oct 2026 12:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791980433
