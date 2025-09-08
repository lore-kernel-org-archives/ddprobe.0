Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 139DE45945
	for <ddprobe@lists.linux.dev>; Mon,  8 Sep 2025 19:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757360394; cv=none; b=a9NXyE1fDYDzNwpG74TzjIK3BYKGNRZ9uDtcEqSK/Sl9BPomoBjjlvUiULyJ4HY30uy/7xzTs9zZ/AS+R/1ib8hrz9psujHD0IkQAmpNNTGblQAGa07EUP5ZLY4vr1sy4o984eILyiGlzwt1PDGXU39qLAMxDye8uDl6T2ondBA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757360394; c=relaxed/simple;
	bh=XSqr4qhueaJfh3jbZVzQhPVZuFeMynItCS+BOcWJR6U=;
	h=To:Subject:From:Message-Id:Date; b=CyOC8k3PoP2h8NlWDFcNv3OgeCAU/MyTTgLlHNmTmqqM1XVImfDrr691lG1fa4QTPJkj5yMOnWp1esK2VUYTcW8GfaHxugWz7Wc++IklIslJJcIx5aleIaGkSI27O9LB7DVSHpS02U480RXNeCGxLGLc+t5zBLUjjvgS0A/xISo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ICxl8aav; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ICxl8aav"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9BEC5C4CEF1
	for <ddprobe@lists.linux.dev>; Mon,  8 Sep 2025 19:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757360393;
	bh=XSqr4qhueaJfh3jbZVzQhPVZuFeMynItCS+BOcWJR6U=;
	h=To:Subject:From:Date:From;
	b=ICxl8aavWAtaP+JngnBzG+deb6qSU88Ccc5L3zDzPuHYoLeAj0mOJ+UFqdIC/ZnT9
	 saGvFJBLcab66/XWCJx14RGtUa1N2eWFZmboQxpOjSzUQL8ZoFe4SzFtG5cXjU5Jz1
	 lllSu7Mjiades+cxz1/ZkdQseSGX8L2yh61pwH3e8W7T0ObN9n9WcNdkdIDdYkgDkO
	 AzQT1lpxM2b3KId/KkEsEmkqEUBZOFACJRBigzwwR+YgYyq01b/BSwyIHuvxIu3bsh
	 65dFZUVGK9IqaPj3/e06t/gvjdMiFacktvFEhmYpzODaR9AcRo1l4ZT6qvxjwBW1v3
	 3eSOpM7t7PPHQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F6BBCA1016
	for <ddprobe@lists.linux.dev>; Mon,  8 Sep 2025 19:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175736039358.28187.7521610453665727578.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2e7856b9f76e9444884c5fcc9518519cf17c539a7accc1270832bb248c5aa231
Date: Mon, 08 Sep 2025 19:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757360393
