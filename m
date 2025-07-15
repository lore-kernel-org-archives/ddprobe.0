Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D6D62C033B
	for <ddprobe@lists.linux.dev>; Tue, 15 Jul 2025 01:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752544194; cv=none; b=ViKOh/GUXf0z69OqKOBIizACQJwsieUa0YL6BX5l34pelBOkWhdcXkKVPpvwqwhdM/5ruPzPMyOf1/DJ45/C4lvOVcXon1BYamHlH/6G9xl7PRkG3A4uZqPRl67uA2j6ynfIwMYngcvCRGgKo+ipbObKt68V9B+8VRRVEXpfzTs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752544194; c=relaxed/simple;
	bh=UvypBq2EKXTDcjj25L5OaVhYs7x81LybDYapOWl+p+8=;
	h=To:Subject:From:Message-Id:Date; b=oZVhYDXdya7vFK/LWQskyrTuLXjqJ+gj1HvOLZ3UBX2PRP8JaTWs6/x4C1xm1m+NUQaOtWWPHR7uDEjh6YaVaVmNM+rdqhmgNemKAj8/dcfbLqf+Cu5HzjXlpsg3vcHp22f5vsjI4/ae1HosyCu1H1WqDKByC2oZaCr9F6djq3U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=F38NW4jn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="F38NW4jn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4587C4CEED
	for <ddprobe@lists.linux.dev>; Tue, 15 Jul 2025 01:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752544193;
	bh=UvypBq2EKXTDcjj25L5OaVhYs7x81LybDYapOWl+p+8=;
	h=To:Subject:From:Date:From;
	b=F38NW4jn/wmdVHUOCYkBnzqIyCZRxUaDJKfBnj2cH590FGeGWVjeaAbVCgAGWj0sC
	 /a7fo/AqD0XzGNCOlA9I7sFCkq48lZeKXUTyzsiRKTGQtDEo/mw7MWRRa9SVWz+mrf
	 iso5Xb854Igpu222kxF9hRik5IFmsmvPsELG5yelDBPtGoe7qijgK0zahAJmv5cOdC
	 nsHGE7dzqHAGgDQ3BKOVGVZdIwBKnijgsanktgXCHpZs1VHYlZuqkrmJ8HOYLCYKCX
	 e8tK5M4lLhDW4qaFEXtuQsyH2b9vVYPOPcPna52XCIG3PnUP8Pa8Ccf4JqjzP9spZP
	 5BLgBSTmQsD9g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 910A0C83F17
	for <ddprobe@lists.linux.dev>; Tue, 15 Jul 2025 01:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175254419357.28395.3210072831847948270.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 68c612cbdcaab590dd69639b5c9a31f09a2f46b4e3a1171fc856eb1811bc4b35
Date: Tue, 15 Jul 2025 01:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752544193
