Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BE4B132861E
	for <ddprobe@lists.linux.dev>; Fri, 18 Sep 2026 01:50:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789696235; cv=none; b=ZLzuVXMO64rlv2nOqAlUyf0EtAh9gAva8SrWNU83M9GcqurImuOywtq+BB71ILYiHekFhxbFZskQETEGbPVZ6aqPMI8jHcJk9bysHAKcH9tV5CPLhCFsgV2IkIoXXn/N8KUyj4cEbRMXdagIZa0ANQqiADby/pfX/tAOhB1VcQI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789696235; c=relaxed/simple;
	bh=wecXxec5SiDNC4QvAc/dKlAMiAd+hzI2BhxGsAk50Ok=;
	h=To:Subject:From:Message-Id:Date; b=r5GD4/db1UVDMmE8gutOe2YGw0Atp0wc2HaW5XN5ogH9gjlL5XfnDYHngn35xJlYkHKWvSILINgKTcsy45zDqqabZUYqckTHJj00SNi6DMB1jg3Tn6vi0cPXuy41c7yLJBLGK5BOh0cYjnoDbMGVFBinDdFZpdiM4GxXbr42Sfg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=L0GsJQ5n; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="L0GsJQ5n"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD798C2BCB8
	for <ddprobe@lists.linux.dev>; Fri, 18 Sep 2026 01:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789696233;
	bh=wecXxec5SiDNC4QvAc/dKlAMiAd+hzI2BhxGsAk50Ok=;
	h=To:Subject:From:Date:From;
	b=L0GsJQ5nwITgQ+I9t2dv+uvwba4RECT5nrfkA/jUFS7XbtEDCKOuWShV/4H8qHxFJ
	 UJeQK2TOkMvi+yNcxMBZzjtCDWsMoPvyacenv4/qMSmNsGDbA1z2J7vpEHdTNT9mkC
	 t3H/daCz0QrPfHawEUJsDkaz3lMfa+3gSPIFiCjHOvRDs0uLm+YUe8dSucRXURV6mG
	 ec3gS8byjy+m9a/fyAbzrfa5CqSwQ3uuh4/Qj7VHelYEAa4mauWfBQBDJ00S4SymLe
	 +UcSTaYmBEMRExpdzSpB9vihTtIqokpEOPVtAz7jNZernruFDAQAQGL3tSS6vyiQD+
	 hjN97hfiV3Qkw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9A7AC982D0
	for <ddprobe@lists.linux.dev>; Fri, 18 Sep 2026 01:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178969623368.7753.5728547183240646037.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a98871f7b0cdc632042c3cf17cba9a1b17f7ba324d7c0a8e5086d1476b2162f0
Date: Fri, 18 Sep 2026 01:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789696233
