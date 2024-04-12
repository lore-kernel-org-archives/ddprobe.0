Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5547E38DC8
	for <ddprobe@lists.linux.dev>; Fri, 12 Apr 2024 17:29:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712942963; cv=none; b=OGyLoOaCS2kRLjv6Tk8nMnVP8xp1c35drDRHbIGutIm7cy8vHg8HXvWWTP19Kfa7qVXK84C6AFCQDKAQJgMGgRt1eaLDcCgJRjwuB5lJIGSyJIqhzkM0ENYfqbFpokm0iEceRu1VkcnbwG6eWsVRHTHNq9epOvlJLygzZYuZPaY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712942963; c=relaxed/simple;
	bh=anqlvssJD0ilIdWtu14Ccf7M/Letik1ldz0ZCuPtYuI=;
	h=To:Subject:From:Message-Id:Date; b=SCBNdtQEv/BAJr/lixDL+GPxLAXQh7wfxRN70wQgl+OhHTKcS1nXLCALz8Ilz0kFu1aMVOQ0mBEYMD41ch4O5I4oulGueLqQx+cRTcdb3UEX3cF+xY8yUWfXr4bUEXDrdrdjoejC/h/TuGLmOwGDzfC4b6aBCrVbEoNRRKuiaes=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ibwEGCaP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ibwEGCaP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D966CC113CC
	for <ddprobe@lists.linux.dev>; Fri, 12 Apr 2024 17:29:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712942962;
	bh=anqlvssJD0ilIdWtu14Ccf7M/Letik1ldz0ZCuPtYuI=;
	h=To:Subject:From:Date:From;
	b=ibwEGCaPtPt0ZU5e1NU/jKCJggMdeMFxca5Vu+yBTirpx8lrKjshPNLN6MFpyAFQb
	 9xIHn85yEO4xbUAOS7jjc8IKeypi15iBG3CVJVqPf8A1pbKlH/mkc4AH+dAyx9bTzf
	 l5WTTO4RNY5LXcho67UA1YM3zR7cgQ7pyRgapKFSW1KloD2kaSv8kMdJxLwxliSew0
	 nFjjnr4YHDYZejhQgJetPlmCeEOuCeMneTsVPxnIGXqKUAHDLRtjt7Q7KX5nvj/wx0
	 kdEJY1tGd0wL8H5X/6q3TW4+/EeUTvEFxx2glOkIfXYDb3sa9sG2lxNYvxBMsPdAUy
	 k+LuKKXYTADjw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C0847C4345F
	for <ddprobe@lists.linux.dev>; Fri, 12 Apr 2024 17:29:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171294296277.2504.15223403777477859874.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cca7d0f4259a02f217cd7387df80a8d65a81f5eb7522a224ce13dcf8485ad65f
Date: Fri, 12 Apr 2024 17:29:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712942962
