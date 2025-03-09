Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5457B2628D
	for <ddprobe@lists.linux.dev>; Sun,  9 Mar 2025 13:58:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741528735; cv=none; b=KUiEh2nhMrrVlGe/O6FFMxXS4rHzbpAyKIJgs5dMgDvnSBIY3ZInadfY51HKBb7H5kGEO3HoVERKasd4Bb4ZK/4kYic8q70612F/UQ/7fU7nA7/L2X5LFQC9MriXx03KDAOb+rFtHOpGiw3uGFwI4bbS+gJy69DVjGSsZysFGns=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741528735; c=relaxed/simple;
	bh=+2crXSrw8HPpJUIlPyYQA4oHCzwQjHlUqPkSQO9I050=;
	h=To:Subject:From:Message-Id:Date; b=MWT26vH7lHy6Nh0IDLJznSpj2Vlhato+Tm5FAm541SrGM9W1igWlhAMnpXQ7+hkmnR9fyqHqrOOhVvxwsfS3GPH1V9lXQ01juCPTJrVbAYP0lkh73k8fwdCHJLbbwNQdGqPQTc89qiyXD1OqZBlNN16xC6XJEJbx0UbPQ8do36I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=a690z9gx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="a690z9gx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BD826C4CEE3
	for <ddprobe@lists.linux.dev>; Sun,  9 Mar 2025 13:58:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741528733;
	bh=+2crXSrw8HPpJUIlPyYQA4oHCzwQjHlUqPkSQO9I050=;
	h=To:Subject:From:Date:From;
	b=a690z9gxmv4tQs5fbUmIFWqpWI1I+7mj5eShVprA5hMqeVerEBSYdvqz+7/JpCw/V
	 jxKjrKM1QuKrLvSb70ZI+NvNNj23ii+djNCpC6JOZwCcjc5pRDN3hJiznBQsORrJDD
	 3cd78n0Kv7CLacHC7LKNq9i+mYxhWDwTF47A10sXO+iEzm8JYIDotuADaOiehf2Z+j
	 NkezfKK1wlRcRLEaiBva20qzDWWHMJEhkcFfxPG6eimtOOtXIp664hro9e/6dSYyUj
	 xSLh7xJH4zwbGdq+5ZkaRpRSrtWCv7oj4hNZHdhOTMggksjAzwsIM/zaxShz9oejEh
	 Nn3H0mFZUMbDA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A994C28B2F
	for <ddprobe@lists.linux.dev>; Sun,  9 Mar 2025 13:58:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174152873362.9810.13907669093319591415.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8bd5a2007b667e1b59b0ee619c762c5a55b062bbb3ea6306540d62c3bb067d0b
Date: Sun, 09 Mar 2025 13:58:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741528733
