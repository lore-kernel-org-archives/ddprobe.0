Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22AB24AEE0
	for <ddprobe@lists.linux.dev>; Wed,  4 Jun 2025 15:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749049794; cv=none; b=nWoFmrxUX+s5VWyDKhUeurvKS4OkMGLOiZ/P/kOBzK6/1F3EZeG4J7XUAaAM3yb9VhicbrTK8xoHLjp7N2TAPG7oTgLplHw3tbOWi+9cjoy9SWKSMUpbQQCjCBZd4QF3kV2JzebpKB+T5u6Th6tQ4gYZ9TcufZbLA4PjGxIMDBM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749049794; c=relaxed/simple;
	bh=bJ751nEUUG2mBUBTbdTuJ7F9KSrvIWJsk8HGT5XXAJQ=;
	h=To:Subject:From:Message-Id:Date; b=cd2emPuQtWV12OViYhWo0J6nlUYIyeipUWivod0bSYjKcYCZrffOOd3QT8/OtoZaxFPiS0oAcIFt+iYJIX+0QltNKJW7/DDBI8JFVJUbebXBOS969E3SMjQIoyQAa+NAvz0Cl2But9k20zvM+dc44vvnGnX+gAedXveXTxV2krk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qo40/0Tp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qo40/0Tp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6400C4CEE4
	for <ddprobe@lists.linux.dev>; Wed,  4 Jun 2025 15:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749049793;
	bh=bJ751nEUUG2mBUBTbdTuJ7F9KSrvIWJsk8HGT5XXAJQ=;
	h=To:Subject:From:Date:From;
	b=qo40/0Tp3yoAD+A2oCarRCRG7aLa3VAKgT6qG0FBNCc5e7KTwDJsc3+QuQ1HrkyxV
	 dD/SRREZzfHneuroKrZFcCqz+VxvbBEB76JXwEdHiZTTzwy6M4r4zOx6BDbwWzZPqB
	 HPu2jpbhKHr8pq08KXehUs4od70tLjPQc9ktqWhvw6x9m/tmMxiAzro/EPS/Y9UbYH
	 0n/dt0G0gs+E9XztuWVxluG9e9pCO8sdY5GYX19S/xGWJTiWqR2I+x7oKwqXtkIYGe
	 gM7Qv1/xwLXsR6d9ISPfuJ6ia5n27k09eFqHM6wvUjAsyBnVYrez1Xw6NLzwY1GFOa
	 dd0NKav1oC4+w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91552C5B549
	for <ddprobe@lists.linux.dev>; Wed,  4 Jun 2025 15:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174904979358.6549.3851395564546261524.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f2a06a6b6928d74725e80be8ea572c2929ac96f9246a8f3ad77c0851e45090c1
Date: Wed, 04 Jun 2025 15:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749049793
