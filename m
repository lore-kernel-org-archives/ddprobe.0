Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1EB311DFF0
	for <ddprobe@lists.linux.dev>; Sat,  2 May 2026 01:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777687054; cv=none; b=D8X5xbYhXwvEXgF4caLXtLljxqS5HmICCrmk0BseQhOLAkRWDiZUh8fjI0q6b6aVK19WGwO3wBkxN0Xi/cruYScezc4ZWjIdkNSEbe4AQrwsCbYXPzy3UUUh01TqClPGayq14ZU1ses2oXluwVeK95jJEfynWCCdwdQyLJvui7M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777687054; c=relaxed/simple;
	bh=wm/mQLzQKkZ7qmj5iQENR5hkvQjfJm5Sq0+fIpapBjU=;
	h=To:Subject:From:Message-Id:Date; b=rw0H/7yWjbykYmlzKtOY0+n/mA1cM1avSQ/CYvx3xHaYOxJTKCad1JeUTpy1cIo1K2dCHJhWGAomNpOwfrhne7sVioIDrU5NdeJ4Kex/MWFHjfft1TN8v0Ajc4f1W2kMwzGyCHzhX5MDRfko9GIDV6q+HE+wsbkGgIzmuxwkMWc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hZRSxoeZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hZRSxoeZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B876BC2BCB4
	for <ddprobe@lists.linux.dev>; Sat,  2 May 2026 01:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777687053;
	bh=wm/mQLzQKkZ7qmj5iQENR5hkvQjfJm5Sq0+fIpapBjU=;
	h=To:Subject:From:Date:From;
	b=hZRSxoeZCaAQlFxrc8zoTA1TbRh+7eJYmLJjLVQiwK/f/eN1Pbq0VKcMSSDl6MMzl
	 49a1EyYW0T1Q3KOCZQYJyEfmHdihs4WLPWycp/zruzKiAitHCV3fJzs3E+faN+GYIL
	 4sxMErSPpXXu8zySn55WCxtbS/XVUGfUBtU7YJxfC4634Be0ZNjdEbmiEEh9uU/CJl
	 KqbtlRw6byakMY59q7trQWatjlTEN/kAg6Iha1Gtm316BngZbXQ4JI7iYlICRrXdrE
	 VNS7a0o1lWRc/2ZriIea3CcV9Hlt+qFFX+T0cpQEI6ALAh5EhEQtceSIaTeAZU9uCk
	 xQssJNBJqAq5A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9A4CCD3427
	for <ddprobe@lists.linux.dev>; Sat,  2 May 2026 01:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177768705368.12549.15807019670744488563.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 717e8e89bb86e9421ec3dfdf0d303dfc5164fadfed5351fdeb386144bc5ab19f
Date: Sat, 02 May 2026 01:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777687053
