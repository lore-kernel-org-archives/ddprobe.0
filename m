Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 75E1037416B
	for <ddprobe@lists.linux.dev>; Fri, 17 Jul 2026 18:18:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784312314; cv=none; b=VPQOL5bZhgFJGgF2QbCjTOhNpIEQgO287zUwF702n9ns0A2aVkeONsVplHgB9V9WoXDXXECMbNt0esTTPV2QI5sfbDH1LO3U5t6uEZBZIeqifIdHHQL1iBkIWcfh0z32ijEQVIW+UuDIXmV46uzmbnWjWqNrbRMqq8xjWiB//Pk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784312314; c=relaxed/simple;
	bh=9ReTnYWEDhLWi7/UrbR9BKC79m4BAr0rO4hDttfST+0=;
	h=To:Subject:From:Message-Id:Date; b=Z8OsNdaiWCvBvM0Vo66+1p9cHh6l2MmZxdt+eCg0PPcQT8JkdTKOw8N73KYu0nJPwtLdwYwaw7NkX273EO67bcOAioRvgYyaXuZlTfqMGHRzs7RlNwyokEWyTsYX8yZKL8G6qSqe7WqSCY44uQgbpag9WsDZiNKha3WeV72O0zA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gCFbotWQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gCFbotWQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EEAE6C2BCB8
	for <ddprobe@lists.linux.dev>; Fri, 17 Jul 2026 18:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784312314;
	bh=9ReTnYWEDhLWi7/UrbR9BKC79m4BAr0rO4hDttfST+0=;
	h=To:Subject:From:Date:From;
	b=gCFbotWQjID5Sp2aUV0FCFZuF+dwkCrHp5W2grTpIS6Ki+uqV1jnwYAxcjI0LW2kQ
	 OevJgiqOKQ/APvQMHj4AOkABc2nG3uUxKuGnu8KVcaPBKuahdQcgrEQCb0UttBgDU5
	 IHg47luYwI14cFuHgL9kfGHbts0d9RFPAwYTYldxGz4shwDnJs0OcNadmp1vaWO4xU
	 amkHb24ExylK7UNWMMnE2p8B9cLsKkg4h/uu9V4qYVHt+KMt+QG8st+9wsm9UASESX
	 ejDC8ynRszM5X9lpmfeiXY/+22bBd7CxKUk5mHVOfteRt3Mwy4ffx6qEO9Nb6y/snP
	 feyxxFsKD3cBA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BE5E3C4451B
	for <ddprobe@lists.linux.dev>; Fri, 17 Jul 2026 18:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178431231375.31387.13856191123166562603.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d13aa57ca25e023b6c7ca82ff75e33ec01216c285521655032260dc8b783f598
Date: Fri, 17 Jul 2026 18:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784312313
