Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C10F33FE0F
	for <ddprobe@lists.linux.dev>; Sat, 16 May 2026 19:50:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778961034; cv=none; b=Rh3k1thOdRiG/0TOojwsv9gwkcS3egynUYm02yw6LtRfWfK53pJZz/0+eL7k7NoNyTwGmI7xUE/1A5FZXcMCYmNPHCYMoyLKbB0lfH22O0HROIlARV7uN7bYKawenFgGw+R6sWfZmWDr8O8mYO7Vq8tCqznuEl4P1hXP8LNE93Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778961034; c=relaxed/simple;
	bh=OqkHZDHOkcHT04N5YDMXchelg1r8lcHv6fLXv8KFUPs=;
	h=To:Subject:From:Message-Id:Date; b=a4IhDf7aYYdEwjfFf1DG7PJ3kvrPo4h3kF3uEaP4oI0jpEc179dSEQJeDNBwJRaSy1M+jkMdAU9WB3PgMHlDswqy6zDNo9yiVycwHASeu645K81/RDpSJYCi7M1TcvE+I9CAvYhLLeK4TW/jL5VQDDA6kOF3sOF+GqMCZWNLqis=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hrAsAiSW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hrAsAiSW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C208CC19425
	for <ddprobe@lists.linux.dev>; Sat, 16 May 2026 19:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778961033;
	bh=OqkHZDHOkcHT04N5YDMXchelg1r8lcHv6fLXv8KFUPs=;
	h=To:Subject:From:Date:From;
	b=hrAsAiSWX95r3JgCaw955ckqFJZS9pQgdbGXaQkUx+e4ZvyfEswzpXf6XuOHg9v+l
	 W9r9ClfZ5h8QO9Ao/KIbajFgxrTVHccZwynMiFTfAHdEFfnNBbzRqie0/FWUN5t1Gu
	 ogM0O6/tQHiD46AK1GXOw442ODa0XZ+p9Miqiynh2cwgmQVovnin66vXfgr3MFDGix
	 EAQC2R91RxLhVeKnXw+XviAJh4Fr8DDs0J2NPyY47qgZdud2IER14RaI8vKG6+OcC3
	 UZw6du4T+4fS7kCXPeS11gVSOJxoASDmHSv04lW185oHbetHtp/qqdJPT+CmYk8uw5
	 JH2q3+h7D72RQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADC42CD4851
	for <ddprobe@lists.linux.dev>; Sat, 16 May 2026 19:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177896103369.29675.13505213350837717059.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c63633463549df56628f21fc70db6268dd682ee4c40efaf9f17364277f602851
Date: Sat, 16 May 2026 19:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778961033
