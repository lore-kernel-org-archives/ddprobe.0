Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DA373438A8
	for <ddprobe@lists.linux.dev>; Sat, 20 Jun 2026 21:46:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781991994; cv=none; b=o8k14TWJS0mSxBdPnREq624NCqmQ1485hju8AzcR6CDTHHo+C6W8WaNh92o5yuK1bEQtJNNes376L82APx2ZfnCMyF9lqHGKPGliQv23x8ufJD2XXh4nf72K/GYkyKjQJeJ+8cOnbaQVJdeUDce1gFg6GZz7kNS4a0/fwO/7vzQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781991994; c=relaxed/simple;
	bh=lCV7psr6ESvvuglOSLTGkU6r8cR8bzVQHNlz3uZzCrw=;
	h=To:Subject:From:Message-Id:Date; b=d+9iWQqgRmqsdGWJR0KK9xv4UGmLCyQtRJePaPMnMgSfnxIocxdPPSxoGDqZmYRBk2KxLTs2UV4Z+EwTCntZfyA+CavPYOs3hkw0TGXKgSj2DHz6UAwir7QzuB+y1EGq/DFmRYOkCVwUE6eSqCnuQ+kGjSMCBRQMbCaRK6Y+ciM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sOksqG1H; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sOksqG1H"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C8F9CC2BCB0
	for <ddprobe@lists.linux.dev>; Sat, 20 Jun 2026 21:46:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781991993;
	bh=lCV7psr6ESvvuglOSLTGkU6r8cR8bzVQHNlz3uZzCrw=;
	h=To:Subject:From:Date:From;
	b=sOksqG1HV7QzcSff9PBDAcraGLSEymdR8cT6VGtUumsZoKVU/K61fKgmZfFvAkk33
	 Nt5Zp/kHDUX16qUrIVIPeWyu01mwr4faAul16Rt+q+kHC/cLBb1hECyCJcZruImaQy
	 +kojl0nREzzGHrFUBeV6hLnSIxU2J9Nk6kUT7vstcV0Pk0cSCzvaGvwsXC1W5zouyU
	 gUhgsjgYZOW9GLo15SPfZHegBVXE5AF83GvrCmPZ6E/q5+YwNYvYMR869cSeeP7acx
	 ipXFs0IlzmaPKFI9Or8dpeDNtNcyZ0kZToOqIfymLOpwKDzcvnoLuT4pqAjO5udOh3
	 l03KyXnVHVCiA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF971CD98F2
	for <ddprobe@lists.linux.dev>; Sat, 20 Jun 2026 21:46:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178199199371.21929.7746024095820864877.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a1ece844320b2f9fd9b6519fc7eac51e1edec7ea66eef2e10607590eec51c332
Date: Sat, 20 Jun 2026 21:46:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781991993
