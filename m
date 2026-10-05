Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5020C1E2834
	for <ddprobe@lists.linux.dev>; Mon,  5 Oct 2026 05:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791176434; cv=none; b=eN1yUQbt5Ohxajb34XgszFoVs2avB5LEAOXWNYl5XRKjm385J2+lTs4yDN/5+S2ZTHKLOvSA2VgW2uH+1rytR1RYCci7IxgJ/YCjgxR7pKqNyK35YrP7/KgH3b1kofRbC9G7CHJZmy/8JQTPK/uauTJzviOvVohdIT8aIMYnBLA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791176434; c=relaxed/simple;
	bh=vS+sax8PzwXiLvMIEC6yqEFGlc45s+G9i60msklVlHE=;
	h=To:Subject:From:Message-Id:Date; b=apBGtW2/mMOnZG07cI1dXQZuu1kzb6a6utUQsHdFFFaWm22dx8pQmppHrIRVOeDHlBAuyUi5G1wPnEEpqt+QDs5SvIyb1ATMkpSy18/D0YZ8/fhaGQkHcYsBYp9j7H+Cj1c8uMC3bmkrZE41Gh7RSFmWUfqUVy46wBKCIg3H/2c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QSk4k4QM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QSk4k4QM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D44D3C4AF0B
	for <ddprobe@lists.linux.dev>; Mon,  5 Oct 2026 05:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791176433;
	bh=vS+sax8PzwXiLvMIEC6yqEFGlc45s+G9i60msklVlHE=;
	h=To:Subject:From:Date:From;
	b=QSk4k4QMx9rSz6A/K/yNsJ7Tib7kURtsO+4v0jXOsw3WTbsylAYrS94Z9ZRMN1BTG
	 4VrWa8khq37AdWkfOm1jotV1R+Xtx23P4Nr8vdhwFq1aAoFGkCLxhEwnbnvimJDWqf
	 NVCHZZ2oNSSWBuU8L0wlGaBTx/8M2ELiKsUgcJQY76vPTdSynCWgB9tlGZE2dhzAFy
	 LU8PlRVTmBHeBcG3O/DuQ4vyKmwbWcpGssI3vOJXxbLAAUit2mph+3DpWLF7CzI2Eh
	 r5OTS8rQ15kCYaWc5yzIxtBcy9fEiwo+KiZg3nG9wNJdq+9Fb10rbpc8qGLegruuP5
	 sKaTF/OVrHjAQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF99DCA5FCE
	for <ddprobe@lists.linux.dev>; Mon,  5 Oct 2026 05:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179117643370.6165.13338133541865540729.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4b5da8ff226913865b372a822f8b2d4cb08826d05e0a3f93254f24e58cd5dd42
Date: Mon, 05 Oct 2026 05:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791176433
