Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C80C22538F
	for <ddprobe@lists.linux.dev>; Wed,  9 Jul 2025 12:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752064794; cv=none; b=hvEomwF5sVE+SVt7OV+g8EYEr1yrLhpAoY9eAwRZ8TS8i8P5ffjDJJKtJB68e3sucBmt9lZ5v41Bv5tp9UpR06vejjZ/Dnr4nKrv9LoOrhQMzjiZ8GKa1GjH51WH7ajS0nANqYa8UdL4qDkBB6JN18DmCfh0lHZ2dFUO2B9QhYk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752064794; c=relaxed/simple;
	bh=v4mWyVN/g+znXLy+4+d/boehS0lOuOzAsSQLBbhwfmg=;
	h=To:Subject:From:Message-Id:Date; b=H8y/h/SAzGB3oBR+lB9XuTvzo6U0oLfCtZ8iKnb/0YZj3WHIInFWCMp0Nctsg059man7n94/AIow34ZUERdNlr434a42Y/BUBKnCQ09sp1nZb1rl2T7i8KOWBO91eZGvYFl8iwP6KViFZlGQVTmx2G0TFN8DsiENuOIW7tGxNeY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KX5Y2drv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KX5Y2drv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1DE8C4CEEF
	for <ddprobe@lists.linux.dev>; Wed,  9 Jul 2025 12:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752064793;
	bh=v4mWyVN/g+znXLy+4+d/boehS0lOuOzAsSQLBbhwfmg=;
	h=To:Subject:From:Date:From;
	b=KX5Y2drvo0MRkbBII1QUNoIdSYBX3yzNuolEMy+qzx0k9PCDnL3/Rmpo2nHhYvxru
	 pegJIm9kmfuFdZfGaNwaODju3tx+2TqN3YvGhcdN2g87SgVfMADZ3IGYbvOmrIULP/
	 kEGNOx1u94pVZL9xzUhU99kWGTHX3NvoZyJiOTI4rOErbJ/8LTN0c6kp3DuFRv1lCy
	 +WOk2fI7mBIbCN5QLxvz/fG5FedQYRgrLNhORvvvlGkDxBJKs9XHVXXorPTymWWGjv
	 vPskwJU+Cdwslj0otxJj+lEkP9cuX+PLg5PH8cCmha+FEQCOw2z8ZWEuvbfGQw1y1n
	 A350oDtFtkjpQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EC4EC83F09
	for <ddprobe@lists.linux.dev>; Wed,  9 Jul 2025 12:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175206479357.2964.10292709186525004238.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fc8f13ea665499ec22050168eb5b4addd0544ce4ea6d98203e5f8d550c6b73ed
Date: Wed, 09 Jul 2025 12:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752064793
