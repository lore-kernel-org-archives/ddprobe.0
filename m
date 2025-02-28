Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A7CF1C3BE2
	for <ddprobe@lists.linux.dev>; Fri, 28 Feb 2025 05:58:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740722335; cv=none; b=tq0DPvBLQxxyMmnpA8ONGlHPLQdSc4XpKgocDHTkTe4Uf5gGWAo1hTDq+R1AzzSAKahk2xfOeQSqAXUu+jYRBSlruB18/3Nw2BJaHmxI+Ck7BLRq7s2xdnfAWFMbWe6F/OW/uQfMJPCt8I3Q81maYvt9+Sdh7+CwrM/rZH6CDqA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740722335; c=relaxed/simple;
	bh=XwqpKEpw8/Sx26R/2kCeTX4Qnb8hjdaI+YKeVlcEFlw=;
	h=To:Subject:From:Message-Id:Date; b=lOXCNDiBfqYEkDRYSyeTduTzjIV/szjX0IuD2C033xymoHhfb+lfdX3P1ONRko6Eh0lPe1m567AK5b3PfZgFUa8euf8ohybEtZT+57dMDuWrqIAMyrN2eeC20/gw3/itjlVTQW2z45Ya38jVg2EXRlNJGaGxa5sVfO1FXXRl+mY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=O8+YYsCb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="O8+YYsCb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC63FC4CED6
	for <ddprobe@lists.linux.dev>; Fri, 28 Feb 2025 05:58:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740722333;
	bh=XwqpKEpw8/Sx26R/2kCeTX4Qnb8hjdaI+YKeVlcEFlw=;
	h=To:Subject:From:Date:From;
	b=O8+YYsCb4F0pFU5qUAbp7dUFnz3tL7HwveWYwWDK6GM9XSzFfgZJN8ipgOOQifc84
	 9k6Zf1ptIYicgqs3iTLwkBamztzMPNWBAW82DMl7MY2qIV0EYwKS1LfUkHQareNHsI
	 x0A7d3ptRw7viOp9DvbHRmiVouc/ToD1RCHDK+RJjACfhAJ4SzkxFkzR+kAARn3yzD
	 VLaYfZxo0V5XwEOlmqPgEL9ms33D+EHNNZAAGYC7nSHBhALCTSyt4CAs76ZiDBqT6+
	 xKFnT6P5N48dyD7sLfQdH1gMpUKXUR625OztyqyUX9ce6bUqRCzUJHLsarJ/Xj3zMX
	 9dxhVEDpzTfYw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A572DC19776
	for <ddprobe@lists.linux.dev>; Fri, 28 Feb 2025 05:58:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174072233366.17288.16028235742934228820.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eb87d0f25aab2d02bcd7df6f6e50629d23fd7b0a2d2e9b4419fac5b9cac54d59
Date: Fri, 28 Feb 2025 05:58:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1740722333
