Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 529AD13A258
	for <ddprobe@lists.linux.dev>; Fri, 18 Sep 2026 15:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789744234; cv=none; b=r/vdqimZ/XaVFk470FwNqyXrymE8oL7IoYDZknplBjlRDnAYCJZvpcQAYJaE2uJ6nXs5VqMuwACeaZQLRhuS7I6StdartxPMRukKf/dVlSpqs2YRzQ0R0WrvAXFUZz+EkjYiGI5wALONHGGhodhGVjDvoXMStY8GHSTZ0SlYgj8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789744234; c=relaxed/simple;
	bh=LYrFGi0wf/qemKGCJHP/rManvniZqXBm/RKj4mt3ah8=;
	h=To:Subject:From:Message-Id:Date; b=csrZPmgEN0wPbw69GY6gTLeACw58HWGiajZ+ZBfOTW2K4uuLxLjp+hfLyRuuSnsOt0rIc6pFU7WEPTvFkhWFJMsDTBTP/FYN/hZSLzW0XaWYybeoAu+nH3U5WyBwZRJktEloteBuPoZAwPsCoanWmx3pxOU5WdQZnnD0FmC/XDA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Lm/2vkFh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Lm/2vkFh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D562DC2BCF6
	for <ddprobe@lists.linux.dev>; Fri, 18 Sep 2026 15:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789744233;
	bh=LYrFGi0wf/qemKGCJHP/rManvniZqXBm/RKj4mt3ah8=;
	h=To:Subject:From:Date:From;
	b=Lm/2vkFhPf/1s4baUy1G/m7GcG4sN08MuzCgoAf4Z3Yk6FLoMcdPwFXIHxyH6Q7jR
	 +7DCzVSNVy3y7WChSUJJdLDiuUxii273dpzVx6UpXj+A0G0A+pA3xm9Aww1vXsRaa4
	 KlHCBNJ8fSudIsdCBpjuKQ04dJ4rv3EP5MI8zc6KrOu6LyRHcLpmGaqVXfhaUGz3Le
	 KEGIxKGVQfIGV7gqCyymxEj4TGDPKnInYH3V/UIlmspMROKbM64uWvf4gC3Gq5baJk
	 RbrCF29GqR5Hg35qOBivRa3kkdrAYYdLsqFJHdxMBrFOpNqrp4pedp3lHyMhVZ4zAS
	 3ItxPjS3F0Nww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B263CC982DA
	for <ddprobe@lists.linux.dev>; Fri, 18 Sep 2026 15:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178974423372.32610.525575656580164766.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c918e193a6315eaec7b122cdf7531a2719080b4bcc4bc4a68a7ab77ba6a21fdb
Date: Fri, 18 Sep 2026 15:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789744233
