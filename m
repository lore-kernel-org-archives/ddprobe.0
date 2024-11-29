Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E7BB17A58C
	for <ddprobe@lists.linux.dev>; Fri, 29 Nov 2024 10:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732874754; cv=none; b=mDvVOVTm98I1pmA7keFtiyaIsdS/YnpaMD+xVTfdiHjkSHiudO8Zgs2dKz0zLfbms8UUOk0WPqIk6Cppruz5dWGkSd0xwxuPLpMI/qhYicvYiWioTT5lcdKQ0fBMg61oVIxn8b8VeSKSsRnf3COi/neE4xZMUn665QADOC3T7vE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732874754; c=relaxed/simple;
	bh=ZTRv+z8cuJxeDnCBlpekHdUbiuavxao5o3WSI6DkzN8=;
	h=To:Subject:From:Message-Id:Date; b=DfqNNjk9jZ/5Xjh2rWABnSyoB9fqr8z5fjrZFd46Oojz5tiaSuFDDk4Z6CJX+/MQsTf2IYHKhDO+YbkXr9q67ZXdqTDlJWlOcZ/hTw4szCLaotDXmomkdxZj/+p4RrKcDaCpnK3fmCn8cxwocP4u5P+D1hAI9WBfXldCp43Bu/c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=L5eMrbKr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="L5eMrbKr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC69DC4CECF
	for <ddprobe@lists.linux.dev>; Fri, 29 Nov 2024 10:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732874753;
	bh=ZTRv+z8cuJxeDnCBlpekHdUbiuavxao5o3WSI6DkzN8=;
	h=To:Subject:From:Date:From;
	b=L5eMrbKry5xrgLpCuuylJDsBR03ymUzOVsrStFQnPpGxNQa1vvFg/p6Dmx/P5IHXs
	 svEBBw/qF4wXRGjfcLPnCvcQUH+Ju32vlcegxqVg1mnq7geD5Of43Rg5pAn1mH/YPK
	 qBpXH4p3GvNFPlVajbNvlgQHJfShwOfLPupFruU6Bq24Or8R/teUPES4aFNpTtQdSx
	 o06jPFMbDqTipScGkPG5iW3FoZ17mQiL5JksDB5YEdbEMhts9tY2lo6jkmiI7zS77e
	 oyjbXM24Fl4wBk5BoGoIXDfJM9xEcqEvkHbgGOH8J6DAHdqEIc59L81Y6Hnwc7PK/7
	 NENHtrmuAO2VA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94C66D6EBF1
	for <ddprobe@lists.linux.dev>; Fri, 29 Nov 2024 10:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173287475360.22681.6938270433965208805.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ecf2ea36f82bdf6d0520e2e93259f106f6e272bda19358039e1e4341055c019c
Date: Fri, 29 Nov 2024 10:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732874753
