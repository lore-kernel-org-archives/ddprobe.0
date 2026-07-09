Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3757F4DB546
	for <ddprobe@lists.linux.dev>; Thu,  9 Jul 2026 18:18:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783621114; cv=none; b=aJINu0hN9Qhw17bATCPT1pe2xmPol3TtnSMT2+iwPHJfBXJ7EZ8i8WbVUKdu8glp9eqxV1QpjakF8qE1SH8f9RI0mYZuSFQa3Y71qmkLddrKz9sCcUM+14pT4Cu9twZmchbGx0f0smG7IDZKMQpuBuBAKznUEndgukLEYlIY/TY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783621114; c=relaxed/simple;
	bh=Bdlj/pCl3HZQfowyf4SPgSu+LayxIq6/pJtVD6IkZUQ=;
	h=To:Subject:From:Message-Id:Date; b=jGqg6iZIy1Y5ZHQ06lKPoAlOQiDvsXL5vX6r2GiHHSyamuF+2e7xTug66SDwwlKmtB6NukL1PFrtYfXziTXW/caGJKDvvjqxrVgl5JoVnNMjaH3gNjadSW1mWp8zO7SCeIWEfjl32BMrRpruLZcGz60UsXSOGiPKbpzvgVRZ43k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=omRkDCgN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="omRkDCgN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA631C2BCB7
	for <ddprobe@lists.linux.dev>; Thu,  9 Jul 2026 18:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783621113;
	bh=Bdlj/pCl3HZQfowyf4SPgSu+LayxIq6/pJtVD6IkZUQ=;
	h=To:Subject:From:Date:From;
	b=omRkDCgNYEJali/erBIXaT8barOA8+7fEJl35If79ZsvOXODth2/NbGNyslE3DHkW
	 6/DGfzoDijJBrxErMPft98IY8y2SL7ViD8z4E2YlW0KGGJXbEaIEdd+1q2/Nzlab4u
	 JUj00nLAVzmOF6T3zgk3aWAYm4CRGMLf8O7jCgsK4lkB2LhzS+O5XG+R+T0ehy9qB3
	 V+uEVVflZU2PHEf0pTAWNw4cSAf4KDlUaqVAju32eNSAscmOD8M+cmTusVrgGYDzCB
	 Nh731tYSHbF5P8qBHJ40b+BxXzjUS10U72ReGvxMWe6rLJxI+NUDGR/U2gxFDE28TS
	 YCGb6eR9RYZuA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A939CC43458
	for <ddprobe@lists.linux.dev>; Thu,  9 Jul 2026 18:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178362111368.368.8443922720145382440.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a67e2660e734c5516b37139ab7cacc958471e947f5bb4923620d0c8fd0f0c017
Date: Thu, 09 Jul 2026 18:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783621113
