Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D69A201017
	for <ddprobe@lists.linux.dev>; Wed, 25 Jun 2025 22:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750891794; cv=none; b=GZcP+kPCfW+HzNkC20W5GwIkyC8cF6Cdy2F4/5E1TyesMUlhMHu1yL+aIEOFOr/ZqSIRXuzIHKANyoYAx5Ad5Snu4hr6dTxWndIXGpA7qnyveBiioGvxAmX2V7YZmoYtNojmqySwDoULLSB2xCzt8Qis0gs/LGTSZZscHLXkFRQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750891794; c=relaxed/simple;
	bh=tzjnoOP33TxOUg1ulqajUu108fL9U0f+ZtZTIowQmYM=;
	h=To:Subject:From:Message-Id:Date; b=XIarVo2Dgnz8nnwaYekmCC/cTtS+8/dzQQn5eP+W1mNC4MQnptjGXqt622i4QdfdUnfobt9YqsdtHYyRRQRx827r3f3ElK7f3yzEp9URjWUjZ2E6ed9prWyxuqn4ektNBIiHP136UBkGJLzcX/1nJQTn3H2waK5bGccXoo57CgY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FD6N1vJU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FD6N1vJU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6352C4CEEA
	for <ddprobe@lists.linux.dev>; Wed, 25 Jun 2025 22:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750891793;
	bh=tzjnoOP33TxOUg1ulqajUu108fL9U0f+ZtZTIowQmYM=;
	h=To:Subject:From:Date:From;
	b=FD6N1vJUEwTX2fQ3iiyPNPBZ2rcdwDdHnZ6GksQY9A1vqiQ7MfWzWVvwBfifDo1Or
	 7BOuPNcel1vzQUVf33+dxMHBk9Pk90Cfm/8tV2dZa6uTLLyVJc1qYlZovqsofPndUS
	 Xh71RBYpST2t6aySMXRQ6Pmtowr/IHPW75rAW2c2w7gfmy6S5lGfkwJA3fFuaRmmjJ
	 VjjzeoPDYInRyDHPjk/MNOzdWqYFh6k8aYpIbnKn/eQzziaIDMvtnRfwXZN9jbYEan
	 OyVsjHEek1Vi2vduXpFGy0TVinPEO60dRcmJPx1Be0l9z8t1Eg9z0UyzSXVAuh76SA
	 iIY+6vZ7Rh3hQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9098BC7EE2A
	for <ddprobe@lists.linux.dev>; Wed, 25 Jun 2025 22:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175089179358.6582.7384925526555168940.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 831f62f220657fe8f4a7a6eb0b790786f3513382c9d200d888934d0f580dca42
Date: Wed, 25 Jun 2025 22:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750891793
