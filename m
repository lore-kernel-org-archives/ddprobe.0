Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24F1513D538
	for <ddprobe@lists.linux.dev>; Fri, 23 Aug 2024 10:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724407554; cv=none; b=SLnYnW7TB84ksR0FdUYfgxW/au5kyh33JWnoUJLivgDVZ4Vuwidcwe4YXzdAItGjk2RKrbJQkanhP3Jzz8HqlOTkvDXV41DhE0tF/sKmoNR8dridWBdUcDS4T7j3bwoveAiW5gTPscmLZ5NDHJXXysGgi6eNKEnh+TdLOSimf8A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724407554; c=relaxed/simple;
	bh=HJz+1CxEXTzHE7Ecas0BquU3wMPejXUuky9aUzgVP0w=;
	h=To:Subject:From:Message-Id:Date; b=Df3p4CcGkT7u7kK88rIhKqAhHMnnH7otJ+bCeGkUZ+14bq8QxYjzgwXPL73dD6wsnDL8QCeUKPgd1H3nPrXIMM+3i46+ePRlGxdGyQyVyVn+A3eTIYxGgIJjba7MDM2tj7z4VE3JyZ9EU8Hszr5GhTO0+LEoJsW2veCZ5wlZC0Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ljnI7Oc6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ljnI7Oc6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6F2FC32786
	for <ddprobe@lists.linux.dev>; Fri, 23 Aug 2024 10:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724407553;
	bh=HJz+1CxEXTzHE7Ecas0BquU3wMPejXUuky9aUzgVP0w=;
	h=To:Subject:From:Date:From;
	b=ljnI7Oc6VYewiW45igxH51huV5VNImflJ7TJ/+30JDeS293vU0Brz7rlgIu4Uj4Q6
	 q+oza7uakGBlfJVT206bo7YpSyZKGzqny+9VZ1QPUbQFzjaj/jvLVt2AE8Q+bwMfJz
	 b2pmPKp/gud1gisVNyrdQg5+3TEgFMsc543geq7luQXLB1C7SmHW5Qtf3CSwKEptfj
	 vTvsINC2O/HyLFT2fs9L8legmM2Wu3xxmxIJI4j30Rl1fsg92bEBC1AXqPK4LY5YVh
	 g7BbcWrFV2AaY+As0YQm08iqLYcLZLrrJyJzAnVusQVJg2YjvpfTDcro1d9Zef3LJT
	 uI5CY+ZSPP1KQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D254C531DC
	for <ddprobe@lists.linux.dev>; Fri, 23 Aug 2024 10:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172440755363.10388.1378297108799622931.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eae4ec8169134c267b77adcce5573cb5ddd9f08de3b3a2b09f375d87988c1b1b
Date: Fri, 23 Aug 2024 10:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724407553
