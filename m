Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 00FAC2882D7
	for <ddprobe@lists.linux.dev>; Fri, 10 Oct 2025 12:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760098794; cv=none; b=VOsWZ51pIZr7o2CpknpCajCwXKUG3lt2RCnfasD5urpZdiiJgCh5wWXlRCBsr+8D5ykNnlOk+8ADkkDD0YI8twOiqBggz1MMcpZAWrIU3GBrC8PvWtvuRvC/Wlo6QxdswWMmbslSmaUskFVhoeLtyRnQgKuzm1L63RLQqmoGOho=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760098794; c=relaxed/simple;
	bh=j+BUx39HtQrqHvCov5Gra9UXmXdFhA+tWQn+4774Mww=;
	h=To:Subject:From:Message-Id:Date; b=UpvY7nRL57I6QiN3EtZiCuSgwK2v9rJJG42hKAlmWbOFCyAwmUGn4nbzcsWgvv2kZoGM/symOb4cFeXJcBbvl++5m8+MS6a5uKKfOjiJEK/XoGHFsMQ0fwbNNgbY6pXdsLYzQY9OTrjR12IgewBS5hWYzZXvV0bYc7BZkhac028=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jzorsHMX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jzorsHMX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FE36C4CEF8
	for <ddprobe@lists.linux.dev>; Fri, 10 Oct 2025 12:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760098793;
	bh=j+BUx39HtQrqHvCov5Gra9UXmXdFhA+tWQn+4774Mww=;
	h=To:Subject:From:Date:From;
	b=jzorsHMXFtfykQFSMjXfJaQtNJWqOHjH5iUn/nnTK7MwJHMtn0SZ7SHRqJhqAqqev
	 qNmLaOkgMllQKZcXGyJtvBNHAPgM76EGIVJfO85QHu4EqrDjqKCvrHA7+D1tlhxF7f
	 367SoOHkK9ANzRSCv+vgRHeTCAbj7TE9C2ADJBTINsl5fOkuQigqySUICEDvGoNtGG
	 uAmvTxGCOMRXlS77rVsNuMt6kfB0P98SKJvZ+c7fs+Hg6OEUiOL7CIq/Cb7lSERMuz
	 q23b1vCfDhO47vca55QPJGPEHwMijUMjTTF5RjjFaRAnmMN7Uome6AoTdTKNZD/1Cx
	 yZEGPTh9GIufg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FE87CCA476
	for <ddprobe@lists.linux.dev>; Fri, 10 Oct 2025 12:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176009879358.25404.14388527976142042991.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7104439ddb4a1c1e1b7f3a7781e55a8422aedfaef89d41e38784b7297ebe03da
Date: Fri, 10 Oct 2025 12:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760098793
