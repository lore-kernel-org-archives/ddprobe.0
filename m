Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 512B02D7DF2
	for <ddprobe@lists.linux.dev>; Tue, 30 Dec 2025 14:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767105834; cv=none; b=CtqWzoWlvQ1LAUxJKZuTrqy/PlzoeMoBqzQGMIh/YiZQ+fVcSntFjX61i/8FjLgYQnUQX4oSIM9k/0NSmYSRsdjxJuOckA9PtYmduNjDr8h7dP9Ld2vTMAvANetXGkslKz8qnPRAv3DkhvDfd6QHVXBoScXHYgsQD9AYbC7NmR4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767105834; c=relaxed/simple;
	bh=ocb06GfmysJaWef98gNYrdSlmtMKhDZ6xMfuf7jcxGc=;
	h=To:Subject:From:Message-Id:Date; b=K/WRlYFB7Yue2QlKnG6sUo6SDiIbkx67C918PhoBPOL++yBgHOHgWseGxcV9+i7eaXKhQWLxOtJCwvPmPF4DVzbcu6Brs895YOKIDb4N1JghAN5kz+SboW0HQJ3E8eRYhSJUiARGdrSYM3WD96XyGC1fxuA0Iwpn59UPx7bjyw0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=F5miMAex; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="F5miMAex"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1617C4CEFB
	for <ddprobe@lists.linux.dev>; Tue, 30 Dec 2025 14:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767105833;
	bh=ocb06GfmysJaWef98gNYrdSlmtMKhDZ6xMfuf7jcxGc=;
	h=To:Subject:From:Date:From;
	b=F5miMAexWV1ro8e+95hsIr1H02fH6T9nN7D3MF5z5qTruxbEjQWYw8B+0XLzRv0Sk
	 14JZ3Tq2DFll3VK30UK53vrEooFwXvxJlBQ9a5tPgz19wNBbZc21hCX2gBfuIrRdkR
	 mo2bDnMtyx+dhZyuAgYbWcun4kWGqJtA3oDrXCRVAeB+2HRht3ezvMkB+btLxI3m/9
	 /K4EmXPzbCfvBZeG3xT61lLbkSAchBYg9k21icGjQRyJ1nGRpXtne0+UKC5Uf/5nO8
	 PlHqshi29diF9Bd2QDkmV/S+n7R6+NAqRzCoTnhRyc18K/8EuSIO1PzQFNbcOsCTyM
	 Hy6zJ02LyELOg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91FE7EE0203
	for <ddprobe@lists.linux.dev>; Tue, 30 Dec 2025 14:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176710583357.30709.6360293640174246757.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 452cdcc5853c074c190b40c97ee224de09e8deff75886f4c272e9e2f02f7231f
Date: Tue, 30 Dec 2025 14:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767105833
