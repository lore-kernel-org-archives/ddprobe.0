Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39FAB19A2A3
	for <ddprobe@lists.linux.dev>; Sat, 18 Apr 2026 08:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776501454; cv=none; b=tPpxZuxYEls8zrptyZzL2wfcvAygYsMb1Eabg8xJkodLDccsrvPWjLby1aIvIhMdDh5QtJgVjJLbo2PMCRC2Yav61YTKcJmCD4zBk/s8f/Yo1XvK8kNkAnMytmwXKxJI0y3QaFnZSR+5frA+rQs6C7D1jKt4qvZv910PP4ZiH5g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776501454; c=relaxed/simple;
	bh=gZLXE/BWu6dt6glB21tSnwRP7IJwMYFI7C+tgkByy0c=;
	h=To:Subject:From:Message-Id:Date; b=G1xEjyIwmcWLJv3VNpcaAQXm8op98kiHSqF/9qTM5b3QuXhMmaj7W70FELC6qnPQGxcvghoK2P2Ztk9eTw1Yn2s5gmRhAnRotLR5ftRRjzkPEvoCJM+l2lGlOB4JEdGdM8s2ehUKWK0irDMeZUUc50U+rlHwqeE+ErPImLKwqiA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bKH1cDbd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bKH1cDbd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C127CC19424
	for <ddprobe@lists.linux.dev>; Sat, 18 Apr 2026 08:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776501453;
	bh=gZLXE/BWu6dt6glB21tSnwRP7IJwMYFI7C+tgkByy0c=;
	h=To:Subject:From:Date:From;
	b=bKH1cDbdcuQLu3psr3ry05m7J4xja643G7DGCp4XQwNS4fgO/bN9nY1hkPYuFeEDg
	 Rb/zm5ELm4f3aGcIQG5U81Lx7Ia0zsNQ3P93Pd1nlf5ys8i5aLJ2aT8Gh6Fc16eWeB
	 Cd6FEzgjo7qM/dmMbJK09ikEKP8grys7H7LK62gCfHhiQy/WdfrsB6kc9/F86pr6n5
	 uwlcgJIjNpfXGTtYxK70b1nvnisYWR4YBcZCVSlIEGcYKupzJOHCF1PdWOJSG3f8p1
	 HIa/Ld2WU4aVPwQGWwVw5Y3mYcXjCdPZ7sbJdvrwFm3WchzOzs8tfi5ITS2FUs8ZrB
	 G6291vt9OMfgQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEEF4F99C73
	for <ddprobe@lists.linux.dev>; Sat, 18 Apr 2026 08:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177650145368.30093.559312678388628732.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 25b70509650abaffe555e1ca91b6ebf223b52d300c30776583771d92132fe8bb
Date: Sat, 18 Apr 2026 08:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776501453
