Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5BC5F243365
	for <ddprobe@lists.linux.dev>; Sun,  9 Feb 2025 03:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739071554; cv=none; b=OZpG+zjspdcaUqZOTpwU9tgCkFibbKAvT95twJBgrEz0wPKC/qDQvQGbSVJ5bjuv60GkH/d9NnEclR0z5x9dCndLwi+LR9mnb1MeGH83t/07EgBG+BrkvuKAKWCZAMCtbuYFZfLgxwsbmXRr1rsh+IQhSniembfnWVPvRPRT0m4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739071554; c=relaxed/simple;
	bh=rsqxFYnn2rceol7ZWexaSYHcYxLDoFaKfe69ghW7L4I=;
	h=To:Subject:From:Message-Id:Date; b=TUJaqX7m0An6ncKSd3EtEk2Lshq3MrbEERavSDIJN5iCFEgKYinYDEloiC0HIreYImwr8KekpusKoML0+wmHQu5NOfURmMVzT+hPHvIdjSTAJ5lmv9I6uc3KBQ7g7qGFN7Q3jHBesKJmSrs0jbSddQtbyA5TN9R4LaXgEqx41Zw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TXvXNW9E; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TXvXNW9E"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C5585C4CEDD
	for <ddprobe@lists.linux.dev>; Sun,  9 Feb 2025 03:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739071553;
	bh=rsqxFYnn2rceol7ZWexaSYHcYxLDoFaKfe69ghW7L4I=;
	h=To:Subject:From:Date:From;
	b=TXvXNW9ELECp+Y7fveCNBXRolPKZlJF2YKYzAtHWCKW97X3uqLl3piZGd8uhppWJS
	 1Pds3yD7+AlelLeY/vsKxBh5FsfhQH6hMfXIxrg1LEjGohYhC5RxS0j67q7xAH4hj+
	 cqhfvFaBEjITXSKJCh0wTnkNqJPPPvbMNs//g5gHWSc4HrYLI33FqGVFrHODnv6OvE
	 jGWoCb5c897KcgiXoFxVG5qR8CXM+BROOyhcw6ZG63q6U47VU7o1SBl4n9MjWakINb
	 SdEijkMQVonBHZ4aH7BWG0xKf5SgqN1jM0TIqiZ1volRGRpBYkuovuRO31jJ0vVc51
	 IJeiROO0zbJKg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE255C02198
	for <ddprobe@lists.linux.dev>; Sun,  9 Feb 2025 03:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173907155367.18954.7079103081358734258.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ca8288eefae0c3b8324f000f4db828148e83f28f355ba255d464a11061d8c687
Date: Sun, 09 Feb 2025 03:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739071553
