Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5ACEE364933
	for <ddprobe@lists.linux.dev>; Mon,  3 Aug 2026 03:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785727834; cv=none; b=Ljb0bLJA+wlR1GAMAIXwei+J1ToEQgQl28yDy4QYyJZLjzGcrHWIYAeLHB34QGE3TnrQ0abS1x7w6Ue/59HGu3X21EjLvT9uapAiM9ZHIjrk7VM3kkO5pnMKcWSPCBclNXZEbbooBBH4WCqDLGXie2rwYnfoEMTSSer2LGkWa4g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785727834; c=relaxed/simple;
	bh=lxq2/wtDYwgvoc5UeKOi012MyRPUhdRka4jN1ts+s5I=;
	h=To:Subject:From:Message-Id:Date; b=ouJ4+yPXqnAGY34UZo9ShoGuO7PgcNzJ/P5ReFRfaPgQbvwu6ifCVRAiTU/tMFkO62KgHpVCNv0pP+M2PuOhibyj+R10nL2wV9Onj9D5FRcSU+J9FsrEMi2K5R0z9iNOPg+E5opMxCYBy52yFr3dgzkn0ty830ZEHFh8DgkwNlU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=S2xgv2la; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="S2xgv2la"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5E4FC19425
	for <ddprobe@lists.linux.dev>; Mon,  3 Aug 2026 03:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785727833;
	bh=lxq2/wtDYwgvoc5UeKOi012MyRPUhdRka4jN1ts+s5I=;
	h=To:Subject:From:Date:From;
	b=S2xgv2laKxLr6C/DkEt7pbKPlMkCVjv1JCeP1TZYPQxSG8O1YaTq2j+NWWXSUSwqq
	 nv+46swEz8hlKfti9OImJUQH46DpMWVhpqN+jPZtVofL1hFI/GMqm7HQIVTwjyBr37
	 jNR7kcNz+607Vv3wrS6jlMBBnL4vpRFzgPYU1APPjoXjNFZauqrkw1Sxs11O0LbTJk
	 LD7XEM0p5Doy897iKkZuVCIZPh5Y2TS+uxLV+uEkHebZKE6UwfkAyWj/pw+CMIIAA7
	 3ZtNBjVyXVtqdVIpLhmUEzraD2CfX+kjvDUbER985tqSaA5opf1Ufxr0yJuO87XlLl
	 RzAY4yAYGbNOw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3BBCC55174
	for <ddprobe@lists.linux.dev>; Mon,  3 Aug 2026 03:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178572783370.25749.14082186919768738176.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3a5ab9165c16fa99b776a4d4108e4fcb18eabe2a2957806a5dc0476e665e51be
Date: Mon, 03 Aug 2026 03:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785727833
