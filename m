Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36DAF39792C
	for <ddprobe@lists.linux.dev>; Thu,  8 Oct 2026 18:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791482434; cv=none; b=gwGpTswJ4OM/2L4AcxveMCqwQi2cMJBSfzxUwxIAE3NUQla/xDpJtS6pPnhjlpwIzJwWO/FiwGeeczJWPOWJ4EDJvrcIKgupiwp6m7R4FMg9CM57avgb5YREUJAln3xEX0SdbbQ+rH7Wvf11qamb6TlwjQWo4tODoySfMHOsVho=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791482434; c=relaxed/simple;
	bh=CBtitTQ1F6rJ9AXdUSZF1pSf6pleMDfbxyqzxAFwGIg=;
	h=To:Subject:From:Message-Id:Date; b=AlJivYJpVvfz7EAY+gz/6D/VvCCqu3LUOIu2XY84WVTWlUu9Mxjr+bqXX7l4TMBZeds5xZZk4D1ttFMoF0FV0DWVXbR8sQfEOztDJpxqxIcN8nxfs2HKO0mvvOhasX7RV0SOoReR9DpOpN4b/E3F1ShIvysh68KrZe3F44cGLBE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cC3R0gig; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cC3R0gig"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD20AC2BCC7
	for <ddprobe@lists.linux.dev>; Thu,  8 Oct 2026 18:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791482433;
	bh=CBtitTQ1F6rJ9AXdUSZF1pSf6pleMDfbxyqzxAFwGIg=;
	h=To:Subject:From:Date:From;
	b=cC3R0gig+aLbb7L2cs/rxXv8ufl4ANVA3XFuUK24WAF86Lky8F+AEipOETO3ympq/
	 A7KZhLqixHCDijtEdT727lKWqY84cE38XC8AA3DPnEnRqHJK9Qag6gDiCeakPKzPgz
	 usBIUb7n5GPL6AzjbpdTjGveJ9Lk0zBkVjmI5/MWCeFSrrzKgARmx/LR5KWG6SECqe
	 hpVdjHWFCUpSaDMxQ1KSZmIr78E5Pvt3Eul1dH1eiKWcUDFfsyRt3IWTNSLEKvGK9B
	 tnGSLEpZmY1ztlpCNZvp6eKz1X6FxQ01W76blK3LA19zK98TJ7mF1xMOjt0JRZMXQ5
	 rgqPomFFRU+lQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A96C1CA600D
	for <ddprobe@lists.linux.dev>; Thu,  8 Oct 2026 18:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179148243368.30127.712046178443300717.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7459d954a57d6fe1901970cbc6c46a7f2549afc718037aace259716c8d54e0fb
Date: Thu, 08 Oct 2026 18:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791482433
