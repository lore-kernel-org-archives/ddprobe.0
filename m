Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29C333CF68F
	for <ddprobe@lists.linux.dev>; Wed,  6 May 2026 08:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778054854; cv=none; b=M/1hBReTO29RoA+VVfZysqNzgiz55pNF9IJbXSiKkvbkHFflkeyt3WuzLaII0aZQq2Ja428/HTtoZ0nucnMZROgAMtozhZf212LTFkJF3zdzh1mxvRn5btHIAa664ekJ7TjAn51I9d4n7D0fjB6ZQS0vaCZm2L9GOLT05BsY+aE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778054854; c=relaxed/simple;
	bh=QGzJnMpXbf/cp2EEm1h90UlFKEfb1t3nv6u0E94lWbU=;
	h=To:Subject:From:Message-Id:Date; b=cC4aoYYP8rvSxtKnVjBAW3dves+adh7ckOBbivDbi3/tewWYe1uILieAxVv9zbRLpT0VXAnkCpoFEDYddystBVVhUWCt5GeNNrpOTg0QrvaxSps2ZhN0IGPUeXPLpSFxwhzQTWBWvc9XxIJ7Y9ELRji1ZO3kTq0mTOIR42Xsn9E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jneWuaBp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jneWuaBp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C03A2C2BCB8
	for <ddprobe@lists.linux.dev>; Wed,  6 May 2026 08:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778054853;
	bh=QGzJnMpXbf/cp2EEm1h90UlFKEfb1t3nv6u0E94lWbU=;
	h=To:Subject:From:Date:From;
	b=jneWuaBpxI9XYMyKIkwWs2IkWHXe8byidKIaROD9W0e8O/pfDP8prhQQlbTVS+lUf
	 W05YqH16sgiJ8zxXcPc3UZ4rNLLs6w+675SGraPAgs5j6syPUIeV82gtQmzhwDL2L4
	 Nd/FkFdYMYUwVux7vfwrE/Ht/p3Kt94qwpLTgdY2o7hHVgXmaEQo0MHYly8jAzGnNu
	 igKkQ29DHYsXKzFRyFoa/VUqv9//0Kx5ezlw8cIDTT02EqJhrWi3ssM9BWTprTX0cN
	 357+XXD5ClZarCXXlEZcVPmFQc3Sroh+Xxx7r/kFbu5EW1Y21tocwAjE5sGo1IYku7
	 D+/3dnLhL0o3A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACEEACD342C
	for <ddprobe@lists.linux.dev>; Wed,  6 May 2026 08:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177805485369.12865.12741946673762713291.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6dab7dc19fa099effee8ede431d9570c4dc08d1a7c29bb44de85dac38480975d
Date: Wed, 06 May 2026 08:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778054853
