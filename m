Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B37A47CC97
	for <ddprobe@lists.linux.dev>; Fri, 22 May 2026 17:22:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779470554; cv=none; b=IDH6zfjrreYqOXjtzfDmk7BOxJYn11QItKN1wyy5XDr0lyPICsGH0UScNlIetBE/HFtrWuyhvcHJ7RcoORPrxPJZ4hEiGDsh3Gw6sUUDnmPEKtGbAJpJwhOHNXvoO96tZgeOvrvP2YhJ+UqmBHqgHMIFdF3NXTc6IpOIv0P1vUo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779470554; c=relaxed/simple;
	bh=XeDB6Leodg45lq0BX10sJNvtmnHA7P8o1pggD/ZqADo=;
	h=To:Subject:From:Message-Id:Date; b=Y649E223vwA725B/xAGakoJLf5elE03su1ggT4fZibvU8Fqz0vJ06ntL6iOKQInEIXhVBoxdgSpcoR8oymclnQC7K4AddDnRT7TZmKDY4ATl8l8ilcbO0O2fJA44U7ybSlIxlraoqrd/ld8JtSfQs6g7cWDi7zqqJdzbg3TA9Zc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iKDtpA2e; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iKDtpA2e"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BDB5AC2BCB9
	for <ddprobe@lists.linux.dev>; Fri, 22 May 2026 17:22:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779470553;
	bh=XeDB6Leodg45lq0BX10sJNvtmnHA7P8o1pggD/ZqADo=;
	h=To:Subject:From:Date:From;
	b=iKDtpA2eO+OOlKPkRjiJ9pFmAeLvZxWg4rCHQFRD5U3ikZc4F7HyFD9yHdC6zCgPe
	 OqakLuBxa+tUPORnYyro+oCHy2/YbRjWjeEsbn2z29GqOLbZmRHRgJvlwWua9lcB2/
	 tw7fdVVUBL3AeFHlpQGEKt3i8+OsbqCJPN1YEXpbF0BzamfCUYlGgkpTAhVRrRvoxH
	 4/HCUQwb/8sYOcvKdCsnBgRqCUIXLfSvdAGZ5KibN90/M+K0UePt5cbkVtM8Zximqt
	 4IO6VdEswBwRaRfbBmEPJ8fJELUlgNfD0DVJSrDXeZWhUqmd3fFLj7oVBvioUMZzfr
	 i+H7VQ8WDzakw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9826CD5BB4
	for <ddprobe@lists.linux.dev>; Fri, 22 May 2026 17:22:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177947055368.29169.3197074962623775701.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0a8fc815c3bd9c83323590301f432704ff97375bbaadb70f1bfcee4819407d9a
Date: Fri, 22 May 2026 17:22:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779470553
