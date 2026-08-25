Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4521E21257F
	for <ddprobe@lists.linux.dev>; Tue, 25 Aug 2026 01:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787622034; cv=none; b=kFd5bZUV3BAmrnic9Rx19j2ynV3KFIt2XOdwdA1Z8T24QipdjPx8HeKl5q9TVi+ncBPDCslYU6fQnuBW1gieA+W5/2a7BF5NeOR0QS5bDmo8z7hzGdahMybflwQGNkj8IqQI27kdq65pT0t9iHdsIo9MmwoM3LcAK06V9Yd4GBQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787622034; c=relaxed/simple;
	bh=h/j6ouYzVGFkNM70FnmetWxxXfMJJCIPJWFt2EAyLyE=;
	h=To:Subject:From:Message-Id:Date; b=NBZAOsBfKYW/lTzhPQ4ZfZxBySs25kXh4ToHP3rvMtffmG/CAEBMnpzJt4AY+enP2Gk6vgJWpxiSz+z7+ZCWtS4D/7Bzw4kKfZDttAxotYE+fTvRS48ifVxmSe6H8mbSxNDi+c14An69WUbo2/BXmh2qLKCyUmyoFw6n5yptYjs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QKSuji9W; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QKSuji9W"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDF6BC19425
	for <ddprobe@lists.linux.dev>; Tue, 25 Aug 2026 01:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787622033;
	bh=h/j6ouYzVGFkNM70FnmetWxxXfMJJCIPJWFt2EAyLyE=;
	h=To:Subject:From:Date:From;
	b=QKSuji9WZ2z3m+6vG/nqOcPLEj0d8/TpxcNkOksPrfbzmHGdK3nt+XfTR1pXbhJz5
	 lyG3xT4XzPqPOx+65K9nfTk/REP1nr8HtTKGHh13DRlLn472XlccmHy7ktftmuYqkw
	 plcq11bcJHbLpOYp7hrCKoE/fw+JCuUvInA7nRw0O8P0dDZRWpgXTRsgpZHkTwZQ7o
	 grWhLzQi4wczkTXQgU6q40jCOMYzEzK32oMYH3YdC4slh8wfIdVvNZbC/c30vW0IwB
	 RIQ27YcX3wctevB+ojfmO6R6ux03LtIp5ZK3VMKxpYFaLtVee9n7c4HaOMbEHlxnrw
	 1nXY+mpmSWH2g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA638C5DF81
	for <ddprobe@lists.linux.dev>; Tue, 25 Aug 2026 01:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178762203368.23285.12328143317149249580.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b69aaf603abfe3b0984af0c458f8f45aa1e700e2febef4732713485073ce1edb
Date: Tue, 25 Aug 2026 01:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787622033
