Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C5AF13D8A4
	for <ddprobe@lists.linux.dev>; Sun, 10 Aug 2025 01:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754789994; cv=none; b=PS/iZ1EFd4I57JK/CLAJbxmXq0o+3xYpGc/5B8tU6IpqbS8E+sDnMaOFMp5g/vEeWRhalWHF29ApN5l0uS1A9e1H2fqU6pv6jgeOi4JDaiPsyt99p8ZCIwaOq3tP7bpifWiNSZ/8esSN8a2up0mhfDspBsy1Vek/RIPzOtLqD+U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754789994; c=relaxed/simple;
	bh=zQMPHsejTaSoKeOm5nOjXqzCs+uHZihu9jrY4mBWtGE=;
	h=To:Subject:From:Message-Id:Date; b=Pn+lfD7HPPpQi/Tv1Z1u+uUzJnGMQ37tAGTjO87gaGb5IBIk+dLNhABauPZEn3ohA0nesOAfJJDgep9T3mU2Q1hCziIdh65BcdyeH5AWep3V8e9iGuJOPaDL0VBZcJoZh15iHucjiocZ0FRr2EfHifATwp98gZLKoUYvl+4KcLs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uvd2Z8mc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uvd2Z8mc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FA66C4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 10 Aug 2025 01:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754789993;
	bh=zQMPHsejTaSoKeOm5nOjXqzCs+uHZihu9jrY4mBWtGE=;
	h=To:Subject:From:Date:From;
	b=uvd2Z8mcyzBoR8ucFauBBeLjuDGA3LaZTeLOQ15L9pXIKg3cGhddSDPL+iTodseY8
	 q6gfBFpyicZThQb1u7Sp7hCP4LbHggcNj6q2F63jHscBIOLfhd7AGrnadX/5fKiUdX
	 pntCilU11B9VzxcS+2CX/KC9gVJ9/2WLw7GfBoBnwS95s8YqyRDUGiqZrMsH0IHVY9
	 yK/bSlIX7bc+eyXXcYsHOGBKqwwSRmuGtGw1uIlbmiLtsRABKFCePxq1nxiL9Gh1ro
	 m2/R7+bPpsNitWVxINgk+48nM3QoOkWnuyjQpC014cFXV7YcM+dzgkHtIEMPEyNdKN
	 87fIVrir/JhrQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E170C87FCB
	for <ddprobe@lists.linux.dev>; Sun, 10 Aug 2025 01:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175478999357.3219.1077776607193628990.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1dbc0afb1b851f717ab0fb5e82e731c7dc9bb75d83edfc953c058cc5d0d7063c
Date: Sun, 10 Aug 2025 01:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754789993
