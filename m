Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7AE7113BAC8
	for <ddprobe@lists.linux.dev>; Fri, 14 Jun 2024 11:48:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718365703; cv=none; b=OOfGUZR0LyZmG20tS8iqsn+Xu3ZoVLnTOWzjpRiFBYIsDfbIcPBexEJ1Xv1CakWUa3wt189FCysuFWRj36Gy1aSSf5S+GFz/ahmCZIv0dpd/12iycdD4lnMgRf2aiLWWPIPlo/451UVSZH9x+iQ5udxOlz5emUKEgXr74vJKHjI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718365703; c=relaxed/simple;
	bh=GZerFKcWvlEX+qu+i29moH6IxEDlRhiyhZsGQkoyipg=;
	h=To:Subject:From:Message-Id:Date; b=uIlPJV302RvCHzI3uASV0q00PafT5lE94BSM4O75g/dpndJ8n7vfoqu7KVx4LrNr1qxaxIOJpz8E+vaNaGDRcVr8lXJaKMinUvR7TTQRW7GO60oOjov4N8p+ADLGsMPZ2zpTdzESzpLOsLhruvKqIKci/1dY3mDmZN6q/M7KCNA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BAn9feag; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BAn9feag"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DCE15C2BD10
	for <ddprobe@lists.linux.dev>; Fri, 14 Jun 2024 11:48:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718365702;
	bh=GZerFKcWvlEX+qu+i29moH6IxEDlRhiyhZsGQkoyipg=;
	h=To:Subject:From:Date:From;
	b=BAn9feagVj8jMib+SN09bkyx5TR2VKNxM1pUJE0eWIaFz7O27ovUzoKaWxwR6ccuG
	 LnRW3UMskUkAqzj6jAJe/0bCA1jDIoILw1m9Ye8tRleCKQmUVxonWmkaVQ4La1Pexr
	 gdc4JenOtRr+lPV0ZKD5EE1dTX0NIVsFrwZs/TPq9RCyyaRQqWmTQoAg0CSivI8PXo
	 jDbqt/NTona3K2U3z8bhJ1URC/ymqGHvKuJcIuhC3dwZ3zJbIveh6hGzHD68Dc2oc2
	 SjfSNT0aqW4gC6JMwJxNroXfAk8gQ8CBcVOd2VQ2y4zyG6CTz6GN3S0bsITdYmzjNn
	 6U+YhWv0AyexQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C6D9EC27C6E
	for <ddprobe@lists.linux.dev>; Fri, 14 Jun 2024 11:48:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171836570280.5171.1575874035050260000.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 541ef928181732dc6c32bb5d18763594b168e38240e54210f2a472dbc1f94283
Date: Fri, 14 Jun 2024 11:48:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718365702
