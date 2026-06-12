Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22DDF1F91D6
	for <ddprobe@lists.linux.dev>; Fri, 12 Jun 2026 08:46:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781253994; cv=none; b=uRGVVDNB5hL/gHaEj4nPC5H5GloWR9NFh0HyhYT17W6t8YrK8ZkNJfGDLbgshBAjHPVOZ14wMSUA9/QZ2k2qhhsSCcmLIdK3K+AoO6xz8aMjC0Nb9PnngygMSgt1S92qmdcHnNyMU0S0t7jryYeK6w5zeoNYR/bntV1HmrxaicE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781253994; c=relaxed/simple;
	bh=P9W8/tmeiiPTH05KgowUYkEk4BF/eH+69qxwbCLZa6w=;
	h=To:Subject:From:Message-Id:Date; b=UNI62UgHLEp/N6midGCE2ZludhQJQbEyrFR6dUX2Cku9hFVLGOlW2Ge7FcbO3hQJ2TN0Hh/PyhuHFFMnRnDWv6aKSPcb6iLH9Se0RlX9/KvcsVWz5mS3M9B0/l7qr0KyBs2MwHzvwUhabopKzwHRWze5zovneSoEJ78u2tJMVWk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Gr63ItZn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Gr63ItZn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2236C2BCB8
	for <ddprobe@lists.linux.dev>; Fri, 12 Jun 2026 08:46:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781253993;
	bh=P9W8/tmeiiPTH05KgowUYkEk4BF/eH+69qxwbCLZa6w=;
	h=To:Subject:From:Date:From;
	b=Gr63ItZnjdM8kJMF/JT5otzth1/fJ3E8RBA6KFTaKWnWSNWpTl4vp6YsgvcNCQdzM
	 wRUtF0r4Eyrrl6XaIyHC0W6V+385+TTQ8tLjwxzg0TAnBbXHvLslPzGGULPnt9pIns
	 js6fT8SannrszMFwRkDeyezl4seqPwCTLil2lvpjThaq9acRxJ3moRs6A7BQs2qhTf
	 zUbFUN8z4Ne3Ijo//xwxEobX9znNeqSBf7rY3qLROEFRd8tib9p2XyivFTfEPgNHc1
	 c/6AkfanaFtcjRUVKA4XhPhWa5KH36mBqsx7/sIYh3zrIXZ2r37XnxQqHHyfFlq1BV
	 eUQtNV7vDk/hw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B23B6CD8CA8
	for <ddprobe@lists.linux.dev>; Fri, 12 Jun 2026 08:46:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178125399371.7663.13140993551236598074.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 33da5a9a2830dcf4c47cd0d5330c9a44d49f9a73087bde4a70f236f5171bed6a
Date: Fri, 12 Jun 2026 08:46:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781253993
