Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A4C9147DD68
	for <ddprobe@lists.linux.dev>; Thu,  2 Jul 2026 12:08:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782994114; cv=none; b=ozeM5ey2dkvuYcVM14H/9Au3wz1FlwIEG/xCj8KzZ4NkqxS7ngyIp53tYSyMwH2z76kY344hNhMlt/iMJQNk9o42wBOy+UiGkwO0DWILJNA99Wol0D4x+nfI9uFUrbV7sDaL0l9hjCWeG8ooVMX2OroBybnkwgxCWoFQt2fGuvg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782994114; c=relaxed/simple;
	bh=4CifMUT9MICjsoxfoKo/wF99xkj5KEtYg0pLC//yMeQ=;
	h=To:Subject:From:Message-Id:Date; b=Ir3Cd2BeEq6W5aESkGi8ZlDpiobymAduRmP/Zi/UpuSTx9rFy/59iQhMaIBjI4TE0xjBjWcejVozlAwLHH0j8xCvLCPG5bmgxjEI0SfSjPR/kdXw+LPSRmypoOC2zRVFE2iHIQFfaGnxdicPu6WVL7P9saJXEusLZd0qIEjwugw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=C1Jo2bwH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="C1Jo2bwH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA93FC19425
	for <ddprobe@lists.linux.dev>; Thu,  2 Jul 2026 12:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782994113;
	bh=4CifMUT9MICjsoxfoKo/wF99xkj5KEtYg0pLC//yMeQ=;
	h=To:Subject:From:Date:From;
	b=C1Jo2bwHNEBGWxVHacN0CCBfz/BmM1BIMLPx8q0TX+q0NKuEIuuJCCd2TjYYAUe76
	 HwqpWbm6dTfOwyKh0XJYMZnG6g8ICyVjy9U+T9VmiGyYGp62Gl6rNJS698mqwuLwxw
	 St2ZVIQeKJ2ues6W8VDrf5Wb/oqg4bRUT/HGlV+FDi6lOvPrN8a9HgIc6xP1pW/2cl
	 WURzsHtJXRcKn7mVG4qrtHNS7LVj/8ZWP89oI1SEfkrPzsLM5MjwpPUa5twlCmOOn/
	 1aTB0mwcq9uPYGZ19ayy/JxTvd6UMGGPH72q3L7pfovGs/329IXcx4JaJG66UGbM7/
	 7lAJLELvjybmg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8E29C43458
	for <ddprobe@lists.linux.dev>; Thu,  2 Jul 2026 12:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178299411368.6973.15576473387251918599.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 42532c6f103962d02523767fd3486751fad40da10f6d10659353125ccc3c6983
Date: Thu, 02 Jul 2026 12:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782994113
