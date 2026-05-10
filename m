Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 457EF3FF1
	for <ddprobe@lists.linux.dev>; Sun, 10 May 2026 16:30:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778430634; cv=none; b=FWW+2sWLjOYSY4ttaJdb3mvshxZSzP9SMF2c+FgmPRBVfGnfdArjmEkgsxtMzfc8i4zBxfLEh3Hz5O5zUcqPQNhvRdCnvlY+qysMNsXQKblXyGwujrG3Z3GcrJZykE9NRGlrTiduc4KMtixu2CRn3Q8ORpBMOO+UxeIwoGiM9KI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778430634; c=relaxed/simple;
	bh=9uXYTkHezffziaHNcTpeHf4rABxOLbpKp9E3ewIKxgs=;
	h=To:Subject:From:Message-Id:Date; b=rALa1rjNG71zhLi/DYYbif8D9q2BPWmsL9b7JIDEohxd/wZz1UZI/BXTYIAybmTQgGJbs23qW6NRVe47zPf/8WMSyI80bdfNja5TYtWeLSALAuHmWuq56RTE/ug/LIhowAzk6Z14ZMMzJm1xy+p5v/msYWih9VnKyTO3S5+xUrU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=s6coS7AP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="s6coS7AP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CBBA3C2BCB8
	for <ddprobe@lists.linux.dev>; Sun, 10 May 2026 16:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778430633;
	bh=9uXYTkHezffziaHNcTpeHf4rABxOLbpKp9E3ewIKxgs=;
	h=To:Subject:From:Date:From;
	b=s6coS7APWApQqsJEmn9lCiTxCuo4oMEU28H76THikzztYVkQpYhkxkTs/E0dZ6FQm
	 hXdknwyXmfQIwyDSZAfFTb//yZxhhv3C5hCFAtFiz1q1FiuyXXdv3ANqkjsvMoOrLn
	 qEOH9J7tOy90rGBb8pBlYjsmMwWpNqPZ08BQR97hcihvDyPcTf79DAcEJRtjlt+GPY
	 HY8hsRn2o+mIqfx2toQOwvqE0iOTr27gvUGCltfjedCxHUNxAu7cp6Fpnzrzqq7nq8
	 Z7MxrWItB7HkPpX8/7ennR/YYC4trvAIIGeCeQhXxJ2euZWwC79rk3PsajV9IYVY+m
	 TIA2wgylPxGEg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BCD1ECD3427
	for <ddprobe@lists.linux.dev>; Sun, 10 May 2026 16:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177843063373.22323.10670836006655734597.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 137725fbc44ffc275e75639965b05f389744a477d75d6be5afd3d15add34c1ae
Date: Sun, 10 May 2026 16:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778430633
