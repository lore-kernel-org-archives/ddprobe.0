Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1385D469D
	for <ddprobe@lists.linux.dev>; Mon, 16 Mar 2026 00:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773621294; cv=none; b=VzjnmQWzcZGBvgsBHJfl8aKlXOLKi3vD73hRxdwarPmGmireL3JoJlMBPQPbBLfttCRC3bPnXkEK4tYtYy6seAtX6xzJu8CqTTurIkB4dJ0GDbkS+TqoYmje+TNatymIOA0r10+CX53xI8AhbKsMFrdcRyvjQJz18r6TeUGLIfE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773621294; c=relaxed/simple;
	bh=+9NdmHm5nmBNmfoPQYwTxdTJBoZDEwfvg6KB7T2PFNQ=;
	h=To:Subject:From:Message-Id:Date; b=l1zJTr4COXh4aEe3WEjpT1qfr1pXw74FVrjqoiYomP2VUYMRQ453ritYcFUuI8w1VgNDrnxKNU1AZbHnEXN9BEm5FXb/hCiV2g2NVmHfvt9HPNeldsK1uc3wPBqORaX3/Nfqm8g1pFE+ky2SgboMdlNFZKh5LnFDkbyQSDkdKNU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VwC1cBxq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VwC1cBxq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A890BC4CEF7
	for <ddprobe@lists.linux.dev>; Mon, 16 Mar 2026 00:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773621293;
	bh=+9NdmHm5nmBNmfoPQYwTxdTJBoZDEwfvg6KB7T2PFNQ=;
	h=To:Subject:From:Date:From;
	b=VwC1cBxqFpnF6FPB+m1SquB/91doNXUVBiclfC+t1SuNybX03UpYux61bQt12lA+i
	 tLm51aMxA1kUDw1vBGTjlScqNHCs8grUOrvrBwAGFD6K3HClAHzZNoFLY60Zij+wY3
	 teS+c8X4Q2ayG16mMjDWSvpk4LZVfr09cx/QmV8+UZc3yrKdC6NB0J/4ey4Z/0Ea11
	 U1INlYEPa5JN4YlEOuh7qx+sXTG1D8g6uKrKfqzjVuzrxJKJOwDEI8QieyVp/amgT0
	 3z1PjOfsovxuEoS8ZIx3bZb/L13OlkDaSyzrOgRAUvmvyT0zZlv8+fV82+6YXlL7zN
	 yoGC2yx3NXtaA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92401F3028A
	for <ddprobe@lists.linux.dev>; Mon, 16 Mar 2026 00:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177362129357.2348.11800817273861303417.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7b58eb81d29cd3ff41a5b42aea662e91c4eb2536b025629fa14c6882118cbe9e
Date: Mon, 16 Mar 2026 00:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773621293
