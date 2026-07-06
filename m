Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F514433E86
	for <ddprobe@lists.linux.dev>; Mon,  6 Jul 2026 05:28:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783315714; cv=none; b=WXZc48GuFUI8pqYS83OZ+v/9reGGfxmTb3KfNJ5wbFbVc42R6AzZgfF4BUqbTHlrHVH1V4Go8X5mBQ8aclzLgr4AF2w1p18cqjcoEni3yLOaFKEfSVq1c/ZWdc5EBlgW4y7BaR73TJobZT8yi0yrqjfthEKVkDO0DZovrFPK/1U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783315714; c=relaxed/simple;
	bh=UWyL8IxBtXJ+LFtiIN4srI5xhKxzw5+lr7F4r0y3ZRM=;
	h=To:Subject:From:Message-Id:Date; b=TFS41PdXbZRh600XRmb34B07nZCM2qLHSxwyYpHyY+2cK9dKixZ+sQ1SHjANusjcngp96aj1/mWXq3eQq3PzJyhe4vAS+NWWIvkf4jKQvKVMmrlqKyInVj7omuOX3HcanIryaW16zX+LT3PWBZJJparbfprHvlCj9nIV+2ttES4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qSV4syjr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qSV4syjr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CAAC8C2BCF4
	for <ddprobe@lists.linux.dev>; Mon,  6 Jul 2026 05:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783315713;
	bh=UWyL8IxBtXJ+LFtiIN4srI5xhKxzw5+lr7F4r0y3ZRM=;
	h=To:Subject:From:Date:From;
	b=qSV4syjrof9SJHqO19Ycm8jKW/4tyjWpoU6fzTAhPeqrnhJkAofOQgKagLTMY1xGo
	 LyzJ69/VZ8H7irZhb26KFu19WCil6UShxLAwpk6NpQmGZ5vFNm/mLZ33RDlSCYXOpG
	 yXp+PmXhfNfFERWZMwaRHgKzGcMauZd8tPZpkJpXm8LC+IO23pwBQy3NaQ187ngAVT
	 qQfqhCxZTiek/Ki1F1da1++0s8iTVpdaL5uW11xh/iTS0GbelbHAlat8AbLLaRqKJw
	 qLyUAvD1NGw0gMVMhWjYWZ9C/n/LzKBnIs9H/OMAwHVpdXGq2Kjjg5EIALg1XJ6B8o
	 vsuxK35HZTI1A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9821C44501
	for <ddprobe@lists.linux.dev>; Mon,  6 Jul 2026 05:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178331571368.22117.5327170722883947671.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 15c3b96ae68449fa8b5edd563d59125163887667c6d2db3f4103fadb62d82b78
Date: Mon, 06 Jul 2026 05:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783315713
