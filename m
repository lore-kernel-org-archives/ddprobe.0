Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7521628640B
	for <ddprobe@lists.linux.dev>; Sat,  8 Aug 2026 16:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786207834; cv=none; b=TDi10RYDNvuOojCwZ6uly7DbcCfxWpkjlWf7pKthxpjKEGYf4TkPcdQDs7IIRZhlFxuEv0q8OkQ9z7FD5QFlp7KlM73+FOA24vJL0tOo4f4f25bI8HpSnDiB2NppEeZDqk47mryVVgbZSLnHdfh5LGOJntMULfkjld8eMERyglI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786207834; c=relaxed/simple;
	bh=B4HN/s0KBc8jd2M4g7a3HQxN/wHoLSdK1x5i+vqYBDM=;
	h=To:Subject:From:Message-Id:Date; b=gk0IBBPyUVzKO7HZ9m0xZ1XeAQjj38FSLdNcPLkNM2boPcMiMmLQvZR8GGgquf1FLcTgMSE1i6fY8UP/DvT14VhRvkk6S9kRc+R0lbgS5BXUVISUhQ/yvyDjixynLdSDP8kuKjqBZQsnt9XzLJqMVBldcj3ebI6CQMRZ4NfP+98=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hTxR6oIc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hTxR6oIc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8162C2BCB8
	for <ddprobe@lists.linux.dev>; Sat,  8 Aug 2026 16:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786207833;
	bh=B4HN/s0KBc8jd2M4g7a3HQxN/wHoLSdK1x5i+vqYBDM=;
	h=To:Subject:From:Date:From;
	b=hTxR6oIcGXDJGibXVStePefLUAdkphOaKGokIHt8OaOblq2rFxheuySPFqLM5iWcN
	 9IFsanc9+cdN0jpENooYr1X5Rtp5V5mpywMmeWptywL5FvJJhMR+HKSXLCBFeGEgcP
	 gVBAIq+B7djFx7/K2CtLQoK1eNnrHhMHmukn/rfDo2roZkkBsscfmU/bCQ9PovAKL1
	 /aMeh2igoIW2lG5n+biOVn9Tph9ieh7VufFRhtqe9lcY9wrhjI/ccvL+NdULgD7/5y
	 4cEy5Y+hAMP+ZJNfmPojRSAEQbqD0xVK/9R5aBDIRlCQP7/61RWzdpigvumBVBxlar
	 /OTXzks3VmUgw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFBD4C55174
	for <ddprobe@lists.linux.dev>; Sat,  8 Aug 2026 16:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178620783369.10307.10846855720722190764.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0c5b1ece7542ec329e582f1854a73347172f52a8d4afa046af209a50ee384aa2
Date: Sat, 08 Aug 2026 16:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786207833
