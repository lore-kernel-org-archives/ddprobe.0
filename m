Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 13C822D5C68
	for <ddprobe@lists.linux.dev>; Mon, 27 Oct 2025 10:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761560994; cv=none; b=DmeHrbPN7z2RQMmRDl0N/p084yTG8ZrathAL+JLxjkX3mf1nCI3OfYBH4W6LTrpIrUC05dse+dvmTaBe1zhICG/MAQOzGkMVs1qLp9iN4OYkg3uhyWXZcwi4tcWVsp5hksDhfbtUr/B51l7s8RWVaaNWapN4qvJTfls/yBdbItA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761560994; c=relaxed/simple;
	bh=jlpYsbi/xeJY/eYPfoC1mlje2PdSib7ZSaYCFXJym/U=;
	h=To:Subject:From:Message-Id:Date; b=p5XciQ6a2NEHo1XnQT+z7VdKQegxH5Vix6VE7u1Hk2Auie8cu4p4DfOcZFSD1lRy+69Em4CxoBLnniZj1EJPaPf0WzFAwfeUunIAHHVTLX+lDrmiOAHmRlvcIbYFJtGsmyAB5TEUPt2KbUM3GZRRV6fF8IAyLbsGa2n7vz865vI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PEMiVfzL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PEMiVfzL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A16BBC4CEF1
	for <ddprobe@lists.linux.dev>; Mon, 27 Oct 2025 10:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761560993;
	bh=jlpYsbi/xeJY/eYPfoC1mlje2PdSib7ZSaYCFXJym/U=;
	h=To:Subject:From:Date:From;
	b=PEMiVfzLxeqC4abTfrtWq5rvddTxjy50cN8URCUsleetJhCwOEssnr1oTr1kbCfv9
	 ZsGF9vvAMggK/NVI02tzae4JBBB+xF/wB8uyFzSBqI+J4SU72mKRhIE2H67yiemG6W
	 4ejRZVKbE8P4wpT9f1SzlIQnXYuMGws+eAsjA5yPNhnUUyoDFGBZ8QN8xLd30qaE/i
	 nz22IxDtGFFePvCUW4tLkEpff2zHblbPtHT8ntENSqbzosME5NmeOc5nw2DDAEjJX2
	 PjWCXb65Z44CjfeUGIFwWgKI2FUIKYkhHC03YbfgXgGyXymfo4N+uDNf25/R/Ixo+i
	 JqJMwncspkl/w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EDF0CCF9E0
	for <ddprobe@lists.linux.dev>; Mon, 27 Oct 2025 10:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176156099357.22509.15832990096331793382.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0308631322696e4133706a70a82a4e08b137ef7f15d1e832b462f2fc378851fa
Date: Mon, 27 Oct 2025 10:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761560993
