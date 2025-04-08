Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4759BEEB1
	for <ddprobe@lists.linux.dev>; Tue,  8 Apr 2025 21:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744146594; cv=none; b=VrSBCtbNLCJ38qFBSRSuTBefUhpO3cT5ybyRdJlzzMgVsN3YnrcFiLRt8xJUw4tedTGMbG2o4s12opZUzlxyrQYUH8X3MI4NESASDsErJti6kdfIFiPVbySaq6vfKyFJAY0GiZPLZXICG/9G7Gs1K5b/+iX/1NG7EsLHWFRYR2g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744146594; c=relaxed/simple;
	bh=kgZmN/ARriOIYUgOeqU/KEGnI0RLf1ziQJFTmzrxhd8=;
	h=To:Subject:From:Message-Id:Date; b=X41/ZsUDVrcmS4zQed5I8b1qLL2/872rGDI0sX0ZkAUrWYZUdVrc8tN3NGODiC6ZHNhgE19s4R7DsEzQUFYKb49Lfj98wW+Mccom9ZC0l/1ch8sxDoaibM7Pw9CabkWRFRSmcFtghRQYf53btWhylgPNlhX4o0V71U3Em9rUgW4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YxchoMLB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YxchoMLB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1758C4CEE5
	for <ddprobe@lists.linux.dev>; Tue,  8 Apr 2025 21:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744146593;
	bh=kgZmN/ARriOIYUgOeqU/KEGnI0RLf1ziQJFTmzrxhd8=;
	h=To:Subject:From:Date:From;
	b=YxchoMLBEFtjozJfisHnjfU/L29JCqT4k+I+DT2S6DsJWwFPFiYDyOzB4hvuQddIq
	 IItMZZCGEIAJ3cG9QnLmP8fCdqNWkBRgeVf2Z5iEHLNZ5WIxZ0USplBekAbhdPcWY4
	 XLzulJCGCURBH2T9KMRkMxftRQWJJLWpfffIEh8cTK98t0MyuZLkq+C4YMqG6kLSr3
	 CWlyHIAMaLBxqTvlLaQE9EMJQLlW1ovAYWZUwI7r0ZY7PFfRhnbV0RCvrf1xDcuX+B
	 QTt8fWpcpeQXh309xFUwqFamw8a5QC2R7bdwSRPmtcz9W/OhlLXFJ/5H+0J5qeI8lW
	 vsMIPlPkFRp+w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D639C36010
	for <ddprobe@lists.linux.dev>; Tue,  8 Apr 2025 21:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174414659361.24567.15515422326170577187.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: edee56ca31039af45a3bd909fec67f03c1e655b40b22dfe91712bda4fae30b15
Date: Tue, 08 Apr 2025 21:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744146593
