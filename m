Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39DB819C554
	for <ddprobe@lists.linux.dev>; Mon, 23 Jun 2025 19:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750707594; cv=none; b=ap0VDbdK3eMLJBXA9u3kxyfEG3va2mGA2oVe4uViymWXZD9qr5/+LCb4QWOLE8ZyVlQpPZa5bl2fH7YQgrjwuloFAHH4g6NPPthNZAYblIMxXcT74kvK4Na676vLtR6NPyBn5X2pcVUqjZr92uIqOqfoLXSrm37EryCCS18UicI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750707594; c=relaxed/simple;
	bh=TrIX/0cmxRW6aFdWKO8EiF3U/4IjQUjPxr39Du3S1sQ=;
	h=To:Subject:From:Message-Id:Date; b=Lcg2sqvXA4w9pZT3grU5GIZdhllMsd4M95f5Eq01q6rPkDkpHOxAuvEmkbYv4cvLwWBr0YegXD5k3hWkZ936Pe45MbwBB/UpGWtr9ftMaOhcfIsaNfbcK54YNBbrHjWcBvL3ReqGgrBk6LPRrXh9YBzNQ5J75oksDY0G4jEu5ac=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gq3VjGal; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gq3VjGal"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F611C4CEEA
	for <ddprobe@lists.linux.dev>; Mon, 23 Jun 2025 19:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750707593;
	bh=TrIX/0cmxRW6aFdWKO8EiF3U/4IjQUjPxr39Du3S1sQ=;
	h=To:Subject:From:Date:From;
	b=gq3VjGald5rvNQKQi1jZp9gDCgjAbmkDM7sve0MJ5TXfWqK4qRG5csmIDipuz1kML
	 aed44lwgmaWpbKgG0Xk5gSw+UuKhl9n6yiiXoZ1MPO2ehdxE2wYpUs8ZK+b9vGewlU
	 BRG7vwfAy2yU0pSNN+qkQ9SL7nBSLBqmMH+wNkyh5NZdH2+rdygRWRHruDz4KtPsVy
	 CV8KrPcOWS+M2iUBhah5eEQ0Q0gQwAtkmwailGpnczojoT0YqHT1ig+AUFx1z5oUba
	 9fUoPXk3QN7VANkGzATpjUfsPkDY2NjyOP6j5+VaEzDM1tOjnGHl/Zl6c7HKmXx/Iv
	 ykCw2UjNXSp0g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EA7FC7115B
	for <ddprobe@lists.linux.dev>; Mon, 23 Jun 2025 19:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175070759357.8467.3658652413591377416.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 46f3bdbfaa0e58f3d665aadba87628f0d17879630ba4343cf8f07d29790a1266
Date: Mon, 23 Jun 2025 19:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750707593
