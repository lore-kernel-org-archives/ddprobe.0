Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4608A337B97
	for <ddprobe@lists.linux.dev>; Thu, 28 May 2026 19:32:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779996754; cv=none; b=XASOsOxgsiLKScZB13YbgQnztnEoU3JnmqIxBI5VTwoAjmmLjuN7Ngl/NAsLNKb7f72YmTQurNMu+gF43fjpQiam5KGFFsC6bGIJ+L3mm1R1F1HXx0RlpHsfDln7mb2iK1LgNgue3OpW7+Bw/4VlyHuM9TWNd2qaXjxCM8JBk9Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779996754; c=relaxed/simple;
	bh=mSvHeT73IAhSqHUXneQIAeLiUERo6huEIpObGCg4WvQ=;
	h=To:Subject:From:Message-Id:Date; b=JwWnpHAnbTH2aO3pmuToJKgTa6Y7ioWgHUTnfUdhZjs6LX50xd3MZUkrN3ebVo33JcIkjRi+a0/OJX7WTdgI2yFce1htP2dm3b0/W0dwsM2DnmLIOjGPBWW5c167QnDyat6quuuDAmL83KHI+B3KVjdwh3yXqYB/xjhSYK+D+vM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ftw5bOrW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ftw5bOrW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C3C48C2BCB8
	for <ddprobe@lists.linux.dev>; Thu, 28 May 2026 19:32:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779996753;
	bh=mSvHeT73IAhSqHUXneQIAeLiUERo6huEIpObGCg4WvQ=;
	h=To:Subject:From:Date:From;
	b=Ftw5bOrW1Xv/xY5oagAMYpLoNMrZWqYd9rB6KYQ5+wf760TuzCOhDNdLC+hb6RJSX
	 o7QM3yVXvXXTmwH0dugqcE/yNwpL9antQUYgLxVpt53IwJ5Y/Y5zU7d+XGln2MVRZI
	 /yqFeMxjna7JRpihvT3zFVmb4aRrBDMwB13zNPFToJlJPSyN84/E8JX1PMsfAbzUbm
	 VG5U67I/tVOW2oI9q0Bap2iwHQib7qZpY0Bvawhh37ESwWck0L35UFAcPDpN+7jaYR
	 fjBwAUbHJ9mwwozfDp7xpSP5U1mLdnh/82z+ocxRjFLgJFrKX5F/ukK1422hD2709t
	 ZUGxWeVECSv9g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC82BCD5BD5
	for <ddprobe@lists.linux.dev>; Thu, 28 May 2026 19:32:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177999675369.6838.15744598631247557723.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 40f7dc85d4c03dbbf48e2ae05201131be71de73e2308c67f7f7c94456f5bb2a1
Date: Thu, 28 May 2026 19:32:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779996753
