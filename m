Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 344C8242917
	for <ddprobe@lists.linux.dev>; Fri, 25 Jul 2025 05:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753421994; cv=none; b=rnCiklYyUz1tGyygYDP4skaQ4Fv/RJVdsVYQ6G4tKQa0wOqoYaDmXnh/Vom6RKHCfil58KP5+Prn5GUMBUGa7IqsW8CcO6iYUmiRlVoxK1+DvM7wFPohONVylrXEaBd+3Db1Nw44gyyFs17hBxzj3ijySEGbqu0umxmu+PcuYXE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753421994; c=relaxed/simple;
	bh=EbImvsAOIFxu/cK5ByiMIL0uiCGJb095sy1AJV+LOZs=;
	h=To:Subject:From:Message-Id:Date; b=KdGW39jE8NzzQ8neA4bSEmq8XXK5k58RTB136jdsmG2VnBO99GmMWoI7XE8GSQtUlJXDC7bI3SqCabdRqcvYmmfDi2u/r2XCzrzTCkUy3TRNT4or4327dF4xTj7snxg8R96hO7JqGNB2WmuXj7vkwUaY3xhsIe9PeJaJqGnYw10=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nMa4Y3zL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nMa4Y3zL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9CC6BC4CEE7
	for <ddprobe@lists.linux.dev>; Fri, 25 Jul 2025 05:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753421993;
	bh=EbImvsAOIFxu/cK5ByiMIL0uiCGJb095sy1AJV+LOZs=;
	h=To:Subject:From:Date:From;
	b=nMa4Y3zLYQWGfgKVY04EL0RORTjCLuJ50OntqsOhKZ9q5Ap8+JyaQkI5rLd1S0dVZ
	 eN7WSeUdYMfTISKSHtCW82HVDyD8LtMEMimB2Ym34vPBUOcXbtrhXHKlj/pUNRBUkX
	 X6BR7x0g8bTLsbEu56gaR5RPK4xe4psGC/56kLH8ZNtMbLfB9pI3+vlqh+aSZRfcEO
	 h2kqXRcVDG9P2hh5WIo/4kjheXJ6Fi1lgkIAKHe3NPJ1/O7lrChmHfm/7bJTPCp64L
	 hu+cH/fbCegAG2HhAYSYcSd68bcXJeroffZPe8REkqCISodGAro1abugIK8Jmv5yB3
	 3dfxIzlWAht3w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E993C83F26
	for <ddprobe@lists.linux.dev>; Fri, 25 Jul 2025 05:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175342199357.9178.6828255712482792828.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9c2785bc09245c52659adec2595d7379203c4c96038e75f1809a8315f00d7ad4
Date: Fri, 25 Jul 2025 05:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753421993
