Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B498366DDF
	for <ddprobe@lists.linux.dev>; Tue,  3 Feb 2026 20:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770150234; cv=none; b=egGGSXEw2CbNxFld7Tv67iJjp3xVLvgaaoutP5eHWKTgFZqHwm12yj9bB5GVsUVodcEie4jdDle6cYmCrECCmfV+w1UbKtaahgR1vaGuCx1Nez+1kboBKBU0wSy9IVUxXVcOngbQugs0c7F94Fi+7xH1vqZPpZWvmJWikqMofJs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770150234; c=relaxed/simple;
	bh=XAH6r/mxs5KqzpF16nRHHaovwPQMe5Jscgc+ftpFIdQ=;
	h=To:Subject:From:Message-Id:Date; b=oECKj75wvDc42yBL3dEEd6bX8HShZdxwWoKrmiELbSpe0oZv0qLWcYAYcyuCn6xjH+h6rl1wct//86vDKnCUKYwnPGGOdS4MiybwkZaOWeYTpx5XdfALZW2DPRoSzBNTS847gUmdS+Vy3zFUF3sok87UD+t8FFOqfF8FO3AcGMw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=etsdAV4N; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="etsdAV4N"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C63D6C19422
	for <ddprobe@lists.linux.dev>; Tue,  3 Feb 2026 20:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770150233;
	bh=XAH6r/mxs5KqzpF16nRHHaovwPQMe5Jscgc+ftpFIdQ=;
	h=To:Subject:From:Date:From;
	b=etsdAV4NtKltmd7l+OgnUhcnbblulMmnN+4YumWh7vVdBPIKfGKBsDySuy/qMLt9Q
	 kxiJ+zli4mjYCCspWYdsnqny4pwZdvqcE+c3KqQJ95zuKgNAU9Z8+vxQOCLSc62lEI
	 Zp2BjrdstrHe/xtOu0GUc0EnWHfav7nfHvbOncsgdQWDbD00jXk/YH77bWnhHDTWEz
	 wLibUBmc/pTJz0LQIz/L9lKa6qmqcBorjjPNgoKsmxUN3fhhXDD3JuQeVAQjzf73i/
	 zJSaA0b0zPddW5/73BVmDBTEiKFyrpvESJ+PvG2CDv6CezvgnJpWOkbPIxiQF96f91
	 K+hFkowqrhfSQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B24F9E8B363
	for <ddprobe@lists.linux.dev>; Tue,  3 Feb 2026 20:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177015023371.22417.9505555307225543800.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ed03d7cf5162663446a2bacdf78f5b4f10b0723709a6c7378439a9842eeec003
Date: Tue, 03 Feb 2026 20:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770150233
