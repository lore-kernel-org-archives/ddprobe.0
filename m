Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DBF33932EA
	for <ddprobe@lists.linux.dev>; Thu,  3 Sep 2026 08:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788422434; cv=none; b=eidPY5uFDtZWDDLxNnb7nSf6xQelD99YgauIJDf0v+33/F5TXo4PyU779Y+KPgPSlaDnrxOSVp2nP8D4LdOMyPdd73lLyGPW5gS8GQMy2f36sv9bz+bc3sTD0AyTgEjjl+/gKG0eX8IC+tiTsb2G86ou3kIeKGPVOSSEnFRLa9w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788422434; c=relaxed/simple;
	bh=zEMApQAR0mt4n9iCqK0tcSSXTcxRmXG10LFovdUx0lg=;
	h=To:Subject:From:Message-Id:Date; b=CSYI8S8i8rViPlO8Nn5pYvK0f3RO2sbhIYaOl6Z3FQxKzt+7gV0wYHNIhnkBYN38OUT7nKz97bpUXlPq1+2VTnrf3YovnSrLkO0N16CILk1r43bhTqLw3ga22mgT1i/1G4DBThhq1ZnOraMWG0uqa8oysaWWVYkkOwbNvfyLPeo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lCGamWuX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lCGamWuX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0F67C2BCF5
	for <ddprobe@lists.linux.dev>; Thu,  3 Sep 2026 08:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788422433;
	bh=zEMApQAR0mt4n9iCqK0tcSSXTcxRmXG10LFovdUx0lg=;
	h=To:Subject:From:Date:From;
	b=lCGamWuXlah1fU2lSOBabRTXbTJ0+btBfu1V+6GDaXtyqAnoI+Z2rDGf8GDnrDqKT
	 4JACtffr2XLKX7MAXNBl3ry1910vWwF3XmIb+ZhIwydb5ni8AmDZZiqd9GRkcv3kdc
	 4+x5nhXPDgG5zJvs8H4qQLQeipvhs+0CudSz/T3TSMR0JrVgPAjtKL0TUjl6o8tr7L
	 qncXxI+7p/0mXUKrDjZiFZgz72WDDM1G9euYT+5O5dXuYSyVLgMucJE76D5Bkxp3xo
	 qU698gwfUDqZHSY05hS4ilV+lD4JmsAWjK3lB/grnRVH/qsmqiR4x2pGBvcelgex8C
	 p+6hwA2IT3vkQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE99DC624D4
	for <ddprobe@lists.linux.dev>; Thu,  3 Sep 2026 08:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178842243369.5861.11998672015625696097.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b8ff38744b07569ddcb8fa792637c83cac5b6206b3926b8952bce5dd9317f9cc
Date: Thu, 03 Sep 2026 08:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788422433
