Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C0E032BEFFF
	for <ddprobe@lists.linux.dev>; Sat, 23 Aug 2025 23:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755993593; cv=none; b=KE5KHum1CkgZeeqATy7StJvXcGWLIkm5Q0PUKPnrDjHj4gEoLpyD2/TPIOMWcwCyvLbR66IRwlS6GoMPxOBRPy2SBuUCQdFuWH1bUuD8ylBOOeyEVopmaQa/sq48ucgbfyrM/MpC1vZaKehZNMQQ92cH+QyfQY0GH5h7nOkQlKo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755993593; c=relaxed/simple;
	bh=zqBn8HUO10uCVYdvIU13NCfuU4foFC80GcPyXysVyuo=;
	h=To:Subject:From:Message-Id:Date; b=TFix5RMCwIvlYAfb8oLYdudc20+hpb4QJZ+pd+usTYP7PAuQLaeA5GwPZT31akv52lYA7Z+M/xxkDfEkZ609DM4uNEAkg5pA76uZ+emXmhz8jGwoe9DLt292l0y9j+DkMTGmVVNPv+9K9adRulgcMupJi+gd53K0sPsYbjqzigw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pF2cEeW3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pF2cEeW3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FF9DC4CEE7
	for <ddprobe@lists.linux.dev>; Sat, 23 Aug 2025 23:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755993593;
	bh=zqBn8HUO10uCVYdvIU13NCfuU4foFC80GcPyXysVyuo=;
	h=To:Subject:From:Date:From;
	b=pF2cEeW3ugy7HvlvX7m3i4/k1ekgHnSu6FEp9P37nEDtZEo4FkPMkGmMq5x13qZoD
	 g2ovmT8L6lHpk+hr5a+4NvA/85KBU66R71d7FwIxDs8kZsdGW9oqmJrb+SPg2Byl8k
	 1VPzIK7qKhAU+gWxJGQwxfNISgS1gyVsVGX37F8L/1MZ4CVRD0rvWJf3EujScUSgZd
	 /H0tx47GT17r2w3cm4PgiX3nai3jACb1sLr2qCVAFGOPzDx8zwYjPuVcKkBxlcpkya
	 0GpmDa68g6d91Xp9tkvuybtXDz3RtwVnezw9TUb68Y7nIoQ5KBGB4LoPpSvQYaIafl
	 mCXzBtK6piN8Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90AE0CA0EE4
	for <ddprobe@lists.linux.dev>; Sat, 23 Aug 2025 23:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175599359358.13820.5388370380100645813.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 245009205a7ccabfe9cc3cd7593e81a41bdde529da8cc2a77d79a31eee741075
Date: Sat, 23 Aug 2025 23:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755993593
