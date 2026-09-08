Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6AF2352ED4A
	for <ddprobe@lists.linux.dev>; Tue,  8 Sep 2026 12:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788870634; cv=none; b=SHYr0NNaPN+brieFuFJDqbYoV52D0JW1AltMT2r8mJhf20Tc/XCWpPuJUpueXWy8C8Eu7VqQsyNllnOqCF5YVhcR4+QtvCfdyrH9OBmOCh2R/P8zRMXGbqlbWyffNhwqAKnK3Ai6sLMkZmiGTUqV0ulzEbeWKfo52JoH8FnroCE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788870634; c=relaxed/simple;
	bh=JDhqCwLCH+Q72BpDqsTsoWE8Ux/VtppfHUswYNu4/NE=;
	h=To:Subject:From:Message-Id:Date; b=E3KZ2WY3eKvgWwoIE8HsOc7afZaa/ouBXMY/sGBggimlsAKRrdJpO/WVxk2VP+UT32+OHEocJXMHLFOvzW1ojRBEH2c0qyliHsvP4xBW1wtpi/QVnhiHBDa1B6D3jfxACin2NfOrLOn87uzR904+Zrls2q9GwxZ/mf9oyk+ZteQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rgbVI4zA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rgbVI4zA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E996EC2BCB8
	for <ddprobe@lists.linux.dev>; Tue,  8 Sep 2026 12:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788870633;
	bh=JDhqCwLCH+Q72BpDqsTsoWE8Ux/VtppfHUswYNu4/NE=;
	h=To:Subject:From:Date:From;
	b=rgbVI4zA5mszyb4CIc5ZBv0PV0r/PAqS3cDvZx4EAH0zTKwBrpsEyUMCiAzAsdqWf
	 ocpCHXIj22mf+iLid+s314iUFVtywAPCq/kDhM/FOQJHpwJeKwZ7cYi2Zm5F7+Hd1r
	 xplBfk0eecpnQPEIosh/jF3z9kirEko2O+d0rRT1Q81/rmaa9rb7MZdTwZ0/4OUwft
	 Eol39fAZU6nRj/Bwt7d0dvkFESEQUi4nlYs9phfB7BIiftVELVoFc9awAnjmA0GAgW
	 K675i8jmJLVpyK4Pylg0dnLXPBQw14SQZOU6szkKXKxx9Zbj0Hn0tthIi7IxsOdBMT
	 fWTw9WR/26r1w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C30D5C79F82
	for <ddprobe@lists.linux.dev>; Tue,  8 Sep 2026 12:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178887063378.29276.494714664701575903.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c209b56dbe1f42f74ab87f7b8be9bb9b76bf5a5fe5cb305a60a4a7c66b8c1e80
Date: Tue, 08 Sep 2026 12:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788870633
