Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C6131E4AB
	for <ddprobe@lists.linux.dev>; Sun, 30 Mar 2025 20:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743367794; cv=none; b=Zsdzp6p4Dur28sE5ZRZ6XOapHvhugoZEzGMtRrcUBhghfBop9H+CVaROFWw7uS57lPbUSqgNs6S52A+Eh5bESs0pzKAdoCk4P3penHjxRAOlAo1n8ZpbtMf0zn2SHZ2UR1MXGhr0fjJBs7/ngBmNuZ/mOx8Wp7rDMcbSsJLosN4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743367794; c=relaxed/simple;
	bh=tw3crq4fgfVhx5FB+sfQ4G+M1CKyEc2KK8F+v15cnAc=;
	h=To:Subject:From:Message-Id:Date; b=YiFDWX6oOEkbjhwIxgnv2QtGicabMaP/N+7S8Iys/tVvWXOeguKGbt58DUUGBFcvTkXJvph9+tbg4eLyJ2BHpDcLTGmOE0FcGxZ8zI3pH4XrSsEy1AywB6UVSV0c6kKHSNf81Pc6RJiry5ZcPrenfZvqDr0T88Kjq6cxgdnw1KY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Crl3yrqI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Crl3yrqI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B033AC4CEDD
	for <ddprobe@lists.linux.dev>; Sun, 30 Mar 2025 20:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743367793;
	bh=tw3crq4fgfVhx5FB+sfQ4G+M1CKyEc2KK8F+v15cnAc=;
	h=To:Subject:From:Date:From;
	b=Crl3yrqIX2bYa4nCQ+4dp1OeWtv3pQL8cq4GFbSDiHjuicMz4LFvJfxBEeB0LGbhE
	 uvu7TbFUz+ZhWEi5XGyjnUSFWIcZNkesUKZ8ZW47YAGMbryulfCfvW5fHvNnQdNXWE
	 fn28YtP8bYb04/76NM1+wZyWahxMThld3cLnIc7UWBGszZE2Xv31I/L4Dse7YfiUCl
	 Njh1LdwYFsphEnu8NOWeMGvmYaiIMp3LUabQYW/wbJ4zQkASYQiPNIaBYYnjxPQRmy
	 kUUutx1GNf8TMrU6zj2o6YFwUC0rmExJBlAewhA8tDvNiJw/lO5qLbv93LBmujAUPO
	 ecLMHXuz7CVeQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9952BC28B20
	for <ddprobe@lists.linux.dev>; Sun, 30 Mar 2025 20:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174336779359.13933.16874859142107858902.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 80f004e52a52939cdec85dd4218ae855239cf198bbad531ccf7e7bec83476283
Date: Sun, 30 Mar 2025 20:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743367793
