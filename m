Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F4DB3C4149
	for <ddprobe@lists.linux.dev>; Tue, 12 May 2026 15:40:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778600434; cv=none; b=LqS3oYWTC/jR6CTnrW28M97fPzjRyOIb85dXyvbGoVIcvVlkShOdbwsyyBt0EiyMkcip3+LtAH4ZVeYC5snyDE8EnprI0QOA4KwrEvlNpq88aO/aIdxQWL3dmELhsKKTDRa4spNPvRb7u0DTjvZpwOLl5RNQh3PJIcOsEnhr7tM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778600434; c=relaxed/simple;
	bh=s1vzVGMV+8eAoWBdAFdPOlmUXdb2F/kN+oCn2q8KrDE=;
	h=To:Subject:From:Message-Id:Date; b=ttlmH4MIVkKIcNOyPxpIg6ofWQiHqEUIumRV6yP5bTJ0FAU1+2ypKHd676vrpC2QNBpk/SHnlf648x6J0w8eqzj2hAIy4d1UChLQmHQrhKzk50y2hiRO4/zGhu7dQ2UrHSQ2d1GN2eBUzYc6Us5k8OcmKWcpBUo+l3I4MyOm4w8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LnX6zEmr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LnX6zEmr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BF051C2BCC7
	for <ddprobe@lists.linux.dev>; Tue, 12 May 2026 15:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778600433;
	bh=s1vzVGMV+8eAoWBdAFdPOlmUXdb2F/kN+oCn2q8KrDE=;
	h=To:Subject:From:Date:From;
	b=LnX6zEmrH/4HoWkiTfg1TT5yvSW/W9YtVKJxT6tvzhRjC9pX62NuZxy2PShO/KT+H
	 LnuZB59/eNDvFCUI1coVvDpJXnQRH6zyb2O8xBCaxBqT7wW/+KUwwkySUIgXE8Vedq
	 UmCp5z5HuQ2xzC0LQCj/RIZAMTw1XCk2qgbLSl9rIq7Vvg+SmVG5klsmYwj18Ala2l
	 ibYFQPgkq1SqS4Ny6M8A5GdgoXs/WRzmi5sNQVlwJnR7Xs/Ag6vmdkg+vW5JEW4Syi
	 9TfXxkvYcC3HesuIgB5KuzRsEccIkE8SzTKj1eEdpRiTbQdsgHM1DsPEHs/pDCg8dB
	 kxSurphp6NxeA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACB70CD4F24
	for <ddprobe@lists.linux.dev>; Tue, 12 May 2026 15:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177860043369.11594.37776249980539528.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7f40595fadfc9879b5417807abe0e84d2547101bc5cf402815c6c089a63c8676
Date: Tue, 12 May 2026 15:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778600433
