Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FCBD79FD
	for <ddprobe@lists.linux.dev>; Fri, 25 Apr 2025 04:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745557194; cv=none; b=tj95F61KzHvP85kgTSVb18MfUTThOeQKg6D1dML7+BWpX/vXLXZa8069FJZ98+wwyymRms5Rv/OB5ZLqWCZ6Sz3K+uWl8xo97Wai8e0Yb/KHTm7c2xd3P5vlyGI8OGdUeQPLrtsJ/ct7ySlhw0o5uuZwXVrtDllUCseBOUXZpwE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745557194; c=relaxed/simple;
	bh=0HSk6hB1hAUvbqZJk45MOCjkIHn7Ch2OJGKWoXpt26k=;
	h=To:Subject:From:Message-Id:Date; b=NhZ+L2PG0MFpkAHIjXj+Ii30QsthiQ4hMXxYPSIYq34RyjEimiYRZA19Va6KDZByno5/nN//NrqSOfhjujHgL/GY4TViSNfH4LJNosWXei9YJccb2h2U5WGoh3SBpXjXjJBxRja5ozQe1TFxo04exL/kKznTiG1cfcyqobIhmsQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aQdx9zE4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aQdx9zE4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A13FFC4CEE8
	for <ddprobe@lists.linux.dev>; Fri, 25 Apr 2025 04:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745557193;
	bh=0HSk6hB1hAUvbqZJk45MOCjkIHn7Ch2OJGKWoXpt26k=;
	h=To:Subject:From:Date:From;
	b=aQdx9zE4P9NZPChFr7x6xvOxXVUAvwtBg2h4HtVBBroRRRFBz/pk/TYq+ORKlFaUI
	 mpc0uj5GyUl7KrWIpm+Xg58LHeKaKOlnIhg2ZOByHFE+Aw4txrUEP6wDy76kj3LMoy
	 R0CcfdzbphFLfM+OzNXDLqh8XeDTsgzOktNkTlqjbMUkQujqrD8frTXC/F56DmV/Fx
	 ESsiQbiI1jgn63fTsm4jFYIR8vEfLuXUVR3frlMEF76chL0K6cvvlmoN/giqVhwpq/
	 9Q/8CvGFoboBOItJf9FirUYuBLloB64CgOPPsIYClRv8g+Y0HXP44FVRd4Yb93D+7W
	 vqFicqjgFWbbQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F5EBC369D1
	for <ddprobe@lists.linux.dev>; Fri, 25 Apr 2025 04:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174555719357.3929.11567876127596373993.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ab07bc577f3733365936fcfe8df4723c6023d9a183523f6f4d0c98b44857632d
Date: Fri, 25 Apr 2025 04:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745557193
