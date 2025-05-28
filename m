Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 536BF1DEFE0
	for <ddprobe@lists.linux.dev>; Wed, 28 May 2025 21:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748467194; cv=none; b=jTPgsWL7MF0RxPNF1inU57HEMmginchDZ5otzH2Mm9/Nw33ZsN4vFkxVv8Gv4wTllrnyFtgNdHssbx2i9uz1DXY0rnzfjfbVFvmVGEJxLSf7sUAwBSheM8XgnAHT1BUB9NitYBduNL2YXup6/9LClMcw1lRGHSQ7PtM0K0aUGBs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748467194; c=relaxed/simple;
	bh=KbIcINPfuZkp6r04+6stNoz+3ulJ8u2qzVQOdmZa40Q=;
	h=To:Subject:From:Message-Id:Date; b=JrRxK2OpbOwncCScMyd2WvpCEqhNeaB9+sb4cqRDxyMKun3rxZPQVP5neri0I2nrcM0qMRj83uBM5RyFwDJUxgtuAPSFQGx2vu/QPGgXwshRiNbOnHLnaHvDpVM9nZJikKBMWXACFbQU4bLlFjrcbRoB6+7zbRXayfLYwPXGnH4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bDaevnDm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bDaevnDm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC98FC4CEE3
	for <ddprobe@lists.linux.dev>; Wed, 28 May 2025 21:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748467193;
	bh=KbIcINPfuZkp6r04+6stNoz+3ulJ8u2qzVQOdmZa40Q=;
	h=To:Subject:From:Date:From;
	b=bDaevnDma90YQt0X5y2kXiMC7lk9YRBjDKj39Z+UFjCH1fi0SxXlfN5WnO17HlOtv
	 VXt8e5ShqFYxQpTa+cOFaScszNIpOXmVFJ2hRKYze5rADwvgm0/noiOnAWEe/BEAuN
	 sKukGVJ1e9SjKYSb6HRVXzvjqmdUPRmzuPkMm2aDIhlgBMjbC2kjXbddTmluCeu8GX
	 W16ydpLh85+Yj+ehLqimLOi35+qks7hYaUVxdjnAUllP5kAqkoQg27g7AqiNvQJGRd
	 dJkf3N1LZS6WlpaOs3HX8ZE+gsNO0kQfdyFuPbrukuN+T57v/z+1HYKcyJ0Z0OzvRj
	 vuSHb4FcZBVHw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90954C3ABB2
	for <ddprobe@lists.linux.dev>; Wed, 28 May 2025 21:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174846719357.17547.7003517006876899648.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d1470ceb57bc1c8143a735f7a1329adda78494c202c453f368b7c62af99a8e6e
Date: Wed, 28 May 2025 21:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748467193
