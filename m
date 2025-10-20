Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3173E246781
	for <ddprobe@lists.linux.dev>; Mon, 20 Oct 2025 11:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760959794; cv=none; b=rLyIUhE2tHJb3jsThGdA3Zhhkrw4/f5669PuC2+dp2YybfCtvxQ8XmbTDnxB7e8XppyGji9sTorS1njVcsZUc/+4mommYTGG7nxD73tavWa4PoOKLAPSEjNKxAkQz1aqdf2P/owSZSs+lCFMYnaxyJMG2cm3+neWA9rqpopcCXs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760959794; c=relaxed/simple;
	bh=GJ+V2PsQ0IYcN+9YJFqEkSMoeMmBeZE79W9tGHZmAo4=;
	h=To:Subject:From:Message-Id:Date; b=hgVNtd/e3HSZdUMMDDaqp2poO2IWumaMrdNvZKC/NdnRVDv+udAmCnDyT/HRe8ppFerOFj8mrj7m6VS7ZTOXMzczM2Y6fhs8n5JzVWZ713sUZvE+njXc8p8jI9qEO8EcX8/on7XwcHwC4Ge/2a9+egC6l2vu0XklCnyxkTcLDOc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lpArMNGZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lpArMNGZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A490EC4CEF9
	for <ddprobe@lists.linux.dev>; Mon, 20 Oct 2025 11:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760959793;
	bh=GJ+V2PsQ0IYcN+9YJFqEkSMoeMmBeZE79W9tGHZmAo4=;
	h=To:Subject:From:Date:From;
	b=lpArMNGZu4DiZjhSeFhIgZKZvpLIp4LWOegnxrobbKZJMXzRBc4nzUBykj7FF7Qvv
	 kETTgb38j9tmuPVlAc8PJHbal1APFAMR0suEz9+hO5rswiLv1hgyN7/dU7Ms+it8MW
	 prR2sI/ea/j3fffwwL76Ugd8TMaus9FSBHF8IlRBTJLwRqQGFCjncPoZ78XJHj5Lu4
	 4UQzJMPgMLq/+XfMHevyvQPRkPRQcxrz8iRXKT6wTlMzKyhkYi0rbofQTXdp6U3xYi
	 nNzcjMT4mBNlrNR9YODZgUWfyEdb1lFNH1BX9vdjJAvEYGf9NdM77o7QZCszNz9AUZ
	 lYqXl79KjoALg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91BB0CCD199
	for <ddprobe@lists.linux.dev>; Mon, 20 Oct 2025 11:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176095979358.9693.3775991379463294573.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 12fd559db44c20ce7f90ed2ec54cde56fab227c2676be5b33b803b69f3da92e3
Date: Mon, 20 Oct 2025 11:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760959793
