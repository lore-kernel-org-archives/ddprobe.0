Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 250EF1EEA4E
	for <ddprobe@lists.linux.dev>; Wed, 15 Jan 2025 09:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736934354; cv=none; b=XI7kF97rWDLmotNixsm05zuIzd5OikVZA/QJdVBskAuoWExjNc0Ek4F9bV7sOHTVgnm6ptc1MjJbpWluoYtkzYnPZP47q6irRSg9UUk6zXdcr5BKehroHtNkKuyDWC6zokxGS+Mw91rTwu9W+prTBXrStW1tsMODUSwQchM2mvs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736934354; c=relaxed/simple;
	bh=nIi5r+SU301m7D9wXOQibe/w7Fw0UTcXyw7GadZEjuU=;
	h=To:Subject:From:Message-Id:Date; b=ZJgEHw8yvE4oQQgCMSMl3/9elhTG4bCJ3hR+duzVfr9qCR6uxKsh+eN90oQ+XlJK4Kt+rntTxX8PmHDbYiW+RWr5xgTAhWh2YO+diXs6m8cp11NcZnMmBLI/6V5PrPxbgfPZ2VS8ivsZsb+wVjU5scWXh85pXIdAw7EyOkfWurU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lZFjP8CV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lZFjP8CV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A20EBC4CEE1
	for <ddprobe@lists.linux.dev>; Wed, 15 Jan 2025 09:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736934353;
	bh=nIi5r+SU301m7D9wXOQibe/w7Fw0UTcXyw7GadZEjuU=;
	h=To:Subject:From:Date:From;
	b=lZFjP8CVRPnVShxxvOKtUI62vczNetx0Jng4MIAT8an4ACVQPSqSGVqfvNofTS8+I
	 tyJs1YFrb7zMIdQp6N+zoloKDLPWPu6/0yXoRbibQGH2gP7OZT87TTwWvzhXgIPrZ1
	 I+t9vprAYQQWvoZB9BmQE4PM+Rzq4rfAMsDWzI3v3v9MOStunYHWRIYxxVm/iV+RvO
	 Iapd6L3L+ubTM/qW7qOjRXknAmP3357nKoTofSmILzdTsCTFlmoYFqo63Dj8JYxPYY
	 3RXtKVbW8xB7z50q3RRHZKH6mfwx0uyndGgERxr3QE75Li9eabDL//q+9vn5Vs8rD8
	 TUf4ho7tOZM6Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 918F1C02180
	for <ddprobe@lists.linux.dev>; Wed, 15 Jan 2025 09:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173693435358.8404.16036533485185740677.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cbb1e15b61c11cb33c3d55da07d27e727f6b3ea75c83fb5425457f4bdf6a5b2c
Date: Wed, 15 Jan 2025 09:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736934353
