Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4ACAC239E9B
	for <ddprobe@lists.linux.dev>; Tue, 11 Aug 2026 03:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786418434; cv=none; b=mFlWD1WU3ebtCeKXCC6GFENdAUqq51oNQ0aRyVl8jIrhJDIoMD9u+07UbtKCD3jBH9qlRjMcq8CiJSJk5ALUl/Dn5mxCt5DbyXk3XuBDYED5Y/A7ttvjpBK7fYTzot8nlw96pE8CJJjJf+JfER6br5NQ5AiNYpMwKSVwEXygMT0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786418434; c=relaxed/simple;
	bh=rbVn6Xtb9KsBh5fqhdCV5VSqXNYUTBN5thZ0z4eMFuE=;
	h=To:Subject:From:Message-Id:Date; b=S3xXQoorojdHnNTvI5NBbtabA3hQ2usmAX/TaeI4UV+pxa/yajVnv7OckiqXUypzpTjTI9mpdrMR02aOP1HFm6/om9Kg8MfMusTsb1vPv9uKjvlFWGeQ8fM/Gvhh0XdkBsJoO/gCgdtijt1gXlHmxxasTeX0/ptwl3DS3uZ5puo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Dn3WbFJg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Dn3WbFJg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D07ADC2BCC7
	for <ddprobe@lists.linux.dev>; Tue, 11 Aug 2026 03:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786418433;
	bh=rbVn6Xtb9KsBh5fqhdCV5VSqXNYUTBN5thZ0z4eMFuE=;
	h=To:Subject:From:Date:From;
	b=Dn3WbFJg+KXy3C/0Z/Nxpopo/nZFzvc6oWykjybRcVV6sC/ZCG52j7XXOoOY1s0T1
	 9HpZ5EImAOgDpx0SAXkcvrgAJO0GarWn9XtU6LFKzlOq4gM5jM8nMJl2FE3lIHaJVN
	 92jB1XUkbs5TnDxBhV9RIKRynWDMENjqgabI2iygz6nHXTaBQLR8eLUuC+vF1T2GaI
	 BV22ZD/plnmC/ezk6s/bTp1ppRWjpXLSp1d1BbSy0Stfq1lA7lkgpQIeYyGYi/e2VI
	 0CcwL3X49oV+7Z/BTOSdg6PUHzuywOxVTWAMrXQ8imrK03gFqth1IBKbytZNSqCxEm
	 a5ep64Mj4iB8Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE617C5AD55
	for <ddprobe@lists.linux.dev>; Tue, 11 Aug 2026 03:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178641843368.10720.13011785527789809813.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8b9c5d97c594939767251ef06697a885e81e5e849a68bfc864430307c28024b8
Date: Tue, 11 Aug 2026 03:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786418433
