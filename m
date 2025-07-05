Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F3EE1F4623
	for <ddprobe@lists.linux.dev>; Sat,  5 Jul 2025 16:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751734794; cv=none; b=s10C3wVifA3Ijjc4RZdPlcZY6I2Ot/Ej0ruanWfbbbN+OlttFM4RldwUmijKW4HMFdBNKSUVaZ7DEcUp13wOP24U0yOpr43qwKDleVauwjosbTECnmk9so6xTffI3iSO7EyelvE5bLMqDs/7e0EvNP55Y2i6FuQZ2VFismwJIi8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751734794; c=relaxed/simple;
	bh=M8PFrFkeMHoCiuJr7JlQWoLesdTSuDiFT1qHpu/O6oc=;
	h=To:Subject:From:Message-Id:Date; b=IBq5fXI4tzVbPQ55nL0MvrNKUOBRuF+4VRmd9FKwCo0VoMC3uSGHUNiBVLKhrOuJj4iGgT6Tm5LC1l9gKAWfA/pDr7scd0OLjc7v3vxzQmG6wO/E+Xf3mB8JUE93Ubjg2WQH+S5JqcVZg27Zj4l0ROjcjU3mDxvWENvWe/DwwaI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lwz6KKVK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lwz6KKVK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A772CC4CEE7
	for <ddprobe@lists.linux.dev>; Sat,  5 Jul 2025 16:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751734793;
	bh=M8PFrFkeMHoCiuJr7JlQWoLesdTSuDiFT1qHpu/O6oc=;
	h=To:Subject:From:Date:From;
	b=lwz6KKVKQILN5vYGd+Kzk67AmnzKYt+ARuHEnoCN5cQZuaM/1RewwBKz2Q3yagOnx
	 evxCauuwloVZJRAwFGEsEqIhS3IRqb2hmQkNNrAMVdx9LfernJmxCEYLFdcXFJXQYA
	 W4HR9K883UsP013jpNY1f7GeDzv/OtT9AFlPYHyWGE8P0xkj/sqRxZOoFkoGWHenu2
	 rRqUJoZeRQI8Fhrx11U4ba3LGZwDsdgI3Uamx7MxSwZtKGKEUGH0ifVYTgJHbp1jX/
	 ZBX3nHrqgAFEi1tVn6sPZs25wHGgEnj6PBCeX5SDPgBp8Pt63qcaJ+mSy0dwxzB0F0
	 M9R0bpuyNXlNw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9429EC83030
	for <ddprobe@lists.linux.dev>; Sat,  5 Jul 2025 16:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175173479357.30757.10835003417278078924.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0548cc154ce9e322b2f9622d3c789f939e8a17e5d56c1890750d0529ff3ceb0d
Date: Sat, 05 Jul 2025 16:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751734793
