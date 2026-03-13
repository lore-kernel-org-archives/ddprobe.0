Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 02DE936495D
	for <ddprobe@lists.linux.dev>; Fri, 13 Mar 2026 20:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773434094; cv=none; b=WL7HAlM3NV0cnkf3nJ8PxMXKJzLhO0A92Qw0dDRt5HI7EtCksr3xTUc9+V/wl3jR9bV78zIG+kI+hMDKh8q4kdMP+peWeTd2WkgQULot3T4gjSVsreTUCuoEUMWtK+nXKqb6nSb/W3LWuKhwVbZjJy1zMrrl4aFfbUzdA2MLC6Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773434094; c=relaxed/simple;
	bh=sDiIdIvM6Hg3RGEoZ2Qg6JxcyGL7RKgWIZ24OolqCJw=;
	h=To:Subject:From:Message-Id:Date; b=n0Th2GTRDaFs5Ckw+XPdeLQu41E5+SlQ+9KeUvu+8AZIT4ECdwvsjbG5rTFNV7mL5ONT+vFf6CLwC0CchChfrH2aiKPs0k/6G1v/L+ijX0J9WrdjG379vUD9JCELO8SL/YoTnz20cNPIbIZLanJNdos+TDiNxUK79h76FicPL7Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=M9BNuslY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="M9BNuslY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5344C19421
	for <ddprobe@lists.linux.dev>; Fri, 13 Mar 2026 20:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773434093;
	bh=sDiIdIvM6Hg3RGEoZ2Qg6JxcyGL7RKgWIZ24OolqCJw=;
	h=To:Subject:From:Date:From;
	b=M9BNuslYZ8+hzIzScwNxu0rTsRGfNkzaevkTOc7Xo+TgOJig+fxejjpx7d7J3YWOx
	 KQlez/XPc33j6q3Yx7Gyispe+L7y1DF7BQL6dtMRhxngTpblY4kGXFipJ9Ffd20Zr2
	 HcAHyJuU9zSoQ6zRlzdbWVBwJ/gvcDUKzk/AyEd6fwVSn8NP7QNabfJpSnSFhCCWNk
	 D9h/16JlQJZyrOivpXyr/K9Q/lv7HY6cAZpSBmIXK3Tr1oCFv/c5YOvujc16kSXlDh
	 kugkpparbWNJMtyGcL+zgMMRBv78/W9ayOPL/CzxUJMR1gYkm9kckVcWziJoX17dys
	 fL9weRNo4gRag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95381107BCE4
	for <ddprobe@lists.linux.dev>; Fri, 13 Mar 2026 20:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177343409357.8174.13478104281928128453.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1b539a860116c1c2a52fca48b983544049bfb20000d12f4fa9b4deb178f2b15e
Date: Fri, 13 Mar 2026 20:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773434093
