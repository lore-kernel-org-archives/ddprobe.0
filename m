Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CF8776F2E0
	for <ddprobe@lists.linux.dev>; Fri, 16 Aug 2024 06:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723788953; cv=none; b=WGT7sWsdvt2pp8sqA55u4tUAKnVj88H5YlAY4e4MjKe9nGcB3acY9kQx1p08UPVcx/7Ne+f92hkzvapPnOZuyWXwLFxeRG62tDWORTusJmKOgil4tIUrHE3D43EopYAF0FXh7OeFkJw7xftfrQc66z1cWqNHQwxzbVl/z/KdjYQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723788953; c=relaxed/simple;
	bh=rZhsWUpUBdetL40uvCmm721q/gc35kjk+JkCVYoO4Zk=;
	h=To:Subject:From:Message-Id:Date; b=hPkh0cw3xC/YpaBX+NP+8z8j1E39qVIWbOCjmlM02amaWqpJujuQQO51ZB1NPz+YSy+oFB2Ncn8hnnBiJzUSi6sAetfaTRYIyto3B07a440p4FYcRyjPLolc/h2bpSXfWpAACuAQCOK9fCjssl7I0qk1RRCc0fR3jiFMq1PPkT0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Diw9XmnX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Diw9XmnX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B06EEC32782
	for <ddprobe@lists.linux.dev>; Fri, 16 Aug 2024 06:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723788953;
	bh=rZhsWUpUBdetL40uvCmm721q/gc35kjk+JkCVYoO4Zk=;
	h=To:Subject:From:Date:From;
	b=Diw9XmnXolo1l1xo9lJHpBdIOG5kDwV+hxmhKThuDuJ+qX797UfCJPLxd37BEYN81
	 oczIyuut98jV21mPKjbQnXOAQsdJ+56LhQJZCPHIYfkrpozTVFOO3KveeSDQ15Ole6
	 yQcwGOQ8jFFsTfEvw+ZpAlDQ1t73oqHi+YyQTSzr+7EKZzepLyaWyiJ0HTsgQLNP/f
	 QNRx4klIdOtjzD/KsKcIFta+sxseECr3R8Lt2w6oFwUvKM3RCugEWqAmqc+TEMHZsY
	 WzY4HhlPfBtzOHWCV2droML9sGGGpNQp4y/4JsXAjSNwcekGRBG5gwTXb5+dyM084y
	 IZ+sFIJiLm8Jw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9ED3BC531DC
	for <ddprobe@lists.linux.dev>; Fri, 16 Aug 2024 06:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172378895361.12041.3518206422053596435.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a61d80346eeade538e0ae8415178329e46a4567562ace188a34bf5c5153e81c3
Date: Fri, 16 Aug 2024 06:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1723788953
