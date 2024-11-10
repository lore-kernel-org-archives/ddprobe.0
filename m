Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 13FC5142E7C
	for <ddprobe@lists.linux.dev>; Sun, 10 Nov 2024 09:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731232554; cv=none; b=EdIUGkWYhpUkeziwsQRNeuPxgLLLBBByQas+/4vGMr36nucOIWShJJK2mTegXZCG47/cUtkoycGSTxYF+UihUc35816jl0FJpjI7CuzDKpSDdBngFdfheAE4dznmqMcA1J/Iqojx00HQNaKaQvlc0Gly5w20xabgR51+fXLFmwc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731232554; c=relaxed/simple;
	bh=e3Qo3PkDORFfmBh2UMoJn1e/zBUo36t8NguBzC8YGyM=;
	h=To:Subject:From:Message-Id:Date; b=SjFkxL++BOec5cNn9/083pXTPNlWwGzIOI/LEkx2vvK8S9aoPDVXxsUms6DM+T5zFy5FOsK56JipLJ6QFoLZM/89zUEBGVaPWQRL6f8/tUddDESHIpzaTpYck0yCsXlvYY35IJsdIUESPnGkOt8NWmy3KfQqLfOo/KVIweV255A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=B3WB60JM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="B3WB60JM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5085C4CED0
	for <ddprobe@lists.linux.dev>; Sun, 10 Nov 2024 09:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1731232553;
	bh=e3Qo3PkDORFfmBh2UMoJn1e/zBUo36t8NguBzC8YGyM=;
	h=To:Subject:From:Date:From;
	b=B3WB60JMHK/XHLRdzc47m/335E2jKW+OEvrT+919QgwnbuTJYse9KRWYsd151cqqs
	 8AQU5ck5XBqSGyVmv0V9/hyugVysUspbNTBms7GA3JQYa5Ff4OQpggj0qGxbAf2oMU
	 u6j1clivPCVTVxIWNagBYb4WsPcJGju+s8Nuqj7gI6CHI/vHnV1FPZw5+361BKTAmG
	 KjHmyH9HK2I5pQFAwhnf9j/bxSpneaqVxWVq7BBCgkoctXvTMHEvyJ9FRcoQQAUcEA
	 V2tIiUa3uJ8ip0DpWvSnEUBZ4z8xmHHK0m9dPQb94n+ZLbz7d+Jmz6vYkj4ZovAFnB
	 LrzdouEOBw67g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95CD0D5E380
	for <ddprobe@lists.linux.dev>; Sun, 10 Nov 2024 09:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173123255358.2782.427243212782458037.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 597e26da0a1e3fd6a71cd460506c57aa4a83f1651c20c56925b253c2c693c2d1
Date: Sun, 10 Nov 2024 09:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1731232553
