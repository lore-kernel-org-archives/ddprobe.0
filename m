Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 64B1727A117
	for <ddprobe@lists.linux.dev>; Tue, 15 Apr 2025 07:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744702194; cv=none; b=Yvbztehuuo+K11w43DgG313aGDHkITtMyQC/NrK9AhtLdvP/Ku4na3pOd3hY3NvH7J2O6HkI4zHu0bzKaZE73Zmy4Gv2xePGEh4BDDr1q5CDV31wO5ETIedn8yK8hlKQPNDp8InUaYbAuMsU1JWRY5oYr6GGyeujRsO9YGSpT88=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744702194; c=relaxed/simple;
	bh=TOCOXsOX9A7ZbvqxdJVjZ067iAsvg8bRgGDOEdcLqI0=;
	h=To:Subject:From:Message-Id:Date; b=tUQaMHDd41JdWjvrxqhjuCuW1zSl7zEqfCf4uOusyAw8QPdH+olvEt3W6yrDCdoQGnDb2aPQl5+kLMjwmNjFOKsvyxt3lvSGIbBIyagiVNpoFG0IC7Svn4+IAoXkWzvt+3+bjuDmV/iI+lIqwkxvRercRwDpayJ+Y2NpHJq5hJw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GEaP2vMw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GEaP2vMw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C2241C4CEE9
	for <ddprobe@lists.linux.dev>; Tue, 15 Apr 2025 07:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744702193;
	bh=TOCOXsOX9A7ZbvqxdJVjZ067iAsvg8bRgGDOEdcLqI0=;
	h=To:Subject:From:Date:From;
	b=GEaP2vMww0NgLzU/RGkUSNj5JYozJHuH/3DnLx5M/BgZrN+YGkbczYrSR4bjSgpZJ
	 ssNguOeX02XUkqP0l88Do1vWp2GalVOwuiazpm40Aaa15uCTswOK1D9lryOmZPG3+s
	 j4cUHUXA8FlrOjunL35jisQ1kUJqeI9aGCOsNxppVJuoC0Dp6tltxPaz3G57dq0UC6
	 Vg1u2yOvpOPju85ZYxx6A9q1ouKhuy4hmaKDV1PdX9j6oTFUBeh5dVXTTdfCLyRSeX
	 B4+NbNfanQnOK5gI0/5YugSFYNVulMpfhOg1itIYEtuCuFHFmqLXwhTe6EQjyWYYY/
	 AqlStd6D0Dzaw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF8D0C369B9
	for <ddprobe@lists.linux.dev>; Tue, 15 Apr 2025 07:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174470219370.4400.16985556165639807915.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 67eda8a208e8f6ed33ae29e367869636913e72a5d14893f8f8a65ce2ab31a260
Date: Tue, 15 Apr 2025 07:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744702193
