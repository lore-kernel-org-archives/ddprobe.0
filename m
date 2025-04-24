Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 309A02820DD
	for <ddprobe@lists.linux.dev>; Thu, 24 Apr 2025 16:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745513994; cv=none; b=fDsOLXWe8lHrAv/d9WsgkAPgiH7joBWDMYsmPIexEzx/7aOYxg2h1AX3EhLSM1MI7LUGlb03/RXMJ7TdNt954Pwd+NUukcqE7Cyj7+A77Fq2MxvdX3Qy/iPCcFpPAQAEzmdO61M+HmA5lryuWaEuGluT0cPE0niN3v5KxoC8D7E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745513994; c=relaxed/simple;
	bh=ed7cb0v2N1WVNq3nQ9Ou0ggWGk18h3lU/5ZNKvF5mGY=;
	h=To:Subject:From:Message-Id:Date; b=eCfDIf9qJ5T0o7oKlMRUFpWSNqNP/ii1grd0roMhhrMTpMn7q/Xb80MF61cS6+j71pMoSJK5WsL+WPlrGEjjtpPep78qtr+n8xD3dxLOCkQgZShq7hhw8WQ7KoD14c6ZdpZAACOT0Te7TknqOZnq9p4VJmpaCFQbaHCyts6RuAA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DUYHLL5g; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DUYHLL5g"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EC1FC4CEE3
	for <ddprobe@lists.linux.dev>; Thu, 24 Apr 2025 16:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745513993;
	bh=ed7cb0v2N1WVNq3nQ9Ou0ggWGk18h3lU/5ZNKvF5mGY=;
	h=To:Subject:From:Date:From;
	b=DUYHLL5gYWc1ejGPk1raVY7wHOqE26Dob+OSHj5QqkAc9KpW2W0wF7R/8eijSJI9H
	 gmlSkfjvVDapeKW163HvWyVtjsmv2xSxaIAU0p4vzhQG2Z2i02pLco6LETDgRgLaZK
	 P2wSqCSFFSeYryUGovTCIwBQEVbIbie0th8Ba4ObzyeEfYrLLvZQ4O1osyE3otgZ7b
	 AlFguemPpA5aRuxM97gSyt1vz+ZgyWtTAGrHpao2frJ86hTj6yMx+zsOTFEKFvfHad
	 RY60BoegmD5WwZ2k4jraxXcT9rw49rDPWM6m+VjBZEgiuyKQsyTjk0TZVY3+uUOfgS
	 0HmBqEOkHCHIg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FAF1C369AB
	for <ddprobe@lists.linux.dev>; Thu, 24 Apr 2025 16:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174551399357.10469.8929761308797869720.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bef3677ea115b9709c06458270e243f117da9fb8a65550bab5dc6d221d973bca
Date: Thu, 24 Apr 2025 16:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745513993
