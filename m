Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43F70262A6
	for <ddprobe@lists.linux.dev>; Wed, 29 Apr 2026 03:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777432654; cv=none; b=JwPtKktOl6h91HLlj/GJsY03y3efOXwqjmgkeLcVNYhE8UU7dFh1NLkTetGSpLOx+H4j8bbPrfFkTefCFF13SVlFjP8fPLFqv6kSmQkHIDqyu/iA/xtm4YtfX3vQq9UUZZzI6V7As4LNtOTXTCYMQNUCOfiWEQQo6J/bbucAoc0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777432654; c=relaxed/simple;
	bh=lFQrmlNvsvz2aRMEjVSzjhbb0fedWzUsjO7wlgfb/3U=;
	h=To:Subject:From:Message-Id:Date; b=YsHBQbRp0iCPAuy7IQN6SQUhFpNb/0jvEs76/9VnOi5b2DONOwtD+y2Um7R617NaXD4iptpeyEX6I5TSA1UxSixzLbYXmlRJBUbFNQ+heq6aJhyQHnqWzZTVgCAY2BNoQUx+pHCdVBa2AgnJ/mY8g4a0C0ubEzFP9tPkU3dRDDQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nip/AT7E; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nip/AT7E"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BE027C2BCB7
	for <ddprobe@lists.linux.dev>; Wed, 29 Apr 2026 03:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777432653;
	bh=lFQrmlNvsvz2aRMEjVSzjhbb0fedWzUsjO7wlgfb/3U=;
	h=To:Subject:From:Date:From;
	b=nip/AT7Ecf25zoIfJiTQ42rakp8pfvlsP5FG7pVhRDN/6QaX6qCHoBS3TVoinzpWz
	 iQ5qO9a8vgqXBQveK7OrGR6Lefi3Ef6VRjySxOhe6/2OVaP8pJ9IR9DtHtIVZEy7I+
	 NqpVPdLBvtYgJEzCDwAj6Pg/QTDHk4ClvG41M5SObf60qx1YQSVmTbSFrQoGjvEHJZ
	 O0508nfrlMjdFxlWQxXHUzB0tU/AQR72/xSwqEbnKYmyxPUH7GUGxSpgrt5R6k4M2S
	 DYtejxa2QmB5xSS4FnDs/OqzvJEpMobWo+df5MGfazGFikWqYyZni+eREOQMO6zJUl
	 n4nqFAGxzR8oA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA97AFF885A
	for <ddprobe@lists.linux.dev>; Wed, 29 Apr 2026 03:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177743265369.8720.1590436587746130776.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d438174dd1981b93adc0811dd77e731a2ca4cfcea700e6670bb0c2222914463d
Date: Wed, 29 Apr 2026 03:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777432653
