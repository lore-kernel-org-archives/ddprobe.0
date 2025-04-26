Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E6CC18C91F
	for <ddprobe@lists.linux.dev>; Sat, 26 Apr 2025 09:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745660394; cv=none; b=ddJEItSF0j6KaxgnqVQqgWeQhB9f8aml+mIr/VjnF8V3YdKWSfeA2hRYlpnaNClGbcmmQpngUED0FuZ6CMODdXBb9mIXJHwvsdLl0Bp8Ttrk3PNW7Hxglr+uudNgWVDwqSQHc8kRvLkUyJ9imws6PEYC5mevp63v54Y5+5pvBL0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745660394; c=relaxed/simple;
	bh=Pg5MrMv8BppjaxTPCftfS8qaYi0N7zSwFKDg5n9aXO4=;
	h=To:Subject:From:Message-Id:Date; b=G+E0Bgitr9EYnf75qdKB2V0KPljHPI8up8W0f5bYjiwa4aTGFpC9WRP7VUKJp4ZSzciA03Bzp4vAjikpgtz4+KbNe0Ao2O4fVwajA4nO8Ds1h0vUXHYEunIwuG5h8ECc/mQUyX8Zs83tNDhcsSx9K022fPZjKC6X6KeEiVlvxn8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nJD6IXDw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nJD6IXDw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4CC0C4CEE2
	for <ddprobe@lists.linux.dev>; Sat, 26 Apr 2025 09:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745660393;
	bh=Pg5MrMv8BppjaxTPCftfS8qaYi0N7zSwFKDg5n9aXO4=;
	h=To:Subject:From:Date:From;
	b=nJD6IXDw82H75v6YnqKhuqQeWz5jEyymmjIYv/xxkUVP2IRIbb3zqIKzHl4dvbW8i
	 pS348Yp98CGbtLvSNE7nEgp42GG95pGiwNQuD65krzpaW/iAz60eUWLMh62YWtpWf5
	 WzKT4SY73CZaTj7xijjVt771hBsy958ZX7ocDvoscMVfbLT0L7Z6unzLaGbEp0zg5K
	 21lntkwYPEjOGRmwG/PhEtRgL3vIDV5YpjXStG62pS7krd6McYcS0cRzkUQSwfDpLT
	 V5AHl5Jnco/9PnyuVySLcOVk+5wNeSpS6AWUiWRGgm4bmnoypkvHk9GvTEURomS0SX
	 NC6VsPqRUUPZg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9094DC369CB
	for <ddprobe@lists.linux.dev>; Sat, 26 Apr 2025 09:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174566039357.25491.7982511511310178900.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a36ed819265915fe3b2891d394ce2f894b1992084d66b6d5937c3725524a8c3a
Date: Sat, 26 Apr 2025 09:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745660393
