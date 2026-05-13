Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DCF0329408
	for <ddprobe@lists.linux.dev>; Wed, 13 May 2026 00:40:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778632833; cv=none; b=pkWz1Qhhj1y/LfuXNeH6RPB2BUasbzl8ghdp0EtwLCopmexB11DtUg9RYVfcjx+YGWQIIDlXK1JVPwMEVDdYAqcp+th4JvOztJCB6nJzoUjYYDuZljCvfoISkj9uyecCky+UtlovI+AnDMwp7I57XgkiPwcPb11+98SxEIsxMJs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778632833; c=relaxed/simple;
	bh=a8COsBLmc1zmk+0Ka0KZImJJrQwK2zKM0Ez7WX+oEgk=;
	h=To:Subject:From:Message-Id:Date; b=olQqX5rkippzUjBGMQDyUYkMge/KlCQZmGtUj4GHcXBerp8P9sPb1/gKu1uiBYIMrSB0tDdFqK8oHWNxploXmetbsi5fbnPQr2rVNi1R/ugcMjo+JOOiTiZmk0hVKRKFOLcAv3YzKI/v3I8Kyc1rUjCgMvnzZEc0tk39yyHZwzE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iTcDsCHl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iTcDsCHl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BF203C2BCB0
	for <ddprobe@lists.linux.dev>; Wed, 13 May 2026 00:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778632833;
	bh=a8COsBLmc1zmk+0Ka0KZImJJrQwK2zKM0Ez7WX+oEgk=;
	h=To:Subject:From:Date:From;
	b=iTcDsCHlUoqNqoIwdzkF75/PYqe6LE9Zuwao9yDMUFVjdjFWWH68NkqejKtswpnlb
	 O/D4A394HomCucTr/bvbg3FlSFxNZXsBqypAyciiJypOYXCUKOacnyFNehTIsFy8mF
	 mVsnTQR1N9ElVz2l+L/YR9T+T4NB77uY+XTG5/md5zxj9sG8uQ2YFko7cUpQ8/VN/R
	 5LZlcsvJfjHfJbXEgpYI8HmNuAnMFVKRF7tEb6DYRAriaBYT/mMfkcEH2z8AL5s/QL
	 H3qBivpMCUAX0Qq6FFqihf0MlA174XUCQjYuT1+1gyO5ghebsBJLIe4F5KBoLrAqLW
	 zcBLe8pIek6og==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF3BBCD4F21
	for <ddprobe@lists.linux.dev>; Wed, 13 May 2026 00:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177863283369.3786.2771890085854977886.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2b6e322bf4d49423bff19ef404ee7891a6c5ab09dedb6491ef3e7b3cad594b6d
Date: Wed, 13 May 2026 00:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778632833
