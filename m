Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0ACCF2A1CF
	for <ddprobe@lists.linux.dev>; Sat, 10 Jan 2026 02:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768010634; cv=none; b=MziLdLkFy0ptoK7Z5kzhz+PWNAUKlnU/SZDmxeDxH/Wr+N6LycXeeIp+D4FxQqUoa+d+lHeaipINiTSwxXwi4x/8YLAG0DM0t9VvckVxyTecxLMUer9KPgdG/KP7hXt15Z18mIrvQ33Nl/8J1q8aMdLbJlcP1MuZu8de172eexs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768010634; c=relaxed/simple;
	bh=VJrVqmOpu8wIOMPQW3N6/wBgwCEda+j9XpZK9dpmGh0=;
	h=To:Subject:From:Message-Id:Date; b=QHI+vU/a/aGP+6vyfnh/Ro6DiilorU0u7asN7XtiyyxtakJS/2xUdZluEJTnkmMxFRLjdSEdm/kPq0/s/o72nXTsad9n2+SXVF3urOyqubBEndBtWvnVcFanWx9wLRK+DsVg1j41KPeCdACZgKIl2R2DSNvGe/khjivppy7CciA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Vu63cQOX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Vu63cQOX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA3A8C4CEF1
	for <ddprobe@lists.linux.dev>; Sat, 10 Jan 2026 02:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768010633;
	bh=VJrVqmOpu8wIOMPQW3N6/wBgwCEda+j9XpZK9dpmGh0=;
	h=To:Subject:From:Date:From;
	b=Vu63cQOX/GQsLWuFo5v4p4C47HNbrLY2nyGCYn5hw6aaxMNu0YDweuT5AhHVwRt+A
	 rYqk9YotaE7lltOR8ezwU1X2Ct4hifJe74mP4RJs52wcqJOiRGnTqPbcdb8el3lSoI
	 b6bPsBqo55BNNEaxrGVDlzCFMy9N6NaeoTVM0LAblajblTjXnQUqKF46FnIBdYBC5W
	 s18HOt5GX1IUBgQf/iJI5qX4DTauyKcgGXt8JGUy+AVzoICbfCStKS0YUF/UdK1Cr1
	 1gzLsZN0p60jBRYwvNBDIVkKqVPy6Wig8Rn3cJ5Y8vWR2rEoX/XhvHIUsKNm3mXHVp
	 eJA0hzbK2wZ2A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96911D277C9
	for <ddprobe@lists.linux.dev>; Sat, 10 Jan 2026 02:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176801063358.12829.5347452139526237374.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a57896bcae583c4d1ed1df1c8e33495911e9a2c36a76823e9185b3eb74bf6653
Date: Sat, 10 Jan 2026 02:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768010633
