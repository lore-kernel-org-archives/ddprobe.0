Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 154FE2D249E
	for <ddprobe@lists.linux.dev>; Tue, 11 Nov 2025 07:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762847994; cv=none; b=dbUwPIQ2hCI3wUQcAFpSc6+OBPSxXODhBdBY9ujepoyiZZLtOzTR1qvRqPEaOku60Y0i+JNnZAQQlRmfn9Xl0xpeyyicxnVq4MM4bt1AEQIwDRE6BDe8X8aALkopK3rbEsgfYtv/Cng1xkdzcKX+YDf6A4E7v+KxRuDpwmb28uQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762847994; c=relaxed/simple;
	bh=D/D05widLJeqEi0zCbpEF0jy3aASXJzI0ho7+46fmW4=;
	h=To:Subject:From:Message-Id:Date; b=l1IbUi7kUVx+eV2j0Y71nYqkMqPlppGAOxI4qlTKiLwM68zAS22NHegqWUDncqBiov79sCqxS3M9Hy0VbWWtiIEc9fdj3RMCazhifJldZN3j0bDYZGTCrH3ha+QspgeBXxdHmj+QCQK4l6Q4TkE66yOOZ3pbkj7nA/6w43PdLw4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=B8PeXqEI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="B8PeXqEI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AEEF8C19421
	for <ddprobe@lists.linux.dev>; Tue, 11 Nov 2025 07:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762847993;
	bh=D/D05widLJeqEi0zCbpEF0jy3aASXJzI0ho7+46fmW4=;
	h=To:Subject:From:Date:From;
	b=B8PeXqEIFC4s5Xdr4Q/VjpEqr3edB4V98virycqLomwgaLKizheXdAFPsW6eIFC4R
	 yunwEJ1G/HSKFpy2eBwvFg83nQcvScSVGOPMdNGwlU860xF6UgzlgdwmO39K74J5M7
	 GV3UV6TrsRcDyEv71vvHfSTXqab8KWLTpKLvHASeci2Yj4IcX93mlxvkZ6cmZlLgNe
	 M2tdN4tyaC9BjjcQWS6/3qLuTYI4cjBCCIM8kJP41OAWABDSzwAQ+eZpV6v0HHpjgy
	 Yt27st1gMxPGWCb8+lyZ8ufFF/tSD5l6tLt8nmLU4y0DYm18ojKlq/NSqvsgUXnJ6R
	 yIQnCA7VYtL4g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9708ECCF9E3
	for <ddprobe@lists.linux.dev>; Tue, 11 Nov 2025 07:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176284799361.25766.17716387828606858498.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 37f404e26167ce891decba50b7733d45b2f0929ef6359ec13a3cdc7d9d79a0b0
Date: Tue, 11 Nov 2025 07:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762847993
