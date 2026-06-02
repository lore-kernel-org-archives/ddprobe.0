Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 351381BBBE5
	for <ddprobe@lists.linux.dev>; Tue,  2 Jun 2026 11:14:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780398874; cv=none; b=IsigBENboShb2/XaePh20LzYphMaO3UBvfiD9vcdgcOVAGjoaA/6YUT7mYPbx0WRUyFZcmFwf8+LJ0kgXTSkYyOk9Jy+DLANhXlShk+A+3djwNvV+yDaSgk0RSCP/xF9x9uXL0fnTUHYdSaVmo++GjKg45Xv2UJ++0E0/KaEUtA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780398874; c=relaxed/simple;
	bh=uC49RJkUWpGNAM4B46KK/+kvShkrPVgnz5lX4yrCkvU=;
	h=To:Subject:From:Message-Id:Date; b=A9GFo9HcmT2Mo6cvNb6tnn9LpJ5rCm8oY4eqGah5yluJViK4vBOBY4LUHSc474Qfq83yKcwlw5jIrDnIVZTg5DQb29mcNrAje3CMIGicCJ7KrVB/oSXLBTuFZgiEC7EQeql/6xt2FUGjY90jWK7PvHZF0cvLP6gRrGAIj4PQ1+M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DZBsTq4t; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DZBsTq4t"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C385AC2BCB4
	for <ddprobe@lists.linux.dev>; Tue,  2 Jun 2026 11:14:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780398873;
	bh=uC49RJkUWpGNAM4B46KK/+kvShkrPVgnz5lX4yrCkvU=;
	h=To:Subject:From:Date:From;
	b=DZBsTq4tWVbHRdZdxIA5IUxhYRZRAmM2e9dzKLlvNFW4CFpOxF0nQFZ38ZIvUGKtW
	 BLbVOVOpoTJxhU8XOt6izhpjJBZ68+xWcTMBUKww5ZdsrC0/cm5p1pou98YarFEYFM
	 tmys6YZZnytf26U0mmKTCV/4wMpr4ikHr6Y5ESipXR+/UUrp68n0aiPV4XR5gPEPTW
	 Kf1fYyJhPYHQnnDTlCK9QxcRJ6lhKxZGxOJekyZ3oPO6mIi9tCOCOVDLpFERftkTP5
	 gulCnw7yyCjqsnrgjlSKUOOYFJidevyomgqeDONNU8YnqbMy9dt8SL1dinhykKOZKG
	 MgUGaxxGhYJFA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9068CD6E57
	for <ddprobe@lists.linux.dev>; Tue,  2 Jun 2026 11:14:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178039887368.11175.2048954863288080097.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e0429013f8dfb1fae2e8e6c8d209ef4402fbb2d087cefb5890b25a4e2b4065a0
Date: Tue, 02 Jun 2026 11:14:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780398873
