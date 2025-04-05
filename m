Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F9BF8F64
	for <ddprobe@lists.linux.dev>; Sat,  5 Apr 2025 15:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743868794; cv=none; b=tHt4es5SHDbExy69pGmf3nYE0faqMoA7mWbPYylEgWpUI5J/UZYk4gS15MRFwoagQ6cbvTxGHk6MZNnvjBMLwMKNcP+DWmCZ9n9pQAY3+oNjGF/r5Hv2X2FvSj/R0WHN+FFttesfRBaYLMLS0yuD4TjrTz+dmKZrOfebUrqHgz8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743868794; c=relaxed/simple;
	bh=l3G3CddaLGchrIyuBQhWKN7g9JjF7xbLkbXrYohceKg=;
	h=To:Subject:From:Message-Id:Date; b=hHiyix7rnokC24b3r+IpZVEVtFq79i8fAnhMTDMK//k0dkRhjeHIcx1ltICxJLNVodQiKdjrMcziT7J+Vauez0mXfTd0+lC+HWsFHzmjz9k1WeQOCxQAEuHLrsF4XmwCrTBOPUZZxcJvKyoZgC98SZBZtPyU9IFUO/yHXTABobo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Uzoni6UV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Uzoni6UV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B402CC4CEE7
	for <ddprobe@lists.linux.dev>; Sat,  5 Apr 2025 15:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743868793;
	bh=l3G3CddaLGchrIyuBQhWKN7g9JjF7xbLkbXrYohceKg=;
	h=To:Subject:From:Date:From;
	b=Uzoni6UVPsiBnDzE0eNYb+Q2OHPV7U8P6gpkQ8lUfJIoVV3oNHAQvIORxuPVGvVzT
	 XMN0B5P17RuhwCE0X71KodV/+NdrIdbyu49HfnkPg8FH6M1shFoKOR7EYhb85aTN8k
	 P1wdoxlcxiMFk0a4W1Dl6sqCdmks42srZ1iv1tVx0Elq2l8poEXALLsJcppcQxXZA2
	 Fikx7X/3kR93xdygA2LGwm+Xks+UIfEy1TkgGe+1QwQEbJhA5Q8BcfBFHFwb4yi6UK
	 BoOcd9HHpn4bNbEJ+7c13aUOTC9pFuZPWhD1TUu0E/DJBHwCo4M5XfFRUS3pgfT5ql
	 FMlVsZiUiDDCA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9EDE6C36010
	for <ddprobe@lists.linux.dev>; Sat,  5 Apr 2025 15:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174386879361.18741.2108667654357675867.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3f986c1312c5d5b2124aee51a750e877262dbedd80780a2db7d0009cc311e715
Date: Sat, 05 Apr 2025 15:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743868793
