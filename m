Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29A71279792
	for <ddprobe@lists.linux.dev>; Thu, 11 Dec 2025 16:02:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765468974; cv=none; b=snbINXeh0u2aT/tDUSuxqF5gIrUXvtadh6UX9FBGx0eizy3LZiobcI0FShVe3XasMp/5sGd9E/gCEQNGr+DjK+mYmDJNjxhmSZZ0oaa8xDQTAqxPbkKVx0bAE5MO+yZiS1vwybf1JqS6Kyl2wzmiwu20JTeqleyEh7qHek6DbPU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765468974; c=relaxed/simple;
	bh=PHZgKGXvXj50FxUzYyvoPqGIGR+yU8RABt+43RdPVBE=;
	h=To:Subject:From:Message-Id:Date; b=IdtRxYPcsiyBjgjZ7RrTaXjvTp0+bC+A5vojD/9LTt3YBj8OQQV5XZfpGv3Umx4CMH0RgUq4CQvskTjMs9g5wrqzbMPw2FmJmE3B2R8oxQrpqBc1AB+1AdfETKzRs+t5Vo0s3ZanEiFRSrFCYy3je5AT9WslaT45gem7MgD0lcQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=F9mOp+ls; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="F9mOp+ls"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8884C4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 11 Dec 2025 16:02:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765468973;
	bh=PHZgKGXvXj50FxUzYyvoPqGIGR+yU8RABt+43RdPVBE=;
	h=To:Subject:From:Date:From;
	b=F9mOp+lsDTk6ATtmapCKKElxH9+LAejicfUT/7977AZx4GizIeIFgRbIF8uU523ot
	 bEdeFODeXXr2Zts3XTE++ci2lpBxqpeln+YfqOpWr6i/gxGpqkzEYhpXpv3DHIpxF2
	 ygLGKL3x/SMuQ5uIXO9N0LBlZd7RZqUhUT0NpPoCZtFuu3XyZgDjk5xOQYE5c8POEK
	 nuhA6KmWeraoz7sE9qZpsUIX85q3o5GpCZIVxEgvlC96fNzPP1c6sSrJzKTxex1s0V
	 0IrDnFL6vM3hO1+b8dWDUK3SQzf4glKGQNcwyAFrQqcR0z4DgsaZwWR1FOu6KZspW5
	 Ceu17ln11syLg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9587CD41D61
	for <ddprobe@lists.linux.dev>; Thu, 11 Dec 2025 16:02:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176546897360.7184.11198413371575241354.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8fe85a1d61243175dd1f43c7ea9245012d3f16e14eafec3a62605738b1087528
Date: Thu, 11 Dec 2025 16:02:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765468973
