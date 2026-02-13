Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2328624A07C
	for <ddprobe@lists.linux.dev>; Fri, 13 Feb 2026 17:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771002294; cv=none; b=d/xXkAWmnwisaT/uswnwN/WjJodrmGR9GyVGoF56u2Ex+tT58b1hXTmAQTeI3KSWiZwsZ/LReBiArHmOazy8BSRVVTJtOtw5OFlu48xGO7SxbczLqAzFaeIxmgT4/zv61bG2ECBbejXhCvs5xD0Z5v6RvsYuv/LYt26UuuVsTIg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771002294; c=relaxed/simple;
	bh=AZXhKQ5UibfXNizmbJL/KKgKvoZCaLZy+cVF0Rwb6Ek=;
	h=To:Subject:From:Message-Id:Date; b=GH3dzR1WSubjax/wKYrhCoGWdgO+zvTl/7IXsGK2k5G4689lHrMABNpz+EVZCDNseeComTQ5xNAuUoTydib5WyV9Wpadz8Uvrnn01xyEXkh1doLplXhSiuVkySWGZ4AjHxjSpx7DERPHdOZBshWpFw2r2ryP9nyoN43O9mFb7CQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LF7EjBHU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LF7EjBHU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC920C116C6
	for <ddprobe@lists.linux.dev>; Fri, 13 Feb 2026 17:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771002293;
	bh=AZXhKQ5UibfXNizmbJL/KKgKvoZCaLZy+cVF0Rwb6Ek=;
	h=To:Subject:From:Date:From;
	b=LF7EjBHUERkxCu4f1sdnk2FDUak/Puqhk6YzAsJtMSfeX+K9639BYSa6/9A/5gkmj
	 TFaQcX48RP3rstnxKLnIKiVNP0EBWCNQ604U237yRNlUj2TnmDO0MSdLatfN9zw2w+
	 cvA1LgIUEHpmWZ9VVFUv196Sj3BCGlCguAiWjGOvknUScNXcvYiATBiSZRVfynmBPv
	 18zq2jCKflj2lHDkMM36dznJwQez6v7+st0RmNV9KtKWeekwBwTvSTfBhlj3/NKGDu
	 vx+3HRCfE023nPoreWAEJ2Zm25MQIdDbxHhAioBnujEXa3X21crKYReLVHqn70zPVf
	 3knyWxXIFV5yw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A3A41EEA84E
	for <ddprobe@lists.linux.dev>; Fri, 13 Feb 2026 17:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177100229365.17042.15806534271961957379.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 91d4920391ad2619745b77b42d32a6f1254b567802df99096713c31f37a5900c
Date: Fri, 13 Feb 2026 17:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771002293
