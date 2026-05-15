Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5AF503A0B3F
	for <ddprobe@lists.linux.dev>; Fri, 15 May 2026 13:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778851834; cv=none; b=QaiGMEv4di1sbd2zHEjo5gfQuZ6I1fojhkxP82Fi+8Q7p+b2Ct34rF9VdMbZl+pfj1IEZ/oPWSeZOX79jkY7Aidz+cNTKaThJKCP5o9xPYl/HKx48dSC6p7mkQCJ2h88pD0vqyMeSDeBrvSEU9jy9PXPvxoGuY/2YKG+Twsv+/Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778851834; c=relaxed/simple;
	bh=SDWL8deV9WG2AwAaIOjJKpKFVBTm2YxfDSlsnii8tW8=;
	h=To:Subject:From:Message-Id:Date; b=eh9PQA0fw867MRhkoOrRnbm2qPJ8EUhXZQrzH+fsUDJ5JEK+WVrg+BcvA/Ub4u9iiHfy/Fu/dGhp0VUm23UgsatzpWAq8ff6pBQGq796fLFQ8+em0ub3NwKf9I0ODOy0ZJ4utPxUmLqRLBfHwukvJwYr8bHfevMk6Z0v7o8GJBs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ewo6Mez2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ewo6Mez2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BCB67C2BD04
	for <ddprobe@lists.linux.dev>; Fri, 15 May 2026 13:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778851833;
	bh=SDWL8deV9WG2AwAaIOjJKpKFVBTm2YxfDSlsnii8tW8=;
	h=To:Subject:From:Date:From;
	b=ewo6Mez22TtKLGvSPhwTwdHd+Kak82nTyYMHM5z19df8ZEvyzgmxq97mTPJ/mh5B7
	 arbseRME8L+ygrm6sk1xQQvt3lFPpO82DDuZ0aMC56beR/d1+ThBr+4vNphwTJev/7
	 +SQkfY7KE7ZjHLaTcikTlE5RwVcEI/Q6oEQtDlEfBE8NCY7A4yF2UliONONclWN1RL
	 b3xJTbC/6AhY5wA2nCTW5YAufoeizKmL9OGOYFszfP4gqwd3e7ghCasA/5iehjxa7c
	 NE+4YOR6OQCIgGIE4jMKUX8knVwCcYoPrTb5Xs/TdqRxqwZlsfkRlC9A6FvvbccOng
	 seawWDDOfvFug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACAE2CD343F
	for <ddprobe@lists.linux.dev>; Fri, 15 May 2026 13:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177885183369.3851.14282886943063821823.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 36e33be86021fdf74d51ead2cfc9b81c5300d415c9157fc79f2af453880fcb95
Date: Fri, 15 May 2026 13:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778851833
