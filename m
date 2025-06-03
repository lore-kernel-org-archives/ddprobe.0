Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A41917A2EB
	for <ddprobe@lists.linux.dev>; Tue,  3 Jun 2025 04:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748924994; cv=none; b=M8dIknuwOFWKqhcjuVmMAdQTX0qTIp6ealGJd/Od1PeOvmAv6WRIzPDLKe0CNPXBnL6wFeA4Ys3xWUG6RxQFXc7Aa6tr+S/431yMMhmGUA4qOl10o+4cdRuQEkI1OAyugxdKTCwBE2ENkzVHBgJF1CUDG95rIbsSREk2OXCHtqE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748924994; c=relaxed/simple;
	bh=FE//+FQ0vYlfOl6l0HLJ0RgpVj6NAVPk7iu6Lwdp6eg=;
	h=To:Subject:From:Message-Id:Date; b=RUdm1UCOl68kKKTPIJbB14XWk2GBW/daXX99BFUsPp0eCNn4glNepE4MKx7LPROzl+vaUJXaca66Jr+wU85ITzkViScI6+3K1ZQSFMSzNkVCq0VaPAr62wBMcQly2NlNJaKJO9/fIA8/DmB+F2ynq+k4QclCDWKvp7D2+tMwCN4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FuztrXWg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FuztrXWg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5019C4CEED
	for <ddprobe@lists.linux.dev>; Tue,  3 Jun 2025 04:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748924993;
	bh=FE//+FQ0vYlfOl6l0HLJ0RgpVj6NAVPk7iu6Lwdp6eg=;
	h=To:Subject:From:Date:From;
	b=FuztrXWgjujgjLuSRguMuHeR9myYoNPknhg5zPTL+xYx4gfWPO+BYSzKzn12q8iRl
	 gPkmcpYbhWPd32a3gEzZTs6cjxUqO+2wwTFDuAsy29e3p6FuzOq2/DFH4fo0BAd9BK
	 XNMFFsC2MevKr0bleGRdhUIYkyrRVmuZq2JkRuhWGoAlk/Met0VW7OEswF3YvI9ln5
	 Ax+zrmLthZ0Sd04T6h++NGwBPPlrXEO5mjeb9BvcmuDYjO85r0dz12KBKBv6hPFeK1
	 ObzW9r6cgWfKWlUI7kfJHIs4ePJ12dWatSFb5fjoBQCSHJ4EwofJskRTmNWYupmfSx
	 XpwJqYaiAVLFg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9198FC5AD49
	for <ddprobe@lists.linux.dev>; Tue,  3 Jun 2025 04:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174892499357.16693.6098354803724127514.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 97e7d8f460a23d06ebc759a6379ecb4ee5506baabc3b35d19b2ccaf681260c7f
Date: Tue, 03 Jun 2025 04:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748924993
