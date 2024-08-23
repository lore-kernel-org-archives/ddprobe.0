Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1565F7345B
	for <ddprobe@lists.linux.dev>; Fri, 23 Aug 2024 07:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724396754; cv=none; b=KfK5JLXk7JRRjQXzuYBOFAnvkUPu9vfgWW4BYlcbFQj27FRLhgrww2JYSa2od3TScCz6kE33yK9UxBxhYek4MW3iVOfH1mYLtRrji19fR/T3KUTy+iTQ9vTCmRVrovVIMVbNOofP50INgu00ZrBz4xLPHu/bWHoIrqUDJlfyxuk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724396754; c=relaxed/simple;
	bh=8+u3yXFcG6DO+lMwnBAbPlr1Cpl6aaS4t1rtZDCqblQ=;
	h=To:Subject:From:Message-Id:Date; b=UtXxBDAdmoXTuIAgULkE/4q+ok9CkfkKevQnZm0dZJ549EXUiZ6pAZgDsBqy/BhQeTakDfMU0tQ0WzOu3QlnDFWyilLo7bZBlPeI5KQALT2wOhnXGqKu3EL8BzV29DW5zsfIyZjBUwvOwf9I9XQ73sqhZpLOXTckZ9wvP05kVo0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hYiXPrHq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hYiXPrHq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A741EC32786
	for <ddprobe@lists.linux.dev>; Fri, 23 Aug 2024 07:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724396753;
	bh=8+u3yXFcG6DO+lMwnBAbPlr1Cpl6aaS4t1rtZDCqblQ=;
	h=To:Subject:From:Date:From;
	b=hYiXPrHqnFwdn3bulAF8bo+YPXC21zAINwMrYSIaNxWHPZ9qXsCaU/F4K7kbgyLew
	 6BuTmyMvdSURHrNblsT+vFR3g7Us7IWsDthlyd8Ac6UdJRWt8tDLkAk65B4QfbRUCn
	 rea8tJYV5bwociLM8eNtGXm4dbynRTm3gggsOG34Sqyz7V4yr+l3KtSeyIi6IclIvv
	 phLSTy5O6Kl79jHKId7AyUGtvEgj6sFVbM8qkwngmgZdEVIJ5U6maqEgcEnbd70Anu
	 6VrB0UUPgsCIUbD2LjqSkd5ftaFgeJEVZojp4P4x15bkcANSBgnocBwHfkEflBYswa
	 iACnaJsaagkTQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93EB1C52D7C
	for <ddprobe@lists.linux.dev>; Fri, 23 Aug 2024 07:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172439675359.2616.3128079074883658523.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d4a3540fcd8703e9c432ad4d7d5058674a672b577c6de749bc404cf874bfb1fe
Date: Fri, 23 Aug 2024 07:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724396753
