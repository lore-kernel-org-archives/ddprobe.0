Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 509FD19DF61
	for <ddprobe@lists.linux.dev>; Thu, 13 Feb 2025 22:28:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739485734; cv=none; b=ZeIApifAfZ+ZixeIX23znVxsQikzNSHlfM520SeYWGkjEjQCWiTPAaJu977Y+XAOiDcSrewpHR8Wmpztv3GuczHN6yv/4jBAGfaYFnrf6yShwE/RoL6thH8wgZlAzhdd+/JfEYtMH1R6qEnNbZPPM1BmgHrqMoB9LF7E64QToyM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739485734; c=relaxed/simple;
	bh=+YAWEMAgwxw5hXwd3I3eNLyUvJVhPEgYHal3uRbeyEQ=;
	h=To:Subject:From:Message-Id:Date; b=lSGLI3gCSOSvg+gJ6jEjmEdAA4ZIQbW8DgFFmyuMKsvERqykJa+Oeasfgmz8gecCb0kydV+yYut8ArCRtCbitvrPgMFjFTCB6eChtaN0v+nXnhnwVBxcxfZ3EK2oL8BSPBG12+RyDV1aB1bBkURozwb22c2QZWvSSgOrkddXn2E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IBhrd86l; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IBhrd86l"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3812C4CEE2
	for <ddprobe@lists.linux.dev>; Thu, 13 Feb 2025 22:28:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739485733;
	bh=+YAWEMAgwxw5hXwd3I3eNLyUvJVhPEgYHal3uRbeyEQ=;
	h=To:Subject:From:Date:From;
	b=IBhrd86lI0ARxhFQBjC4mAUy1mzQL4Chx3xQVI6VSr1O4hz40EnWHdvh5sv8rJSrm
	 WuY35mcKeKlf8i7k9cXZ1Gk9eIyCj78v7w0UUd7oq8gtHduvBAil442nzPfXRjV/K0
	 a/r7pNOXlTwqkRj44VUVUAIvlYD9p/SYVWBe3W1IhAuqg86g858zhQ0BShXWoy9x3h
	 Zg+9DwCnDjPIfInzLZjG3y5+L2WBaLWpKn73BOe7fVijAOG6Y2jTR1D3/gwz9m5SjP
	 IuF2FVwqtAEoNrtWlGQofaok+3jk564x0uKE2ausnT2uPEkSykmkJGw0P40DJqUoqJ
	 G74raIA8Qiamw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9FCF1C021A0
	for <ddprobe@lists.linux.dev>; Thu, 13 Feb 2025 22:28:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173948573364.1505.10772328014354762054.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f99338a6a16163679a071770be817b06ed3fc574d64329097e9cac43e3d213a5
Date: Thu, 13 Feb 2025 22:28:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739485733
