Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 189DC1AF0D6
	for <ddprobe@lists.linux.dev>; Thu,  2 Jan 2025 11:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735816554; cv=none; b=PukjotADnXT2uGWT/QdvlxNDhIqdBb2W3UxYfhsr/nwI54DzyD9RNWnLt23oAoc8v1+wrk3e3ZAJbcAG8BI7/cYpPPacTMjk0wcb4zpY3pOiZkRiMrKOjnhT0E+CWTqFneGiFmIsFCCKZl7WDj5LO4wNU3XcnEmZXzxhXa593aI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735816554; c=relaxed/simple;
	bh=SeMoQN9qTVXiCGYiByevYIluPrcfUTF8mHEQqAVGQug=;
	h=To:Subject:From:Message-Id:Date; b=ABD3BerdKSmvbam0kS2xg02eazx5qsiJO+QrhHhfAAF6PwTVo0rynIeevZ+eUMtTZg1LyrfJoms5JLiG9XyNIbm0hbS8jyzyEXcoKKU+lzxfrV9OJtv3EDnhrKNDz7SXCMQjjnE0l/ujVZqybTRkFg3OtRkkH6pM/7unwCjm16s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=t8YFFYeO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="t8YFFYeO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8E91C4CED0
	for <ddprobe@lists.linux.dev>; Thu,  2 Jan 2025 11:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735816553;
	bh=SeMoQN9qTVXiCGYiByevYIluPrcfUTF8mHEQqAVGQug=;
	h=To:Subject:From:Date:From;
	b=t8YFFYeOxn3bmqKR0Qpp7HmP7OxOutowQCDT9Q8G+W0U3twRw9QXr7iinDgqZr63/
	 ywqyMc/WBxcTq4El5RV6aCH72RZIywm2ErvcJ6CJE/Y016bKijpeWDtIOWdMW9kwdg
	 b3oD1x6pfiCrWX/zMc23wCVeIQjQz9ULHxHLWHxl9gf6ByroFEXA2D0xcD21pXetu5
	 0GlpUwpa9HNJMO4pD+18Ld+LZDKPx+4U0mwmq9Torcm5+CbJzMnvxHqi+hMu0Ivio/
	 47CR/NwWxmD/a5bxNvMIYA0JiIGXPzQTpO6ZR7zqEhOK2H5mXTtBMCFDQCdgNwbuaD
	 8Wl4s57J4ePFw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 958F6E77188
	for <ddprobe@lists.linux.dev>; Thu,  2 Jan 2025 11:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173581655360.26126.6306733507357154328.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 78f489b529a63b5b0aba056a8c306544455e4c4cf42d8c6870506e0033e542d1
Date: Thu, 02 Jan 2025 11:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735816553
