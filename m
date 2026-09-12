Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4589E471245
	for <ddprobe@lists.linux.dev>; Sat, 12 Sep 2026 10:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789210234; cv=none; b=RhvBDEplCXlTZx3I5U1GRJ21Ks7fDOt/UOyTKYQVS36pae8txwHVCUQJC6HEg3vWBoMdJlfIsyorQVT3guruz5wOkDuiBkcBQNf5WXkd5dGm2zwyxF+c2JZ+b/+tU/6YBnAddOlbbQmyt+yW9iisAxxZgvwTUxGcvd+YXcVr01k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789210234; c=relaxed/simple;
	bh=gs8qdt0rwq03PV7HMPjXrYPwBvezgZWC+mXjRNrov6E=;
	h=To:Subject:From:Message-Id:Date; b=NfsWIDEH0xHSJAQIruomzIueH/gAvCrsxkhZFzWHQyfe/pW7sXsPm8fQV/LN8YyJKn7gvYbxG/bNkWbmclwqnISBqZ3Ah9PKCd+os0nylDmtTBMPvX/YOHQkbZF+DT3VolKoliD/Gd3lc2SGy0CXq+4Tm6faK7pf+D7LUeamf5U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Hr+I52tu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Hr+I52tu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0293C2BCB9
	for <ddprobe@lists.linux.dev>; Sat, 12 Sep 2026 10:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789210233;
	bh=gs8qdt0rwq03PV7HMPjXrYPwBvezgZWC+mXjRNrov6E=;
	h=To:Subject:From:Date:From;
	b=Hr+I52tuieDsAX8QRMazZ2xi3fREAClg1qkDRndw5DupwDiI/Ltny79yrh07nFQS6
	 CxJ+cu60m5/1hmrg/E54A0h2E7wHwbkaGv1OIyzv7i8sLErycYvc1xD3EJQDxkJAG4
	 v/UGfe+Taq/u7880u5kTWihJhgk3J0dKFGADfavr0KBCi/tIqa7wCIorOx+qGPKluR
	 F12nluoPu/RvHiVwkCrx2xs9mgn9AlgrVHaX+ajG7T+2l9BMpDmgT2jNQSgoSwwWxY
	 /lRu6/nGtTMzePdeqHUI/eVQQ4Hyy4dRlBnBXdHt79YDTGurfSjGLWj6hsIbmprAb+
	 eY+PWBhpmhoHA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9DB6C79FB6
	for <ddprobe@lists.linux.dev>; Sat, 12 Sep 2026 10:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178921023368.18202.8044259450480324243.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dee8a81d6b3a202c8b8114f5677a8288282055e2c7faf2acbf12700cbf97164c
Date: Sat, 12 Sep 2026 10:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789210233
