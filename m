Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1335533F58E
	for <ddprobe@lists.linux.dev>; Sun, 12 Jul 2026 15:08:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783868914; cv=none; b=O7o89b/aN7R1HEcKwRu/lZQHvCeGODrYIleEaEAqyuQLAFx1KLPOSNOh14yJjkPsWevw9HDNlaaqB3P3qAglzItt5izWXpE7QWdWI68eaa9hdGgtcEm5tjlQWm3tUa/CffEJuC9+QZqElfOtOkP+zhc1idJibEgOk5EkahFJ0F0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783868914; c=relaxed/simple;
	bh=75VjW6QSsJYulXqnPfHpIqLsVaMDu+Zw00YNhUvv7gg=;
	h=To:Subject:From:Message-Id:Date; b=qinQlbyeWMvGdNabzhl2Tf9Uk4ncJ++SHxhMp4cY2ArMqGihx4DVDl1NaBIOgClCLi/5MhgsirjggGt+BuEBNKCHtqp5NmROLwheilNulWlijbx4HSMu0wt7Xptb23CUMBSK7UqB+R4pffth6gUgHuxm9SC8RagZCbCo+hRlDzg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kRE8Iy0c; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kRE8Iy0c"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC326C2BCB7
	for <ddprobe@lists.linux.dev>; Sun, 12 Jul 2026 15:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783868913;
	bh=75VjW6QSsJYulXqnPfHpIqLsVaMDu+Zw00YNhUvv7gg=;
	h=To:Subject:From:Date:From;
	b=kRE8Iy0cLq+vOlG7F467y4pBREAlnvgp52Bzi4YOIxY+zF8z3MsoKgpWOIbt69E5I
	 NGsa+9wGSOnbZZQ8C66q3u9kcDxqV8ANkGqLMiwyjgk4nCDXWbzlysFa8TrLjH0pw4
	 HRtXSsLgJ4wI96AWcTwLsuzZsgEYVpLYrKXwp3OAzOo+6tzmrkVWG6AWM4CR3E6vLm
	 WmK9sT807pMV2PRr3A4EdPo1Sfxo8/7FBi/YFmx1MIWzByUSPsvcfeIOD6XKQQLZcL
	 ZpPQ9BoS9fsDESnsW2j9boyKW/Ko9zJzOCFglqYoHFvC1p0t6PIv12oDo1JwOvQ7DK
	 /EK+H+gspaHdQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A84BBC43458
	for <ddprobe@lists.linux.dev>; Sun, 12 Jul 2026 15:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178386891368.1018.6964575823213276767.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: af2e076891810e2e9ed3a4a6f68469985a6b5b7205b36cc51f26af4aa1a79ed6
Date: Sun, 12 Jul 2026 15:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783868913
