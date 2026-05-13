Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39B203FA5D8
	for <ddprobe@lists.linux.dev>; Wed, 13 May 2026 11:40:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778672434; cv=none; b=mMJX+8umTYXEtIeRnR5jJydX8423Du4D1VScDqVoodJvT9BMau4x6o+LDZay2okSEx9lnBkFUpldT6ilSUmXLGIjMEyhK2aa2hUfw6IcQnQU+LvyqL+qwGKhf+DRn/OszHz0vQu3glV4R+GxMcK69xuR+T2xVKmvCK4km7aijAM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778672434; c=relaxed/simple;
	bh=+7OYTOydr+aKTbUIGlseyTuSwywyO3IRzcJ6/xh12z8=;
	h=To:Subject:From:Message-Id:Date; b=KSlK4owElLOrCnRuh0hGLjSMmHsVsUHoE72k5TU93qNUBnacKJHmcdUK6a+0ucXvCyLitr0rfoM+dRGZzwRKBRc6ujcewqNeEB4oFVXyZA8vy8Vpx3c3AaGBz9pZ9w8raiM0+/a6IyY/ZgbX6tD4ec8DABGPQwBQ50RdUi1Ku5s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=As59L3BX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="As59L3BX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BBFFFC2BCB7
	for <ddprobe@lists.linux.dev>; Wed, 13 May 2026 11:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778672433;
	bh=+7OYTOydr+aKTbUIGlseyTuSwywyO3IRzcJ6/xh12z8=;
	h=To:Subject:From:Date:From;
	b=As59L3BXsIuJ0F+BthHd25TC4Pd7PztPbbcBD9WeEXhUTVc25PSLc61AQ4bcC3JB3
	 hHOyQJkzZrwq8YkADty0wbmXxWvRC2mJ03Atgu9/9ML/1jEGdLZRlv/CtPTxAvnzIM
	 rlfNAc2n7QTq0wHSaMKYENpjL47zqAT84wmEGTsQsmiPszK5Igf0V89j7VGp9S5rAl
	 gDLuvYJzNe5EiEJlnWwjfNfjC1YcWmi6NUit21JEdaWm7Fjr/xEI3oTg2ZkFNPey2M
	 VFO2FGvkdKYhkONqWCahru8ZQ3YfeQ0E7JosnTfZqsPMktJJI0Yhx78PHcH4ZVYk2r
	 1F0X0puzHRjwA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABB0ECD4851
	for <ddprobe@lists.linux.dev>; Wed, 13 May 2026 11:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177867243369.23771.8515594381510917160.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2e69c67b8d8a13c4d1b6ae750681505a84091bba77d3da3b4fb773e0a614a46d
Date: Wed, 13 May 2026 11:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778672433
