Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26326175A6D
	for <ddprobe@lists.linux.dev>; Sun, 19 Apr 2026 10:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776594454; cv=none; b=cv25o8dKsvOwtlWf5+XQvj6FRtj67kKEZ/QNRQ3yqhPWmZpeq18trAUZoRmVhij+zrMbCv9kYxbNl93Ybvu/RpIf4LXpTYNEOLqXi6GsubZItFl199ZmkMW7qgi23SWxIE+06hs6DSuAR72AUQI45IObT/8VNlYPnYb+pwHD56s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776594454; c=relaxed/simple;
	bh=Y9TYuG4SMEUyHqlYwtJTsVDaAPrn7K3UUm+V0ENrkDw=;
	h=To:Subject:From:Message-Id:Date; b=LQLlneCsY5Yj89RcxDk6YP6OPicQb0c43SV7A5RSEYWsBjUYm8eWRkXS2RAdBQqWWLYzhauf/L+uxx5ghoHJPhmkk6alDTmuJeguQmxU4VwEcp95gyl/7t5nGJnVz1eXGpSBc5NsYRhQKTnjQq9KMYbT362agRI9NQrRDAW56WY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LpvroDc9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LpvroDc9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C259BC2BCAF
	for <ddprobe@lists.linux.dev>; Sun, 19 Apr 2026 10:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776594453;
	bh=Y9TYuG4SMEUyHqlYwtJTsVDaAPrn7K3UUm+V0ENrkDw=;
	h=To:Subject:From:Date:From;
	b=LpvroDc9AaXXR8HunOYUWtJWBr3pkunydg6HJ/oa7OGR53uxcARQgaUcNpdEiYp2v
	 /9A55tuWpzYJ9VXW35j/RR+4kcNxRY7W72lWFc+Eg680KNTkL1X7cOUY6UUr7AfOZo
	 DPCiSk9Y6AqSEkeWx4gG4iJZeRwyZ/P0yiK7GoeBBdHKGrHndgs2E/+XWxdFZHdjdn
	 0Jypo3lTwAaCPJ4VvBMc70y9XyXihvBSroQxrevwbH1UVR/8BDmjop/07jpdErj9zd
	 LRHRsR8DXSD1za1r/Nf+bom3RBX2Up+ZJZj+KCKcou54wSiaY63cx2hgtNP+hlXpy2
	 Ij4xhgIPUUPeQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFBDDEA7194
	for <ddprobe@lists.linux.dev>; Sun, 19 Apr 2026 10:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177659445368.9884.17575224558322046186.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0e66670029fc25a49b45e5353ca80991dd350140f86496ca255036f1533ba52d
Date: Sun, 19 Apr 2026 10:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776594453
