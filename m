Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E158944F
	for <ddprobe@lists.linux.dev>; Wed,  4 Dec 2024 05:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733289354; cv=none; b=nc92nY1joVEzUDhV4kVygpXc27jkWdk78bc/OuAn6hOUpA44sLQzZigRdMd5WssByTmUtzmPiAEJzKlo+lCSxOGQH7a0rkVHTVOhF8Oo888SdFi4exDLeFj++6PVXApYnEQMkqufgO+iQifymeozwnPnyKRlZsxtYuF/SQmB9ew=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733289354; c=relaxed/simple;
	bh=Y40RnnFPWPAmJTgJX0pXZQyNukHpQ8YlWeV045ky3GU=;
	h=To:Subject:From:Message-Id:Date; b=TDrB9XV8fCqDmmd/Fs+YqHI8pP89TVbM7pj/2widvunqOdT+EGgyDpFxsgQYwNB1JkXMElb9m66aDEPT3Oyidkr9UT0sVcpyOPnNWo7/jj/xToDRW2xbfelVGJytYEdjCUjtIQSa5rftrGXb1AvMip+7LoUSq1KcJflgv9QMWnQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ucxgf+Kl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ucxgf+Kl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B062CC4CED1
	for <ddprobe@lists.linux.dev>; Wed,  4 Dec 2024 05:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733289353;
	bh=Y40RnnFPWPAmJTgJX0pXZQyNukHpQ8YlWeV045ky3GU=;
	h=To:Subject:From:Date:From;
	b=Ucxgf+KlNSofEIim63QJXalJvRikz9rJYzmtS0jnXQHGdTlcz8TM/jMe0xcNYsFxk
	 mKejbjGqYAHXyu1aYAR+SKeDOTrZ8vU1ll0fb+9BsMeYJ3d5DTsLygkaIrzOtWDpwS
	 JySR5drUy4o+UC0ITo/p0oZ8WJbMEcgcff6Cs/lQb9G/DUW3yyaKWJnEGh3Z+6ZktN
	 n2fketozAf2pmopCeWCL4H7Nf+u9B7DCmz6dXZpoglOrAS3hHITRaGTON404gYkVnA
	 Jmcz0EN8JJmGNITPE39hrzeR1PjqEOGuVtoS+RNkugVDh4bt2vMdMJzajnjNjHcNkL
	 y5FDTZLd3uq0A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D253E7716B
	for <ddprobe@lists.linux.dev>; Wed,  4 Dec 2024 05:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173328935363.30393.16799225969597162979.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2548656992abba38ef24bedf907725613b2d7d675f4d34f2cad00e2b84404585
Date: Wed, 04 Dec 2024 05:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733289353
