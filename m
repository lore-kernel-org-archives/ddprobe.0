Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 09E591946BC
	for <ddprobe@lists.linux.dev>; Fri, 27 Mar 2026 06:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774592094; cv=none; b=TSKjN+rafjLWM1xGpAzOWXtiGkn6XRHc9GNA2X6xuIu4CH3TqEumUAmjlGz+ELotm06QoXUcwE75jn3mShWWhF2ZeWHW8zxfYdQciU+rZkJvvY0ZJHEeb73527OalNTR5pj8BhBUPpOkAvswkLL3LGoKe840oPYWwr6dOlN4Tnw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774592094; c=relaxed/simple;
	bh=gTUVypQ8YDpPCclAB8Ri9y52iqFUfBPHk5efuR7GrsM=;
	h=To:Subject:From:Message-Id:Date; b=MzYXKP53Z4ptyR33my4p9bkNg2hUnLISXHvOrQ+d1vPmtoTKxkP2IAH8J3rL3ioUKrHjSvP+BSsaGey+75VZufIVZ2ascQI+UtR09DhnbefLyRIM152L8i02KG0tFIAHmh3W+mzl64gDrBYV1pSsEqkvVv/MhJjj9hyivvuIecU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VlLQYPGz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VlLQYPGz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A501BC19423
	for <ddprobe@lists.linux.dev>; Fri, 27 Mar 2026 06:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774592093;
	bh=gTUVypQ8YDpPCclAB8Ri9y52iqFUfBPHk5efuR7GrsM=;
	h=To:Subject:From:Date:From;
	b=VlLQYPGzmapHw2Zaj+Pt/16mktfYOqwcDUkm40DwaeU49fpvWzCROmhmYgiJU9aNQ
	 sg/TMtg+A9xCM3C46dVC4Uk7GyfKfqE3CJ+2KKEqAKbf+4GmE4C5Q3HZBYFI6wKxgd
	 rJ0qE31mf7enzjaMIzmLEg/kzBUjHkkqB6ZBaYGtSpFc6G3Gabd5GsbsbkcfBd/+2m
	 R1+0zcSTWRypihyZ7R9UoFmKqJhIXHB0/ZHcWYpG+x9jnlzNAA/WTjOmiRUFovF83e
	 dRlCGaOsxmPzQQANNsFLxVPVyM00wdE7E1zhbWJzyVeeFnTWRQZw7sgeSWy7czDXXW
	 6839p/UD0jPrA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9118810BA431
	for <ddprobe@lists.linux.dev>; Fri, 27 Mar 2026 06:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177459209358.6712.4848464097020586864.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7d4b244995717388d6af8aaba077ddd80c09b9a7df2c3797f88a509832d47070
Date: Fri, 27 Mar 2026 06:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774592093
