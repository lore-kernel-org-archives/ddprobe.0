Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DFC731E991B
	for <ddprobe@lists.linux.dev>; Sun,  7 Dec 2025 10:22:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765102974; cv=none; b=h7nasCTcSPvu6EI8rWAQNVAafr7Nh5V/5CWyOco18K7artyb/+QMJ+bx74R0qSIDQC9TRvmRAfc9F+r8P60tpO+1YaowMrRorg0Q/SIwOqdF6pxbgmbS91397FgQlNKs1cioESINRlQBWgiPXDxEh8Emg9JRg473nhjG9LymjLc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765102974; c=relaxed/simple;
	bh=3fIJYk+FOn4MPaLMNPXIxEl44vVa1zptxGqVAt3UNTY=;
	h=To:Subject:From:Message-Id:Date; b=Cu9MZbwrxHbD9OrN9g0XPbcSU64xdTRDg5XbZMRKGx7nqChuAceyOpqV3RzgXr6MW+zzL7wBtqnf0/+YZFyVAacr9JCKf7KC/CROccMNx20aBQEhwATkD821LmGTwE62okieFtbyhpLXTTct23YZONIjqbRXRe6JpqXQ98C8LN0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TFmBuuBm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TFmBuuBm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB126C4CEFB
	for <ddprobe@lists.linux.dev>; Sun,  7 Dec 2025 10:22:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765102973;
	bh=3fIJYk+FOn4MPaLMNPXIxEl44vVa1zptxGqVAt3UNTY=;
	h=To:Subject:From:Date:From;
	b=TFmBuuBmnpYMJwd9d+H3yOQFlewvCklamNwHKVq9Sm4CWhGOSaWA1o/24hc/efjYH
	 0aEAyP9KkVI7PNbe5FFOtRDFxpAmO5HlUcPDCkf4Mlbc/+BIzQxblve0YM01Emc3AO
	 3zGuRB+pr0T6eyVkX8LNhw+tHOqTSks6vmkYTVBwtNriGYZW4aOj/jkX4qgOs0aP34
	 QbU+0stCiPVbs/NEmjBkmIbzXAAUvPrpnl+HLzdduIq9mum9ipqTWA1ODI65MBIX+2
	 LwSZqrGdNlkdYuT2BuCyLvXR949dyWVSzV/1WzBdoT+VyRV/ta7r0/0yNefBXcErTP
	 fZHgTNKlSOOkA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95111D2CE17
	for <ddprobe@lists.linux.dev>; Sun,  7 Dec 2025 10:22:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176510297358.4655.13585462255971889648.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e4a4e1443cbf1f5fdbb87a8cbcf4b9630ae41e0d97b60fb2ce1625d280958bf0
Date: Sun, 07 Dec 2025 10:22:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765102973
