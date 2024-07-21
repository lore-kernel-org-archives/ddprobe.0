Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A7093D66
	for <ddprobe@lists.linux.dev>; Sun, 21 Jul 2024 06:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721544354; cv=none; b=TkKotHAGBui4+kJMFxaR+nRnYXjJ/BRijjD3Gr/mRAiJEG013iDY1F8ttwYr4sUMODc4XRilUvwYsFkySnjrblJ8xUvbMf73jVIj7tjOcMMPQRJudfmK4UCb6zS31jy9yKTM0sq+1FCNN0ugste4u/leMARaOKNyjNwhgiBcYu4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721544354; c=relaxed/simple;
	bh=oLJi1MqQitHkLZhZWNzRWwVdnzKqVzxX7khacIkrHn8=;
	h=To:Subject:From:Message-Id:Date; b=klg/QpJwZM3+YEIYuQ2RGcagY87XQGbjAanbQ3WM5lGQBTVuXr3Y26FIW4saP2mDGzm74dP2U9/9hgTBNx2xo+CEONLQvjbiqVWHHXe8303ZLm8059c3k4lYdSnbwz6pqHiVLxG7KtZxlijByvth2NPEvooGqhFa05drfVIWkK4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mWH+9TVl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mWH+9TVl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C8C32C116B1
	for <ddprobe@lists.linux.dev>; Sun, 21 Jul 2024 06:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721544353;
	bh=oLJi1MqQitHkLZhZWNzRWwVdnzKqVzxX7khacIkrHn8=;
	h=To:Subject:From:Date:From;
	b=mWH+9TVl4ta4IVMPFjDEn7jt3hPqt+QWu+I+XLE1iG1Ypg7kDpMyzJPY8ZaHA/6SB
	 wMEh4k98JHdXxyuerMl9ApuQyzRhroDJGRvIc0Cn3XpxyVNTaBVw30LCOOuGvfa4x3
	 u+Cr5hoorXLTpQPClaFrEqQjoXHrO+updhvmxAMMP1jSDUJlVLUyZ5sImWtrSd5QlS
	 zrVrezUOIOOsVjMSDOxL1LnZUGgpNaY9ivm9NUZLgIus6bLGWt6NuAF+tiClrGJVC3
	 psUCrhfPGrs8s4F+//w94mKu2pToHUnhFD8JDESrz10KsL2Y3KiVqyLwq0qUfBKoZq
	 gGJO5dkM3BllA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADFC5C3DA5D
	for <ddprobe@lists.linux.dev>; Sun, 21 Jul 2024 06:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172154435367.28215.16906389461058397035.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4b22299a55fb8589fba5e991156a179047ea601a742dd6d02e726a73b412ac89
Date: Sun, 21 Jul 2024 06:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721544353
