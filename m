Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32E7E224AF9
	for <ddprobe@lists.linux.dev>; Fri, 25 Apr 2025 21:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745616595; cv=none; b=T8aE5aC0WJQgh6arA0aflOeP1GAFlrfAUGYkhN/XXXK9WhTDikROGj9cyWKVU7N8mboFDHZDCkmwDcSWWGarm3+oNIG6APNNx7l0kNapoDR9KjOVjdH2bCByPHmTA4OAelVFewjACebAxuVmzGPskDwWNV6ktV3urHyfcLZedXA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745616595; c=relaxed/simple;
	bh=I6TM2gzeangDr4nZDqvGtPm2c8qvi3qsUTk0oSaYF5c=;
	h=To:Subject:From:Message-Id:Date; b=VumthKgjdCRc7ivYm1tbvavEnRVbhap6RdpYwzjmKKh3S2rs7CxEAMUDX9xwlwfKoNS1M6Q7g2e8puyACIfy47OpnvsSkR7t5ikR7k5fZH14I08/jiD2UFGt5X5RGxz4qVMMUEsOlGpQy/F57H3etDLU8fDrVUZ3IYIh2YlaPgs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RoKd2htl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RoKd2htl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E0C8C4CEE4
	for <ddprobe@lists.linux.dev>; Fri, 25 Apr 2025 21:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745616593;
	bh=I6TM2gzeangDr4nZDqvGtPm2c8qvi3qsUTk0oSaYF5c=;
	h=To:Subject:From:Date:From;
	b=RoKd2htl7krgpcac3up1jpGS2Uy4DQBNRmyMubmYSH5HalzvgxIwBVfm/7D/scCX9
	 /p+hlslHj/E8QlgaazG0qqavxqtQoK/44dBlC6wqdVr+/cM6Z9K5P1R4bIKVYEqbLt
	 Bv0qBkU/RgC2EcvBodcYKB/q7R6gUbuRdq4Z5sF1Qinu53ydLLL+nJbfLJceO4TdGo
	 sYrIVP+GRG++pDstYbyAj34R/1rJygrulvbwjYB3rJ2VwMjXpvJrQq2Hl397bMMYvF
	 Lw6jYStKIS2RnaJj7ddfS5ofBjIN3OjQY+u4RRfyqYypiTnkjxLOsNHDl7T+Q6ZVV1
	 IOCuNy30p1yWQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EC16C369C2
	for <ddprobe@lists.linux.dev>; Fri, 25 Apr 2025 21:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174561659357.14195.2876543780522681179.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 474fcd95da3a46dcb91d6169609cea8a4c11310bcdb88617d38d9eb94128d993
Date: Fri, 25 Apr 2025 21:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745616593
