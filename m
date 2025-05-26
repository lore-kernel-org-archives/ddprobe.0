Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C4D33335BA
	for <ddprobe@lists.linux.dev>; Mon, 26 May 2025 03:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748231393; cv=none; b=rKCSSy8FubKj5lF5O+plYeKrs585/voKsCa72wuGQxjA8cYtYyJRa258gl1K7VDLNuX6cLH5qxHEXmpr40fGmqccPbcM3Dwx8yN1DlZDfMNyyzYvWZlYFV3LNhwAISwPNCBPhYLS5D2DQgeFstFhD1wrdFWNZB0jC4TK7+rkhB8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748231393; c=relaxed/simple;
	bh=XmymdhYC0U/sQQoOjlsJO6RQcDKRifGRL8k9OldQmcA=;
	h=To:Subject:From:Message-Id:Date; b=dIL5sPC+SrE4KLZWcWKQPdqhI787MCWO/C749z88+1y4LGQnlpvxzR15GWTYeto8lZAAUqQRl2zvSrO1wN6jxla3LTdWlVcsvJLg6zUduemnX+h3xgBZB1CQtgJOKYxh0xrJAi3u0Ayej3dDjRsEwvdk8cWFHOYKQO/3RXJcDvQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uKjlFtH1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uKjlFtH1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A25F6C4CEE7
	for <ddprobe@lists.linux.dev>; Mon, 26 May 2025 03:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748231393;
	bh=XmymdhYC0U/sQQoOjlsJO6RQcDKRifGRL8k9OldQmcA=;
	h=To:Subject:From:Date:From;
	b=uKjlFtH1TmjKrFI1+fL6mY4HgzhH4urRUx9drlEiFT2cRBN6BA+vq9xSS8AEdMywB
	 JTq2tdAxZo/zz8FPaLIYaSSffqwfTlXbJhTl7eq6N+C5O6u90zaHJ7wWPMT8YgTKPV
	 shbOEaE5egcIlwdwgTLB3loj34qsBzJnBlkvcjRJZqloTP7n3oZHXT7wMGSCXeaW7f
	 /nHmeBiwUdysH+z+r6xRF/v0COLlqks6OTzStDKWeIguZWPF9I7oybthgPwTXxiaUw
	 NzlnThChzQ2iYx8ouvgckvWfiqGcqg2uU/yYbYuA/sLFkVdgRpE17q4WY1WnTe5YpX
	 7fbpp17AOj4gQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93CBAC54FB3
	for <ddprobe@lists.linux.dev>; Mon, 26 May 2025 03:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174823139357.19870.7724249699104525729.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4b6eef3106633b06c6a8bd63cd9da52e26a2647dcaa1a98ca8af59b0026afac8
Date: Mon, 26 May 2025 03:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748231393
