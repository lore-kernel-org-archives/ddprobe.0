Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E7824C8E
	for <ddprobe@lists.linux.dev>; Sat, 13 Jul 2024 12:40:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720874423; cv=none; b=V5dI5MJWaER39agy7Kk/7LOzN0PwcAfFrj89K0L1Y3ry+IJsBS3ZUY/k7dgszM+BkLXQ/VtPURf4SlP4baRppw8d9Xl+mAFyvacfhxTTrk8d6W0vvIG6HimW/zhEj5zssyGy0ZL0anVsP3Udz6Z3Wdj+gF3eIcYUydjIBpfHaC8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720874423; c=relaxed/simple;
	bh=zNhJzKC+7VLYQwIpcd+CsV6mkedTA0ejlo88nSl1xmU=;
	h=To:Subject:From:Message-Id:Date; b=Eq1TNwwfAbqD9y72xg2Jl8/KYE2xsmxP1j7580KQ6t40pYiCcpDhk5Tx+pySVKOsQugJDsYFiTuOlAvDPGCiQAjGdYMJVbhPMpBbIS6WsoVlbh8LW8gsm0ifUXVCEC0PdybBnSCFEm6xeus/Qq4XfUuKyG8Op/4+XwIfB6qkna8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ErvgD+wk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ErvgD+wk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5674C4AF0B
	for <ddprobe@lists.linux.dev>; Sat, 13 Jul 2024 12:40:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720874422;
	bh=zNhJzKC+7VLYQwIpcd+CsV6mkedTA0ejlo88nSl1xmU=;
	h=To:Subject:From:Date:From;
	b=ErvgD+wkWeBkcxQEnmE/KWPRLQ2YkW4TrS5JSTQmvGDQYqp1it5s7gJYgjf2t2Kl0
	 c+J4oN8NVmFtp2cIzCQPJO1HA7UM45kQg2FZOFpzTdzeis6a7HTJeqj8ms/k0hAPmM
	 mq0u22GO392ToZe5aUGD94jKkbULG0WArwA1xg+zEhtrJBLE8rAuR2itvXrUYhnE/p
	 pe3SXrY2W9tyfQLLMEvTN9y9Q/ps9MVLwwSSbitJC5QVakMi+JiYMuH5H8IYy9Gm9I
	 rCgCj7oDCUygl2z7LLQxHJv0b2Ztm5zbk4Izwc8oIfBHFYlQgoCOmB12uVAhp01X6e
	 UrThSI8Y43r+A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BD3AAC3DA45
	for <ddprobe@lists.linux.dev>; Sat, 13 Jul 2024 12:40:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172087442276.30257.9197150360175977239.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6e14ba30a19e24cb15d7549b09f527ce04b046694ec7adfdd10bb9eacfd4f18b
Date: Sat, 13 Jul 2024 12:40:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720874422
