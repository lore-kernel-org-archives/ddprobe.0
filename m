Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42E3140D585
	for <ddprobe@lists.linux.dev>; Mon, 29 Jun 2026 01:48:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782697714; cv=none; b=t3c4Dx/jT7oCVQ0Uh9arPbHbk+dnVyKhkh8Q/A6Lm+30RrEFxmYRQxyOG9pvDac4chSmf/8R1s/Tar5aDv+uRTRkIAFgJ2mdmaQpXRuL/yeRdIkJyZ5B7uT5VwjxnoK0/nL++VH4WtLb423midmecdEGoQThdkmIpZsZbISqHK4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782697714; c=relaxed/simple;
	bh=NHVHN91lR753IKm6LfcYJjbwKvKFOo6ZGpTs035wZmQ=;
	h=To:Subject:From:Message-Id:Date; b=pommPYiiKd9fFaZsFi+yyHCCtyWI0EeeyuMLiBm6nUszVKALtPVR+toWtiMf2bjuxwAH9q6Tf1kzfnO72yZXFY7pYM15TzsrMuM4Gq4G9/FMPIWX9hdy1BtEsc+6qOvX6iiYul9CZjunKnskRF5wOytTlhfxPMot8/DHmgiEy7M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=D3nVqI/I; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="D3nVqI/I"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C64A4C2BCB4
	for <ddprobe@lists.linux.dev>; Mon, 29 Jun 2026 01:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782697713;
	bh=NHVHN91lR753IKm6LfcYJjbwKvKFOo6ZGpTs035wZmQ=;
	h=To:Subject:From:Date:From;
	b=D3nVqI/IEKPhUCxLKA07EsRpZ8ecljwYr+fiUXZ+g3bB+GJJIcMpBdg8ElMwuQ1Ix
	 LjnpxPunlorHyhLYzAnt7ooVqZqHWiaqDWuRgJjvSYVfKtNzVnsKA08sRvr53ZBBL8
	 tcXymfmdOSgIRZsTJqQtj0zTkY2OYw3ERt3TLNbWnwIzDyIW9D1znBBRjP89L8UA/q
	 BfwuR49MkpV+EKbymAWfJ7SGnZEVviCu9QlBf3TOZ6XyoyCUPYqsmy1irlXtmVjUpL
	 83Gd6I86k53+sWE8aCvhrdAwZG3gX+GHSENk26BZz8cNmoFH0QOLW1kqINMQ+Dm/wY
	 eJlgFGrehkhtw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE5DCC43458
	for <ddprobe@lists.linux.dev>; Mon, 29 Jun 2026 01:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178269771368.17481.9722851520616171999.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f6cb27d615af4f68c14990bf5c123adacd32eca9e133db6b6870792f0f08b9c1
Date: Mon, 29 Jun 2026 01:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782697713
