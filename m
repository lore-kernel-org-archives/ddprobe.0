Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3016E524F
	for <ddprobe@lists.linux.dev>; Sat, 17 May 2025 01:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747445994; cv=none; b=lDxKemOZTBNC+oHh9snsV+2+rx4t6m6+6VrK/ZTMxzHxl1DmyPBoKlr9ADFUp2QMOaIY8M0YXGlX9eUWnXrui8NktYvvitzhxP6BdlKn1JhPiaY5Xrjy86iQBRSfF5MJ/HNLDdt58Cmp+9Yrr4RfKhJHhVO188wquz7oH7GseCQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747445994; c=relaxed/simple;
	bh=8bgV1WwcgS8Z+dAU1riVRyjnTb2asLKx+cDAeoswPe0=;
	h=To:Subject:From:Message-Id:Date; b=ESfl4ZNgF6qa1NRbzc9b7wv1BZCtxfYmLgmuB4h4OPmCMOJZc00AJA/q7EM+ZEID9Wp17vCrFuPHko6Mqh8qIsnpiPWFIlirKm2YqC6D0TPYFrC4H4eFUT325oFq444+Y8hypSSi5FTap0LsKHexPr2P74spjUUUMFudn+4P/5E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cIX0b/gb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cIX0b/gb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3C4EC4CEE4
	for <ddprobe@lists.linux.dev>; Sat, 17 May 2025 01:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747445993;
	bh=8bgV1WwcgS8Z+dAU1riVRyjnTb2asLKx+cDAeoswPe0=;
	h=To:Subject:From:Date:From;
	b=cIX0b/gbLgYxGvZtuHXqweebAo/O3glnPCtUtfS2NbdjIhX3z9Xts6w/kjjdHAQYf
	 xasYx2yuFDHUvmSGmh5HPvpWYbor7diGyzvcjk4PedTlL/0cBntBEywMXvfX9rIR0i
	 TaBnnWE1vBiBV8yHhO6P9b6qTmbyWvbxfmzmEI7Upk4EugpVv4u3MyRJrf8ydiyZG+
	 53WAyInIP9+hLlyfBgOPaYjJXDjB+C5aJqAI3qlrkJ1mzxRCdAwv55XXMRSaF9mfdh
	 sF/3SM5el5mk5oHx4yiEW/kz8s3whrzAer+qEJW9Khb+pAZvhV2CLm5tBf1v15FZaF
	 vF15DHuzIcpKw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EB2EC3ABD8
	for <ddprobe@lists.linux.dev>; Sat, 17 May 2025 01:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174744599357.2016.2125908030363425996.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1e7c89977bbc209e73378656604fb673643edbb2eb41d396e96cdf9b81075d70
Date: Sat, 17 May 2025 01:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747445993
