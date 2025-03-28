Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FE341E1DFA
	for <ddprobe@lists.linux.dev>; Fri, 28 Mar 2025 11:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743160794; cv=none; b=jDneDZpItgeOMvH/Q2iUzqyg4iaSjQS523XKDw+joySzo1GWW87W+V3HVnAOmg8ojtHkpTBBl7dDCxLrPzDCSFxHjdMEeN1y4u+t4jPZJHCoTT9g5Q0pgxHxElG+/fceqeBBudx/uDqtBwLIT1uTn5Gsex1SlfPCihT7jKcVnw0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743160794; c=relaxed/simple;
	bh=rI6Z7aqAVdyZkU/DMBFR9GHLFJeRyrIoGGmE23RkPrg=;
	h=To:Subject:From:Message-Id:Date; b=deVUHg40JWdfB7PDU5L0dLZ2+qLtFfT6fTT/FMajvc2W0IdnIZNi9ixOkJtq0/rIUKab/myU3dd5zRksq6J9kmkROH8z1vP6CfThXI1MFbEh/IcN58Pk8nmYmngKiOMCxuT2Stlm84iX5KcA425a1UHexVhLencCqr54+sAZ9Y8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BpfbsoTK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BpfbsoTK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7062C4CEE5
	for <ddprobe@lists.linux.dev>; Fri, 28 Mar 2025 11:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743160793;
	bh=rI6Z7aqAVdyZkU/DMBFR9GHLFJeRyrIoGGmE23RkPrg=;
	h=To:Subject:From:Date:From;
	b=BpfbsoTKblmDj5bLRqIl1UPwsGykAC+Mor52SgEbj7KvAqauiOMGyrvd9qBNcAA4V
	 /FLjvOhgMeG4cPilOmb+yCMnUINyAxeVJ9rluiSWNDlmW2/4aJhPeJCNC0NO1TNavt
	 r5aB9DRTGkbS03rgMrEm46vZ2TwedXl+v5H5ZZ9xOwr8VtcXqaQU1tRA4u4oebmVWX
	 M8o33I9w8e4DNc9yf0MP4v93oOtZ30BWOPJLbBk4TtJEpje1644KXj74K/KCPXgHDd
	 xbsxESQiMfLzh1KL1qoBeo+K1O8RKEM2zS180suey5dv3E7gy6BxgWiZia7qgsvYu0
	 hYIRZfW1UC5Rg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9640DC28B20
	for <ddprobe@lists.linux.dev>; Fri, 28 Mar 2025 11:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174316079360.30243.10071645200942095672.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ca090f91aa6c7359a6e824b7e769b96b37237e1f3d75d322fbb3aaf4d9ce6237
Date: Fri, 28 Mar 2025 11:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743160793
