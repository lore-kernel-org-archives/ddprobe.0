Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 612713FB1C
	for <ddprobe@lists.linux.dev>; Sat, 13 Apr 2024 14:29:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713018563; cv=none; b=IFEFEQEx9otXgehUQXCjojd1n+eeQQ2N6ZsQSPv66N3f6PKYHvL4oZxZEc6edZKULFEcUnFCa+a5lJFL1sCTSe8aEHOE42UarV6JcOq7CcP/xANH9rh+y6UwU1dkOX4XIvC7DP1CiFdrX71/JO59HtP6FP88qOZC6RKCLSggWS0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713018563; c=relaxed/simple;
	bh=KjGPxFO+AVQTEft+yuYV+LY06rov75TL0M+96xR6cZw=;
	h=To:Subject:From:Message-Id:Date; b=oJ/yOR7jJVRxe5FMgzan1k23IS2eaWCC4vLJwJj010PC769zaPIG/gnejh56awUuYba2CeMxF9vsMGT8iWyiWlpOlF4f7QbA9oQmeuQbq0ZjifJDJyGrT1ZCv3gr1xzsPY6O5UxPyWB87SsAAOEDq43HEW8Nq1xr0K2QJISb1dg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kpxebrHn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kpxebrHn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7EE0C113CD
	for <ddprobe@lists.linux.dev>; Sat, 13 Apr 2024 14:29:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713018562;
	bh=KjGPxFO+AVQTEft+yuYV+LY06rov75TL0M+96xR6cZw=;
	h=To:Subject:From:Date:From;
	b=kpxebrHnR6xM1laiIFOo1He7d5qXAAYi+I5CawFFT+Ek8FRixnU3cN/iPlpEyrskI
	 RnWMzwZGX9JDfL8aQWwiusz4+e7vLKjGy4umiPrRMijtfkUOU76/j43uR8bIuCLvnn
	 L9qn1uxn68nWpk931AUF1iCW7zonIWVdtOKG46oh6rb/k1HiHACLTP/KTmFLy7LyDE
	 +EpO0E/matmeh5j+LP7TMwglq05l/CAgz7yEoR7gDvWJr2l7x01TBgw7+X2nuoq9ML
	 KsbLUS2vMS4oLcrzDHQOQmR7VOAhhev7EOGHmAh2ZQLa3UtqtxXrmP2QVdHhKPhdIq
	 Gg5VcLRUDHA7g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C039DC4345F
	for <ddprobe@lists.linux.dev>; Sat, 13 Apr 2024 14:29:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171301856275.24698.6503242193707063018.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 838e02a425e950e115b4627d28b2c95a565551fa699f93c7478d1bb53537daf4
Date: Sat, 13 Apr 2024 14:29:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713018562
