Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45A0C1F09A5
	for <ddprobe@lists.linux.dev>; Sun,  5 Apr 2026 01:35:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775352934; cv=none; b=G8EqOOIzopeBAkWR7P9hs02Wh6Q2JQRF6n95k5ntXOi927BJu261p3V4Nn0HN/CZj7r4RqECaWMo+Y8V5VufXN9dCh8vaTWUb6ZaV8TI13EaMCYxPJPvMuytx7aRXTZoK5JtiTjpa8AzUPVcD37gLR6lej1rA8eCG+W+sqU/PQM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775352934; c=relaxed/simple;
	bh=8VWQG5Ak9eVtdFr2FaBXHM6HohZb/BI2e0Lw1zlx1pc=;
	h=To:Subject:From:Message-Id:Date; b=fUTWahEXGzeXQ35BbCufwf3+DGenaZKQ4h1hcqSuUv379MaVvzABtkLJouaOTj+ok07K498EV+hHWiQdZqSJk2hogc9gFc+1qeXFR82D3S2uRaA/8d0eyJ6NhbHwiVZaJCNcx83yzLXUBuD0ZbH4+A9eAClsn672G3iWCuwvOo8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gg5El05u; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gg5El05u"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CCBE4C19421
	for <ddprobe@lists.linux.dev>; Sun,  5 Apr 2026 01:35:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775352933;
	bh=8VWQG5Ak9eVtdFr2FaBXHM6HohZb/BI2e0Lw1zlx1pc=;
	h=To:Subject:From:Date:From;
	b=gg5El05uHP4QRj/APB5vuf7UwQeuofErj6bRXvmE1u78mu3JFYEg1f1LcGfr2Rw/Z
	 GQkoq98QiXOu5dFCCBdscCC64pBrxiLDq5AWim6CaBWuR8zL0lUSiGQi+a+rMNX6Tz
	 4J6mLkp5SERlVR6Hz0sUPyM80yOBgJOWQDy0ej9F5XIKXVPsVAjRowZgAeir67u/PR
	 GRryHSY5I4cSs4ZjsVDBScfoQh3IKm3nBhYEGOlDHyqZku4cdm9PuxnUDUlqqhtLK7
	 4qE6l3TjeBrhj94u7dADSeFG2rEXg5sDcYMEKxwEbZZfwtLG+F96wJkX0YuLrTBPca
	 2ZFaxaRoTfRKA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2312E63FF7
	for <ddprobe@lists.linux.dev>; Sun,  5 Apr 2026 01:35:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177535293370.12862.15810799944757259661.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1f81367c3c85fc023d64aff59835ed9db8712de0c15bca10959bb397ea83651b
Date: Sun, 05 Apr 2026 01:35:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775352933
