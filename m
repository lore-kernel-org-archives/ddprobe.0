Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 58D5C1AF0BB
	for <ddprobe@lists.linux.dev>; Fri, 21 Aug 2026 00:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787273434; cv=none; b=QcmnfqLRwvi52n6hkuWABcWxVn5qw/E26v4IITmt8gaBKV/uYFe5b8XDBH3bCbHo8bFi1o+1B3JbVFwOHe9qRXsXN0BGiHdtEAaWhExq6m76ukvmTaqcoRH+GUujW+PmbH+kUmgKfA377D/URlsgMX1j7G9xPZaL2G3LoGEcSoE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787273434; c=relaxed/simple;
	bh=cNu0DMqv/sDjs/iWIOIxs6RALZj8bwSxaDLz3lQWjMY=;
	h=To:Subject:From:Message-Id:Date; b=pLKJSTcY9RWq6v/8Plmd4++X+aqLb1XVmrrCTwy9cuR5aHAINek4fAsObHehwQRIYi1QRHJCd3RjFmTnloQzuDUeC5T7k3AEAQMWfZI7yPUatsiwnERqqUC2IRZi09j4bBxyLtwUD9Lk2vYqqoDPgpEcgqtq90wcmS6zf/QrZ0w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YtZmITBm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YtZmITBm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3E88C2BCB3
	for <ddprobe@lists.linux.dev>; Fri, 21 Aug 2026 00:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787273433;
	bh=cNu0DMqv/sDjs/iWIOIxs6RALZj8bwSxaDLz3lQWjMY=;
	h=To:Subject:From:Date:From;
	b=YtZmITBm49pqQwW6zt/eDKU1DJz6cOYrMSLfNo5yB6DDkWytZxJZJ/LHhYUPI5XPK
	 VA6UtRp41DyQptE+aj060c/w8wwMpH2RwDVBNpFAE84WvFi+nvpmJ9ZH1OEiT6AqLm
	 d+Ad1Eu2YeR8PEHu3Wf8uokp1fAqAKQtpm2EDGdpV3DWmyVdaXrXfVF3bZdKYciJb8
	 Jcr2E8IlAFWY8I23j4buPlIhvN4vBnhh5p2Cdp/zWzz8GfQUU+1FZPD+1nMJ8FiygB
	 wzuGd+MLfueLpW3FRdZ3mceG/+lNMFCKWHnJL4GhJm3lvlOVpG06JmJAMlae85XmBX
	 3ZjqRTCgD90MA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACEE9C5DF87
	for <ddprobe@lists.linux.dev>; Fri, 21 Aug 2026 00:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178727343368.23656.18125498234922922914.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e4ea6f95942a55de49b25f96b751b0b84b15bd7457d73ef85a570c04efbeba83
Date: Fri, 21 Aug 2026 00:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787273433
