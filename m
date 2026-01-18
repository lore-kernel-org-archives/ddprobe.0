Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1549123AB90
	for <ddprobe@lists.linux.dev>; Sun, 18 Jan 2026 11:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768736034; cv=none; b=LBjFqlSgzi7xVijqNmQojII21KmCgkEnU7EyMfd4U8yKRHXciw7Tv9UTmnO3565eXREYzA+acLq8YSjdEUqPH/Sph2ZM0zGBzjuTSw4rif4BBlDJwUJB/U4nB5hEI42hH8RaDWIhid3FltIr2UZrXsbOk4KB/VuynSj6eYXcqfY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768736034; c=relaxed/simple;
	bh=XK8Qzoy/2Jhva/KsJs6+js3Ymmk1eVvDutc5/wU+7XU=;
	h=To:Subject:From:Message-Id:Date; b=SyR63kXknhINiBI9+sc+6xjzeiALRhYy7KTeP+IBckrBYudJRsCNEvMmkwxbdrAjt8MpeAiMw1+97pL83eLvIX0VABHqBHjwv+TRU8u3WMuL+WunT7PcKK8FIwbVdvFBYRPWw7UviLeBnDyCB6gshXFnjXeLox7lln0lFSDEv3s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=c6YsQ4p6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="c6YsQ4p6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8BF8C116D0
	for <ddprobe@lists.linux.dev>; Sun, 18 Jan 2026 11:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768736033;
	bh=XK8Qzoy/2Jhva/KsJs6+js3Ymmk1eVvDutc5/wU+7XU=;
	h=To:Subject:From:Date:From;
	b=c6YsQ4p6W7y2FwPVhbc4ocNEWqrsLEY+kBgUKVKclk/l7oTZYc5RPD8ZDG2cul9R5
	 amSgi8Yava2UV0RL2UZos5M8K1lskX3ZJXuKgA/z76HRqgWE3SwGwhSf2zKXbbqA4m
	 0+FyBQaJYQDuJEd73H0v72H1OaJ+t7jAbSYMfxXku40d9w4cdEZQW2sB8nQfTGc9FR
	 WAE/eGlj4Cnr24d0ZLc/o1KUuIiQADaTsdIv3yXSDSnPalbiwkOLK+I0wBRVd9sFSU
	 nSudtSvmvm5Qj8etlhRC8k3bkIxEl77ehgoOR6OCVc/d7e4xCqZe8LWSnVD91F+L2+
	 apxKtToXBrlPA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93556C9832F
	for <ddprobe@lists.linux.dev>; Sun, 18 Jan 2026 11:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176873603358.9063.324921328141829157.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1ab2addb927d71b20c000413d3bc878a7ecebb366910ee7c59642b3490b88171
Date: Sun, 18 Jan 2026 11:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768736033
