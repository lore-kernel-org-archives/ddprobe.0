Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45D4A3EDAB5
	for <ddprobe@lists.linux.dev>; Fri, 25 Sep 2026 07:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790319634; cv=none; b=k7kye8c4QAAzKWKmR5aEJvFH6FCp2PwCSNwQVzorfa2NoCBZPSnpkU9LyqhysU77+PnN/PhRwOK934SsFiUfqyoCEdRX0olAdE8tHuA680pcMXjxaS+1rxW5PJJHFu5Va699pSYfRmoDV1mZ0cjTKNiFyWFu7xPu/jFO8yWFPdY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790319634; c=relaxed/simple;
	bh=l/LAyE3w9oXcsgsA8eRZZ9mv9A9J8z7QapM1imfEJDg=;
	h=To:Subject:From:Message-Id:Date; b=hFG+JE5ZEnPttPTm1Hm4k3dtAxXaVidCW3hID5jsgQO1yKlJSgMsm/1KuAH4G+10YB5Gp50Skc87VRfmeGIjtZxWytNdNXRuh/kVtQV7EaRFTggXoMMA7H837UNT2oKzTP0OhSgoVR7KdAaLAL5BwGlYfOS6hiZDZ4+aa6pe9xo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Kb17duEz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Kb17duEz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2AD6C2BCB8
	for <ddprobe@lists.linux.dev>; Fri, 25 Sep 2026 07:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790319633;
	bh=l/LAyE3w9oXcsgsA8eRZZ9mv9A9J8z7QapM1imfEJDg=;
	h=To:Subject:From:Date:From;
	b=Kb17duEzJWMUAQKdQYD04J9ureU62EIxdJ1Zf4xi0sESQ+6lSNfEAfeiCtlldFg47
	 hhGvnNFuYuxIU5vRlqRfjlgbim+ag6y4wetODKg4qamtuDgcxuT3fuvyY2b5GkOFoJ
	 0fo201KunCjx8KH7h/5g4WYGmz/qmWiBVLvuoduqYAqqAST/yRCHcVk1W9GW5Kn3Dd
	 Za1K/8n2wkRPgj88DqnYb+PDOMV3VfMT9i/fqI81AopzGhvBeRuG0BLnitNRshDx92
	 yjccRhY0fhUGo1O4XL16jw5hDOrkz8MkKcr/Ek8/+RkxFs3+yWXJgc3lQzf9xgX86x
	 yaCF7gjovYjnA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFE5DC9830D
	for <ddprobe@lists.linux.dev>; Fri, 25 Sep 2026 07:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179031963368.1636.17270218283755377316.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c9b985dba05eadc3b43dbe72477d7685f90eaa8ebadb487b71f10d26d1f001ee
Date: Fri, 25 Sep 2026 07:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790319633
