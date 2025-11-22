Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 339493BB5A
	for <ddprobe@lists.linux.dev>; Sat, 22 Nov 2025 08:01:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763798514; cv=none; b=Z7dsQKonte39NXzx0nGbUG3WljzVDAU1SqpRLjcUWAqFZfSVZ9cbBfvzEUEAskrthjptl0fV/dvO7mQVvTd2OUZvdVP1O7knW0xaHDGUXHNZs6ZUHoPNNvQPM1J8PXHx4ZSwGC7ii661Lp67wukMWBbAujycvDwsXRMcJAKjMmg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763798514; c=relaxed/simple;
	bh=R1PswZRyPLN9PMoleVyBvbFnX8C6QdIT5p/8lIhaP6A=;
	h=To:Subject:From:Message-Id:Date; b=M7P6YKWENevBgsHqMXyvS0a1fzOSLcETt+iIhcl98JZfHkeRo2QUHH2jTgUKDC+HncrDHR1ch8A0AFVhXsm/+NLTaDWUvTBqnybWY4TND2T/SpzdDEhppXe+hcUJIKIqOyCib5odY2g8N0jWKqNirXOVsA2aUCgLVwYzsWD5q4c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Q9RNN4Lm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Q9RNN4Lm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABA09C4CEF5
	for <ddprobe@lists.linux.dev>; Sat, 22 Nov 2025 08:01:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763798513;
	bh=R1PswZRyPLN9PMoleVyBvbFnX8C6QdIT5p/8lIhaP6A=;
	h=To:Subject:From:Date:From;
	b=Q9RNN4LmYLn61P8A4xu2W8UkKrJjFi2SCKYwIcuahuGtJhhTSVL/Bm4wcPf9agpuZ
	 0njALTF4KzeU3E38JoK2QURXkCSd0AhCmzh3ozZ9CcLZVg7J3Q+1B4xgubO8VBkQgk
	 qTnntwKrEhdHPyLDDiBY61wTIqTVsWJ5ZC0Ikn5p5Cbr3RMWdCEqO5yIGCII3ZrCJP
	 mJY+vprg8T9EQIJnShkWdrYZ8UnUsiaJ1SvXqCmLzF+vl+kaUY9Ni1LGKlWC0LPpKq
	 r841U8W/qcCbpo685POWil6DaF2BI+OnVRpiZfwihHCa+zmX9oDChTm0l6AnyeuD9O
	 AZNk15nnspOJQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 995C2CF64B1
	for <ddprobe@lists.linux.dev>; Sat, 22 Nov 2025 08:01:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176379851359.25266.11059243522834553863.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 87e9b7613e2bd4c1b017edf3f87a7b73955f5822605b6da93d15694f727f025d
Date: Sat, 22 Nov 2025 08:01:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763798513
