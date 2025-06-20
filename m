Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C043238C16
	for <ddprobe@lists.linux.dev>; Fri, 20 Jun 2025 21:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750456794; cv=none; b=ZxGZO58gS5kbNC2x7RwZmy72NcjJRMbtkRD8twbzbi+qbympd52RAOO8jSMnCziCcobqh6wmEVNjSBRVxvGUZs3uNrnO5W7baeejRYk3eHc94wjxD1wR907vyDe1E1930KoYnRiTHWg6nAaURFAWuwrHOonPYo6HJ5bQBn/8NMc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750456794; c=relaxed/simple;
	bh=wgwM4z2NUF8jQA2xHWKR2XZTSiCw4ET+FIVHBjxaaR0=;
	h=To:Subject:From:Message-Id:Date; b=OfNzhtbl8jrqSzvbiXPUf6dbmq/4UZ2M30Pkkgtonle89eNXv37F0mIdYqy0DmmG8jKKnqlncbOXBFpBuNbrqki500puhSi4I5YRE0EO75IolAm2DRDkczqWjHMbYpbakRJzE3CsiTftYLv61AjQctcdAU7VzmfzMEN1w2rnGE0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=R/8P4x/e; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="R/8P4x/e"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EED1C4CEE3
	for <ddprobe@lists.linux.dev>; Fri, 20 Jun 2025 21:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750456793;
	bh=wgwM4z2NUF8jQA2xHWKR2XZTSiCw4ET+FIVHBjxaaR0=;
	h=To:Subject:From:Date:From;
	b=R/8P4x/e/53pMKdRs1Oj9ruvON9SOsdTj7BNj6r8buD59BP77DaqGTRJ51Z0z/D+H
	 EY/BeilDrjZTeks18t1N8M3FwWSFVn0NfLpBmFrcQC5ypEHNO0Al7QPY1YdFhdzJOZ
	 7jxGQsJn4lf52GkkJhktJlB/76S9GymgwY+9hyUK3L7GQfZwtjFEeBGeDsbTiSzsEw
	 K9vkmiq7Nmq60w8zqh+6BmEQT/fm0SFx7iC/S+FbNT5LY9/XbztbK6evS1cWSskFXy
	 CFWFUBodCm4zgOwopkRaDgQNSpjjMqsTQzG1pm70wuyPiNZcg1lUdT8rjc6YIHOx3R
	 uP67tFig2jyWg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EF79C7115B
	for <ddprobe@lists.linux.dev>; Fri, 20 Jun 2025 21:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175045679357.13005.15386988179038940669.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bae82f1bc0397bdf04135418ebbde275e11bddf5243b1cd7cc5b20bfa6faf12f
Date: Fri, 20 Jun 2025 21:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750456793
