Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E1FC25D207
	for <ddprobe@lists.linux.dev>; Mon,  5 May 2025 17:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746466795; cv=none; b=NOUQrjesWooQhEQrtinrZxIvBlu0D/FvAK+3ENCz++EYG2uCGeadioLY850d7EYMFZvnaE/+lwh1Cswqfq89jsFxyMis8uT85ufAVF4o/QANH1Wj5pgG8zDa6c4IfP6GLNkr5HC6+6YtfzSnbkQDBHYPk/2NZ5dTmHDKNi0R0nk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746466795; c=relaxed/simple;
	bh=X+miiTULnynbs9xHKC1nNTsME5v/wwjODmrTxVr1MCE=;
	h=To:Subject:From:Message-Id:Date; b=Yjrud9GFdwKFlGptIEVj30NIuO1nBGjcrn31JRPGhFTPPwpWuDdN4QInKpUO6G1nkjfWLQstwd224/afnPtJpp57qimLU8/n99hOG9v+OcBL15SoYbLjuuKKGJm4KNoLLCnb/9FsIobdWTBh6fjahfQFxX+/deE0oO84Z/lAWJU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mnSZPn4o; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mnSZPn4o"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0D61C4CEF0
	for <ddprobe@lists.linux.dev>; Mon,  5 May 2025 17:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746466793;
	bh=X+miiTULnynbs9xHKC1nNTsME5v/wwjODmrTxVr1MCE=;
	h=To:Subject:From:Date:From;
	b=mnSZPn4o0Z/Q9OZw6L9kFFPR5R+aq1HkWte49UjeFHl9R7AXyV5FV/gPwdwIPdHsi
	 fJ2t0klbhyupML0nEZePow9I1j6RKjTk2fNaSeBOuQYAHQ6VSJlYgXPIt3iMOntE4O
	 zeWsB/GdmigubNGUm6i1Mihjw6bOgrBn64myjn6HFPY274kEVBpKygfb7zFdwYnpPz
	 yKqCgZpEsB/UvEu5W7fXsqYeHO1ERLzCtWLtAyn+xVJ2HQxtEO7E8BLNw2QsRhbkpn
	 kr2gHtmWAdSJHncCJ+toaS824vweWnKM8g4P9jGBUjRGxUKxWPqqv8e4u1WpqspM3i
	 Ro4fCXKFkWGpw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F5AEC3ABAA
	for <ddprobe@lists.linux.dev>; Mon,  5 May 2025 17:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174646679357.2217.7806478144163527715.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 728592f7f5bf34766788166f06bb24e3c0da96ded997a41242065d6c422fca20
Date: Mon, 05 May 2025 17:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746466793
