Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44F963FB1B
	for <ddprobe@lists.linux.dev>; Sun, 12 Oct 2025 13:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760275194; cv=none; b=N3PxWMOs3Y5jA9DCVmIodcpT7CDlPSTJFjDjsrMeRQnPNwD5GxaCgwr+heDA4H2OAC7xkwv2ajv8JF4nQu+8blqt+tjKtxsUGBKfbLkWBFf8VbhrGeKzL5DOflYOTftVOO8wryeNgDsaaZ58XbZdmXSo25SqoFnkmh8RUK3ST4I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760275194; c=relaxed/simple;
	bh=62bn1n6oAMujn9+QMZyyaaLyS+aRpa1pw2lA5OehNAc=;
	h=To:Subject:From:Message-Id:Date; b=RyXuFVNMCQdSIewcgLmE6WfuHmA8roipW3eU41Lh09gFnWsiYRyiEYzSU+Vs2jdvAZbQ6N+zIg5g+W1Mhj0o8o0KjpHzuVNKYoHa5sYK3SDo6B93suBxFQWdzsegwl6lHQ5AWeno39HggyJpTLMby1A+hPbZz0XOCAnPbAd4qCk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=svSVAydn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="svSVAydn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A63BDC4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 12 Oct 2025 13:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760275193;
	bh=62bn1n6oAMujn9+QMZyyaaLyS+aRpa1pw2lA5OehNAc=;
	h=To:Subject:From:Date:From;
	b=svSVAydn3XdR3Y7MSEKAUYRt03SFUTwDXasA+ZciBoDyTPM/OhLDk/55VoU4uz1r4
	 iVxlgfV4lWEOIPhQpQaBEDGdjQLe3xQ5ONXLYMkKIDuiY5e7oaM/bTyRYOSxxVvcbA
	 1cSiBXhbu70TL77pAplKvD3DHk1yhSe+QvN70veJl0b8+ri0xK0X1JGZuH2FGS8IwN
	 uCxBED24A/5l+bWVYj+OOl0Xh5y+WxMCMHSBtZ77MAlQt7A9+XpWI9lSk6CTO4f8Oz
	 2ecyC1FXN4aA0c0cp8z8VNQIJcGJwEurV+lTZV0MChGuUjgf1Bmx6YQf4VAy8NAmpv
	 LNx8lT4SMag/A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94CECCCD187
	for <ddprobe@lists.linux.dev>; Sun, 12 Oct 2025 13:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176027519357.13286.9569293664166246680.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9302691512b79f61cacd9c24f6c183bd6bbfdb51941e58b95ef66968ea9c215f
Date: Sun, 12 Oct 2025 13:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760275193
