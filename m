Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 96204235358
	for <ddprobe@lists.linux.dev>; Sun, 12 Jul 2026 18:28:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783880914; cv=none; b=pnSWl0uET3eXYESxTjxf/vFQrmPc2jMpLVpBCHR+7ajca4yaZHHsrHeM/E6IWQcX58A2ExVe1MSMLTZF8h/a0+kUGiShEE96Gzr3k1aEk5fDpOGtRH2vsQf7/FwRbZRALjAM7CmK5LSkpXSjl8844N9uxh6vBf+LvR2POyQjKig=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783880914; c=relaxed/simple;
	bh=bMQj1X98bSzy4+1+awk60Iv3gw5+csfbdc1lDpPHIyU=;
	h=To:Subject:From:Message-Id:Date; b=bbz1mgj/Nh+4soVITNH5tJ/zLknAF61kl0uHEOUBnOmEwU90FVPhum9urKpYfS/gotZYDIx+t9l92PlT3qPkfde53XH6grNteKSiPL9eo8z/63PiwZHXOlbU8NklQbA4Bnq6YFmwFqysKT58sAcHA71uyORJm0BCXlvY3PSzaJ8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dsRAfTVo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dsRAfTVo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDF1FC2BCB7
	for <ddprobe@lists.linux.dev>; Sun, 12 Jul 2026 18:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783880913;
	bh=bMQj1X98bSzy4+1+awk60Iv3gw5+csfbdc1lDpPHIyU=;
	h=To:Subject:From:Date:From;
	b=dsRAfTVol/7+iJfNwGm+IS0RjqOrvtWxhHTjOZXrgtQfse0gL7Dx+vCjTvmB+Z/dC
	 oU0D5RazQvSjpU/p6EMBFHtThZnj55WmmZ/5Xo/Tb/DANkVl6MP4IUwCh6chPRju4S
	 dN1Ycen+p7PqwsE53Y7nQjiCJHUbF3ANc/4PI0ljU5fOjNJmJMjMqOudMgq3+bJBqL
	 grqSWXcZrARgl8GpLRLftXmQay+UsboL4aeHLi3vnZNICS/CHKVEsvzgAeaMlio5ES
	 EvmZexazLpPtTxtLIeVA7U0YxHvOaiywpBNyfxx/DwKT9en+ChaZ70hpJ8j9HPQ9Ry
	 pUX9P6O4LHH1A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA6DFC43458
	for <ddprobe@lists.linux.dev>; Sun, 12 Jul 2026 18:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178388091368.26183.8191991236169339079.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cc672190f11d40470a6c231a1811136e482a5576c3ef78eef84cc051ab386dad
Date: Sun, 12 Jul 2026 18:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783880913
