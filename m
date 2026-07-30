Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5719F3E0C7A
	for <ddprobe@lists.linux.dev>; Thu, 30 Jul 2026 11:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785410434; cv=none; b=MvQp+Bkfu+WDayvB3YUjq0sxwqyxMewbhEG3qMwP8mZ33G1IZmFpqyja/BkYM+3zfz3BVyZoqVgeLmTagCk7ep0j75knRhVT06w5gB20I1zlZAaJOsoSijlZIgnlkqQo6L/C4AnH8EMgX/oF1c0MrXtM0X8YAfzvCDFlUJlncfc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785410434; c=relaxed/simple;
	bh=y8htcEXEcZimV2PiGnLK2goXakiwJ8YYeKJpxYGD4t8=;
	h=To:Subject:From:Message-Id:Date; b=MgJ9oHsh4IBGzZRWo2knfEgkGCeBIom67dSL22vAzcTRAzNZVLRTeunN+R/iRaFFzw/1eFvWyepu3/GjSQ7dT4ClmEJ/g1CmHntLKMxCESiCgm1BYA8twRcSmomGPwGgg10LKdwbUeHpC2dfsRnzi9QGj5JTFhvZaWMrOdxsemQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gGyFvJ+q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gGyFvJ+q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D412AC19425
	for <ddprobe@lists.linux.dev>; Thu, 30 Jul 2026 11:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785410433;
	bh=y8htcEXEcZimV2PiGnLK2goXakiwJ8YYeKJpxYGD4t8=;
	h=To:Subject:From:Date:From;
	b=gGyFvJ+quHSgPEf/IVvNd3znR16gsWh/FR2OMu3cwj+zMZSJwwMEgI0dC7SgVxAzX
	 tKlJXA1vHzRNgpvmHJ8+fX1NtrJyZypLQpMyT/uC/J9bVn+SHuFOUMkM4RXW/Mk0nI
	 xxEmeOXpRGVkv9fSyGnjZmA0k1MaPcF6JkTAFboxr4bZwIu4ppvlHrtZMUSSZmQhtS
	 hjt+3J+LfaHwsMMHbYYY32hjhC9w0zNYSUjJX8KXBEBFevhiOCZnEFwBjQzWDQa5d5
	 rWnK49z4FWsKOi4MB3GHnYnKfOkVofRMl/XZdHXVjf/b/ZjsHAflvE+4q7aw68wpiu
	 UUy19rZSm1buw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADFA8C55162
	for <ddprobe@lists.linux.dev>; Thu, 30 Jul 2026 11:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178541043370.8211.11336392238166019259.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c70302e3ed454e312cc8ececf8514bf3a06660cfc4c5d3d813ad9ea6dc1facc7
Date: Thu, 30 Jul 2026 11:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785410433
