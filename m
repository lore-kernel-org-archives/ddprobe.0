Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 971FF36B919
	for <ddprobe@lists.linux.dev>; Mon, 21 Sep 2026 23:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790032234; cv=none; b=o8BoifHUUX/X+6mqB0N4FtjSZJeH9+idfpkBj/lHeUTg4lsnfdaDf9+/2eOMAQzSh8jFM56ItGfcyxhNqXGdyDJZpH8OByAalOTWjkkt1LInJmP+BI4GAFM+b+n9v2qlKp+SEoANTS4yCKi8LBaN8sPvogescyjX3m/Z8hoI+HY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790032234; c=relaxed/simple;
	bh=sWVLhDL2ybK/vRvjv0VkAMLIqDizc5Uno01eBfw+CjY=;
	h=To:Subject:From:Message-Id:Date; b=bg4qTMFHZZqL5/Z6Gkt2Gw4VdcR+X8NV/J35pfAPuMZ1NVSG/OAzrw9INwtBqoqLgPzYulpclPwufURjV++XuscHFTyiDR8hUsgNox+iB4G72fBb0MbW0ccj1/BO8qU0IL4bZgxXQGywWhCASkD+3zyMBeEPLYr4F+bOdhpO5bM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bq9DeO1q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bq9DeO1q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 421C8C2BCB8
	for <ddprobe@lists.linux.dev>; Mon, 21 Sep 2026 23:10:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790032234;
	bh=sWVLhDL2ybK/vRvjv0VkAMLIqDizc5Uno01eBfw+CjY=;
	h=To:Subject:From:Date:From;
	b=bq9DeO1qL8Y/E6M+lBgfH32IXoVR7jgIb2LltCU3lwMhCaFDgHA8AvrmPw2vkgC45
	 uvq8mgmkUK2dSnFyKbsi+xbvGzCaXqrRDBJL8DETrUtw0wL+b8j0Zbzx3Iqn9pBWQW
	 p90XSS1g8oKu5gC6mOubU+fuZ+4l4TYSvvcN0bfWQJH61Tiigj768N+2wJHO09Fno5
	 scFbC7j7jMbzqdEFt4Le00z9Fc3AdvaWRUwHb0SXSfXaKVQN3hnj8BHUfgbzl/cIQY
	 Y8OlJ5xvBtRAsqPFUwzGy0kqcWHZoO8umB5CogP/1EOe1qQ1UI0DNTap6Np7dPzsmz
	 UND9mDlCVeXyA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id EC233C982E6
	for <ddprobe@lists.linux.dev>; Mon, 21 Sep 2026 23:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179003223384.24634.10399642246516070482.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 02ecda29f2f28e2fbb3ec1da29a440fa6c7b0b33dee5c91cb7936510bc718f49
Date: Mon, 21 Sep 2026 23:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790032233
