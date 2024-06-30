Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6C4BD4084C
	for <ddprobe@lists.linux.dev>; Sun, 30 Jun 2024 07:24:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719732263; cv=none; b=Eu6nXlTbKLcqj4HpMYG0r3H6zgQ9RnRNUi+N2iutI0BpljqaMAq9B69jYE6hOPvcY0gyNQsOi3BnOaX/r7JKAN/gURWlhQcfGte3ZDubjstHTw/8azF7Ta65GY69S2SGpJPYAjxcG/XaQ67KL69u+m70mhSt4KbHnqEr5J1tqI0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719732263; c=relaxed/simple;
	bh=EhFkA663CNnafFsUDEnL1RSZpYnbyIPqiZJ7nzN/WSM=;
	h=To:Subject:From:Message-Id:Date; b=BX+3gv9XsYVvyUs8iBptek9Bi95OSmJ55vrJG1hK+rIMW7z5oHco5x9QaJVj4F0bX9tIkEUnSb+Zk/gzeUMFEaPDVo8PK1Jhw0dGfMJp9leqM8VMKDfnC/668xv7IEXOK+rQKwXlEc0n2ZG+Hr9H+QnzThrjFxUqqgGJzVF7+Lg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=opm32GiT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="opm32GiT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC818C2BD10
	for <ddprobe@lists.linux.dev>; Sun, 30 Jun 2024 07:24:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719732262;
	bh=EhFkA663CNnafFsUDEnL1RSZpYnbyIPqiZJ7nzN/WSM=;
	h=To:Subject:From:Date:From;
	b=opm32GiTU6ozsPtiUZW6odVF+7LhkpDryIPYY3tO45v+FfLARI84lYz4lPedl7Ijw
	 /AWqvqet0vl+oT5SAkWPoMV0+FyjH9ePPdiI/n3mQnC/ghUQ5bi6Bye/BAlW+hunHf
	 MuOKSC+6cFzWyX4y2fQV2+SH3UmnlD0ar1esKY2TqHxxZDk3fYAOnLkyMKlxlFZF+y
	 QcncOR6KtW+6QlYU28ZlIfrudwVde1IGGuQx9174csEVquV+s9mec89Zo6i+3BNwUM
	 acfrfmd+rzOhoJHK20C0YrUKEqdJsl5UUW+W5tCQj/E2PQBJNpX8Ndz3Yf7Khsh/Go
	 9c+m0pgzjDIyQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C716BC27C4F
	for <ddprobe@lists.linux.dev>; Sun, 30 Jun 2024 07:24:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171973226277.15354.15184010727412160209.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7925ba345839d35679abcaf73e8b44e957af745eb906d892537fc23e73e2c83a
Date: Sun, 30 Jun 2024 07:24:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719732262
