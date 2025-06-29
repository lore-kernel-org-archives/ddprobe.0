Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 280198828
	for <ddprobe@lists.linux.dev>; Sun, 29 Jun 2025 06:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751177394; cv=none; b=uOv5OgLJQ01Kt8OluE0Ti3o9hY6+KE7OfzvXAxIoJv0qQv5EWk3K0xsOXws0cup2GBr9hju306YUi3sQaq1gkIw4Kl2apmC4KwFXhKlDn2DYAaXxJCs4D39KbLXuU5deLe6KKyvb0G3MYB63OqTqzELPp5gEIY5mYofDdZeD3XY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751177394; c=relaxed/simple;
	bh=M+/946f9tk2JjgPVBnNX+udyCHAsoj4pZgssv6RwZzA=;
	h=To:Subject:From:Message-Id:Date; b=WH6NbgXmz1nCbVtUr4QEVSQqivmNz1W13rlQqadiK38GldIZkCA91EbbiMs+pG/9eFhVe/eIJbJTQFxUI9wyot2Zv2WNbGuSY6v7IZD68G0+NdusFAKJ/wJp1H9gqEXu4K13hLvXk5RTn5aX/NzBZkHRg1MHePyqQHCKdbkxPJg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SSU/rk8r; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SSU/rk8r"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A297DC4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 29 Jun 2025 06:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751177393;
	bh=M+/946f9tk2JjgPVBnNX+udyCHAsoj4pZgssv6RwZzA=;
	h=To:Subject:From:Date:From;
	b=SSU/rk8rdH0XLSsuhvTRUBTq+0P00BKNZaJ8rxWw8k14hp/3ABlN0mfh1/cMoCdIl
	 SL2UgAeM6ffEeA9DBk8PFwCrzOtBN/LS/CWBNG+PP3buUssN2s3UhSBmC7JWbiMDbg
	 1Ra2++phRqmQPCiVFzDjHIPcOQe9ZFpeQOTUkX+nb8VEJQqdZp32jP+lDaccE1PkNL
	 GnAZS/oqm0nkrhs7AQ2ExDBtjiSA2Lj4BxXWUni301qR+OId0uZNHTHyaaYJDTPMD9
	 ZWNGsumbOMb6NHEq9vyolZUgkOzkxmv9YRU+35RUYfL/gzIBQNrf6MQGxGOE0fL2MG
	 z1/OPsNfDhtDw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9111EC7EE30
	for <ddprobe@lists.linux.dev>; Sun, 29 Jun 2025 06:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175117739357.13080.4742100087125898796.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 62ab1451c690e3cecf83a0ff15c3056806cbc4b6f41fc0ae28feed82c8925650
Date: Sun, 29 Jun 2025 06:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751177393
