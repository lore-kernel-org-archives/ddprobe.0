Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35508367F5F
	for <ddprobe@lists.linux.dev>; Fri, 29 May 2026 05:22:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780032154; cv=none; b=LTsx2S/6txmx7DRR/E830Vxkl/yZ5Em2yO4mEo7AGjC96JferhcN7XkXG5deMN4505tUPcu/QvXKrwDw4I7/LJojMu1m8r3NQ7BimK67mHo6bw8bwemB4XHpi/ld/qoUL0oZZkk75aoEN/HP/YuyMC9giZkA0PG4jHYluyj/EaQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780032154; c=relaxed/simple;
	bh=tFgxpEhPIefemVpaUlGuwCfTsPMD3ko5Cz7o38avDE0=;
	h=To:Subject:From:Message-Id:Date; b=Yq6RMHomnAhKh4vZiOpO3TX1ub8NGPm14Eqkra0IUiR/2O1oXXSaM4+oymtiR/X4xs/CQ99jsQYB4XwvwbiKrQLV6bTct+yXB3x4vLzQcaJAt4+3AgT6nWCZVlB+DpjmkwluEZJpar5UkQnNeccNEcMK2TdVIlJdi8yn7DnDwI0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ie2hLJPX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ie2hLJPX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C6DD0C2BCB3
	for <ddprobe@lists.linux.dev>; Fri, 29 May 2026 05:22:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780032153;
	bh=tFgxpEhPIefemVpaUlGuwCfTsPMD3ko5Cz7o38avDE0=;
	h=To:Subject:From:Date:From;
	b=ie2hLJPXb0zSdC1pkAJ8UWfjjDoMutiGMUR7juW50cwUDYNQsvFq5Cg7Sx8NLc/SL
	 O+G3Vj3X9te5K6Ijim9YPiKWCybjieIIF9PCzaHPjrSrrtu343ONJ4IuwVDV31Oi4O
	 zWXj8at9RJrqxxGMWmFX9m76laAxrKC4eXmn4+jPR2T2ZDQ+i+xwlXVtafEepKQlzf
	 a70TmPtyuZ7dOBG27Je1zWJtYseG/dI01yKzRJBJ/QxZc48r0ucHdkhJaNeCRJjxFy
	 XvonoZv/aEHrFfMMOzXG4B+LNusQg0iqXh/EWwyBmbmKK2YicZ3eYNH0ZeGawJU6KG
	 /M5+zK1jg5cQw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB4A3CD5BD2
	for <ddprobe@lists.linux.dev>; Fri, 29 May 2026 05:22:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178003215368.7346.12683779282814947732.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fbe777de705a1d910bdc9bf65888991d1e7fd96b93f4ad92043f1cc993c0a800
Date: Fri, 29 May 2026 05:22:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780032153
