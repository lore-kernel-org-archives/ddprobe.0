Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E4B217DFFA
	for <ddprobe@lists.linux.dev>; Sun, 30 Aug 2026 05:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788066634; cv=none; b=Z+ubP8zB0NoBpba/6bpFY54fgC1EMx1+/WBqCWE81wIDNlZcwPDDuyO35TkXo9rA2rGJExj0yBEf9cmggHwUll8kAMo4mH9IXl6XXtr11z4DO53hKop1xt0wBHVxJvSZWJhF+pHkqbwE7+M2DHLsiRBbX/AamG3jX05ze5czBhE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788066634; c=relaxed/simple;
	bh=wi94qLe8BYCeQSQI0RrQyvHI924JpPT7AGKtwn2ibKI=;
	h=To:Subject:From:Message-Id:Date; b=CxBLhIXMUDq44+gdafWQ3IgJw0PMgvpsp4gnq9Zik5ByTC4xP51/FrUy9DdynTmcPh/BQY3OD0Km88kBDixZTvU3ZnvrML7NXRdgMtPcl0nYFVGEREDEDH3xFsFSNmh79O7nLS/1LwStOcgOei8wI4CFA0NWudeEkUmWauVMU5I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BrpdSHSE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BrpdSHSE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3986C2BCF4
	for <ddprobe@lists.linux.dev>; Sun, 30 Aug 2026 05:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788066633;
	bh=wi94qLe8BYCeQSQI0RrQyvHI924JpPT7AGKtwn2ibKI=;
	h=To:Subject:From:Date:From;
	b=BrpdSHSE8JwA8CmzdUD03raKI/PWn004IM0La97pTo5QCLKvUSa/m7l5FET+384In
	 +0/8AH4sxtEMdD37qhoxNK6zniGtBY2oRgyyYibS2Rbmose2UJ0J9Evrka2efoZp3P
	 ESZzPCEBF738wiBwZx9ixMsuRopU0zM5X0ZasUC97XN0MPMjkJ5EFqEFujTCruORrC
	 z3fXKElMEUz0+xWmh1ekH/VewSboSOcK5/KY8AxrWOg47zye8o/ZT+jgcGCYXi7Sg7
	 sln0qh7dILEl9V3WdBYi435Vk9WNjNhGxM1Ne0MUCFvYi9VvXCYE9Mo+LpQHTIRFim
	 hEHAmU1Ubnn7A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0253C61DB9
	for <ddprobe@lists.linux.dev>; Sun, 30 Aug 2026 05:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178806663368.9427.14545895191034890716.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4ae0de09fa50cc12c4c29d064729fe312240574110a1d79d9268de28787039a8
Date: Sun, 30 Aug 2026 05:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788066633
