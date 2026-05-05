Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34AE9175A87
	for <ddprobe@lists.linux.dev>; Tue,  5 May 2026 15:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777993654; cv=none; b=YOa01BNl5DHR9ZuFaXXtCtqQ72W3Py6f9bXx0ONXMzrmWovt4Abx47yrwUoUGUAfp7BIVnpD1YSKAc5UBPtLvdEnKiBRrLfoHcX/dUnoqAXYmgiK+wBdcUBuMHmQ5SS3Ytx7z3fRAj5g41Qom0eJdznoAdU31qLKOuPhQpoOV6w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777993654; c=relaxed/simple;
	bh=Ijy90DJOkPOAJxKdiwg5Rd/pPsj85mifxje1KdluLXU=;
	h=To:Subject:From:Message-Id:Date; b=sIL4+LFGvI1aGrrlWwBSpcHoIpaLGTYGxV8M0vYvPtwV6TeNb0JW2Ih1E4mYPBqiK+O6cafR2f0BV7kqlTycA+LfxJtaCWoQ+cNq1qFVD16lXqL5ACNtf4ijLeVjOAAryri0Vtzc2G1PFiAp3YQxaCwnoa/a/PmPWKgAAwCgl1Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OwgyTYla; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OwgyTYla"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BD822C2BCC7
	for <ddprobe@lists.linux.dev>; Tue,  5 May 2026 15:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777993653;
	bh=Ijy90DJOkPOAJxKdiwg5Rd/pPsj85mifxje1KdluLXU=;
	h=To:Subject:From:Date:From;
	b=OwgyTYlaaKJutC3fRHW+gf7HDpuMeBF2lHCl/92IaH9tubc0Y6xnSHv80iTvJmdvP
	 qkZS2DRjJXHStXwp7+8M1MZIautSKvy9HN/26GVWEFqBISB66akAC6T9V85mYPF6M6
	 WKmGkbLRXN1Ma9BWclY6KdHrQEYPpUYi5YpJOmogdD96RzlWfUO8PnweF7GjK14dnj
	 8Vs9o7viztYRK3NOR/ozg6zrORxgpIEkLesQzwI+mvTbVNZ7XT43GDWtQJU6wCP+46
	 pa6IqWoBd6OYrY95vPYN5kHEjglw7nnyBkANyJtmgZ9sMN2enGViaGVvCu1yZXeWiD
	 p9/kaTab/62ug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA8BACD3427
	for <ddprobe@lists.linux.dev>; Tue,  5 May 2026 15:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177799365368.15506.19350195403818815.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c9675ce087c16ee3c66502ba550d1d3ca60775194bfcba55ee95ed7172d175ed
Date: Tue, 05 May 2026 15:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777993653
