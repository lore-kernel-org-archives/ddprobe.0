Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DF301442F0
	for <ddprobe@lists.linux.dev>; Fri,  5 Jul 2024 11:15:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720178123; cv=none; b=NyvTBj8kmzxOV5Svo7buW+bYr3fsqIx9qmtlNFm3svXlIfV3fqIxvBPSG5X3dO4R6j8artvSQ63cD2hOh+QzvYn5JJRxAgADDd4ulPdG6vFtV5uzreJhROxIYgWPRJ1uicluxcqFU5qch2pHyF1sOH44EaJHBsj3CEBeU7st8Nk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720178123; c=relaxed/simple;
	bh=KWWTzi3nb2jVj8FaoukUbvIFe48l8g/ek6dbKfwAbaI=;
	h=To:Subject:From:Message-Id:Date; b=sGjwbxeQ00HEb98l510xF+g+V70X5wurA3DVNMWub2nMhIuEHhiND/gCnt2+MDF/X1jX5enDKO5xNQMSeZ6PEHy/9sAUVb6NFL/FG4z4G1oLWjUSNMuQ8StF3pUTYqOl+dZMRk1Wbf21XAJDhE9OOrHKRLzQZF2TeCNSIlt6QJ0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WxnjypmR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WxnjypmR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB0D5C116B1
	for <ddprobe@lists.linux.dev>; Fri,  5 Jul 2024 11:15:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720178122;
	bh=KWWTzi3nb2jVj8FaoukUbvIFe48l8g/ek6dbKfwAbaI=;
	h=To:Subject:From:Date:From;
	b=WxnjypmRyrtDZdQaX81JXfaEGPJbP1tE4BhuA85j3Vv62QquIUDFbqg3758ydYHHo
	 ahIrX+zOZyYngoX5zQu5EfQX4y3926VoxTi9JGjMf5zaBlBgh6f0kFkdAik6rK3LPH
	 qOPIGBCAfcCll5bh/Dp7poheTyu4OO2T2lkuWwe1O/0yoROMTxtIwp59iR4h49muGU
	 ov1G+dLR0YI+/sAoR2f/gpkso2yXDzl6ud9NGbjm7FkMWjmrh+jZ302sqhi+OrTK1y
	 +D2jR1VkHGsCW/hvSt7OnQzILlDqaXCgQg+1AvORJ3CoZUjTjFa2PGIp9yIdSQu0qe
	 4vhUgJYkrPdNQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BD4ACC30658
	for <ddprobe@lists.linux.dev>; Fri,  5 Jul 2024 11:15:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172017812276.18001.9602919086180326049.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e1635b7ee043509c50f6a4b95b95a051c8507ed091541eefb7307aa9c2aa0447
Date: Fri, 05 Jul 2024 11:15:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720178122
