Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23EA2881E
	for <ddprobe@lists.linux.dev>; Thu, 31 Oct 2024 09:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730368554; cv=none; b=WVzVtVy2gAIEK27eoZbRtCbpzosWNRETNpLg29SovzJ9wVwNq5T7/hRJ8kXHad0B/baPmOqPSRkV3hH9d60UrZ7bdH750OqjJTgkm8GMPsO72ehurE1ipBRrd874IeEvDJ23+HRxnHPgIlJOzGQFPlo46LTN7PO/et5mC25Wz4M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730368554; c=relaxed/simple;
	bh=wTo271f3gVLB7rWTrzTO65dY3Yf9jNfRUIWhTFq5xVc=;
	h=To:Subject:From:Message-Id:Date; b=kjMDxyKwYabBL3MEvtiJqeLPqpZfqVLS1dcNA53c3NAOkNU6R9Ed4+h2lg8W5CbQBRD80thUoNCp2vQLFsufvKP/VxkU9yGYND+2e8mut01v/xSfjCdTd1mfGAApdZl9wM9CZF2JpdytAamfqkwhAl1f+6XD/NdCSW9caPX6VZg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VIJbUhAs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VIJbUhAs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A57CAC4CEC3
	for <ddprobe@lists.linux.dev>; Thu, 31 Oct 2024 09:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730368553;
	bh=wTo271f3gVLB7rWTrzTO65dY3Yf9jNfRUIWhTFq5xVc=;
	h=To:Subject:From:Date:From;
	b=VIJbUhAsnu6oLEHUW+ZExX3B/8ZQPsB6o74bc9dFyTpNiuO5iG6dFIM9+QJHE5+lM
	 LGOJgadkTmXOS52aGxOkANzrHuGEU3OMkk8Ivi+B6iT6sPU7mXALYvKFuDJLvyIOrS
	 z1GdnftoCY4edp6/NLNo8MJ/HDJfRurVEguBXbTb3RArefTmDiL7urAJGZ3rv1YY5j
	 O1dZTG2r4VLcAeebBjhvXOY57Gkda6RLEYpAIxvAdH7nYviUs9tO3v69HkhZHgWeDz
	 6U/3xcEdzs4v8gVmCpAMvBJFjnPnUGES1Efc72R2kP5YWiar5Q3DewM3XtJqILbVq/
	 YmJUF/+1Ld14Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94783E6896A
	for <ddprobe@lists.linux.dev>; Thu, 31 Oct 2024 09:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173036855359.7852.9671613062944427244.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7e1c23b7c091bfa4b4ac50bca45c21c5a6daa90813dcd46093cb1826cb314698
Date: Thu, 31 Oct 2024 09:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1730368553
