Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E04B26057F
	for <ddprobe@lists.linux.dev>; Wed, 10 Sep 2025 10:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757499594; cv=none; b=SWgrIyLCv78Y3Gyxv0gcY7rLITL1XpEuOeIqmqmQtHmjSZdfJjKiqkSBo+5oRzlyx3kHOfh4BSIzAM8Ww8vo2zOoq4NeEh9rByszAGHuIglZNLb7ItQgT97Zth2YYMl9+HdWKC6iwCKURuzh3lrOrbStrIMzoiDWV6yMnRYvhlY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757499594; c=relaxed/simple;
	bh=n2xtgAR2b3KOBqld4I+1yQiRXCQDtQm1OK3DpwAClos=;
	h=To:Subject:From:Message-Id:Date; b=RYiaga1iHKhJ085Pal4PjO4Txgbs5ZeInsvoAkrKESONcB0lUJFpcpZ6uESbmMOIZJZ/pW626nP1o3vb2s1Tssgy1h0qZKix4lHqpNO/2nERgYzdVriHbk6lDpFOTZ0SbkSALTr2mC/qvxWEVDLnpTAzefYuAfLCwIUJnFZc/hc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ju7Qt2gM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ju7Qt2gM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E12BC4CEF0
	for <ddprobe@lists.linux.dev>; Wed, 10 Sep 2025 10:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757499593;
	bh=n2xtgAR2b3KOBqld4I+1yQiRXCQDtQm1OK3DpwAClos=;
	h=To:Subject:From:Date:From;
	b=ju7Qt2gMweFfWRhT3nKmaIRmclQmiu7wa/K33tGE/4yL/MX8/HLzbHY68AXyxLbnC
	 UF0s1043fj7oJkJv270YcbtH8Bysj5Jk/uqG36N5Rt+oVPPbJsJQmC0wGPzVjDy5Q0
	 D2bjC1AXuXgmhIEnzWMsLCtfxDp6DWDndUVUoaLHwJWgKYHHbhHsVUuw+shwnXPL6d
	 RadbFSNhkjaTgp3mzin+9kEYSmlJHI0O/UBefbOxOXzm0E7n77K6jq9QMN0RKvmd9D
	 RXGcEVUygXlobYW2myKBsfS3DMftounPhbeakum8X+q10VAmfOKxfIkYymsOqjo6rE
	 aQF1r8N8rakKA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94BE4CA0FED
	for <ddprobe@lists.linux.dev>; Wed, 10 Sep 2025 10:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175749959359.18086.14287735119832848550.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c41578e6159e05f6c9a24ac83a501c7f1d6aae7bfbb5a48ebdca365b7500434b
Date: Wed, 10 Sep 2025 10:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757499593
