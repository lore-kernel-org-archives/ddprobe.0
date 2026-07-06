Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7123932B13B
	for <ddprobe@lists.linux.dev>; Mon,  6 Jul 2026 09:28:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783330114; cv=none; b=GM72LyvrrLcOgNpwFZvsUKNT14bxTN8aMJM2yA4m7gtqhEe9xBOV0hNrnaY/w7E5qcAJLk7Z1Z3urAn+vzdfV9vC+4ftEprwZtck3uuhlskbUjL6dAiVnEir4UFUJXE8Kpmr+xH6Qcsxms+BExvLCgVtIIG2rrQJ4OqrN/zrzHE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783330114; c=relaxed/simple;
	bh=U0hzBcQa8X9Nlf/F1FNnzBMJVBSM6tBom+0rGl/QtDY=;
	h=To:Subject:From:Message-Id:Date; b=RCV2kC98FxXfbuDL991RIYkNvlfD5taQG5GlwN+Ef545RQsxIwOnbRgnrRkk3wxLO0ePUwKmDmgzlAsD3JsXxwnnSa9aPV2pNf5CF84Hgv6uWzGBE5B/Rt3CumJH8ZKkdutrOYKNHlJe9vTF8NkWFk/ojC0p/qAUGs9kxrOHn4s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LL76jwKF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LL76jwKF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CCC20C2BCB8
	for <ddprobe@lists.linux.dev>; Mon,  6 Jul 2026 09:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783330113;
	bh=U0hzBcQa8X9Nlf/F1FNnzBMJVBSM6tBom+0rGl/QtDY=;
	h=To:Subject:From:Date:From;
	b=LL76jwKFPYUqX8o7/ow4lhtT3AiNBxQ6cnbD3laphu0sAFWVszdnxTRTo9lU2kO6k
	 U4sp7dtaHOi/+0ibzZvrJOQ6C+2J6Iv+MhUQKGBqCZ8Jxu1FF7Fx627Lxc2b4QNlVl
	 kv+WchxT3XM1AZssdWdjAW1c5silL6obGjvJHbJ6ld8dpjZa1FWrIA9lixEJ8sgxyu
	 5rmdvPLfeNSeOS71WhMUU7SsGfeKCDIs4ibAQHAsJynJDk7aNjYSNJN+T6lQDQaLuE
	 ITtKRTrDO/esGKD0GMtOq7/x8jSgIpXZqU031/Lst3Ezwz5zEiPu/fLiq5pUbG6EyK
	 ouHsYkx2BkZJg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9E77C43458
	for <ddprobe@lists.linux.dev>; Mon,  6 Jul 2026 09:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178333011368.26937.5778829118086120924.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c0daccc1e3cab9572eee3d0a93021a9b9b5e6326e544156241c7fde084522b70
Date: Mon, 06 Jul 2026 09:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783330113
