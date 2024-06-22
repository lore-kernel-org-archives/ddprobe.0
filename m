Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 636DF8F5B
	for <ddprobe@lists.linux.dev>; Sat, 22 Jun 2024 04:12:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719029543; cv=none; b=HbvlgCYbusRjV+0X39e54qszJQEoMoAL1jj5322tvswfB1IhkxSApmWwgNBBzYbIg+TF+UGAs2p9lj3GsdbEma9YBlE+Ys1hdmFbBwgsqonC7ODraZxlR2E+5LrAdQ4Qv3JUu21zstYjGban0GcHa/k1orSC0HgiinOvYHDS3X0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719029543; c=relaxed/simple;
	bh=hM78LTePmfudKhtvHRmzlrPRUO5KzmM5tucX2JvThyg=;
	h=To:Subject:From:Message-Id:Date; b=Jf+Ul71hG49Hi961Ls5k2YiTJEtX4YdXGH/LLdAiqUbDnxUAiTaQLF+KZRECvAbASg3V0RX+AmqyCM6tTQLBLE1tqa23+MIfKXPUTwAWYWAKFlD/ET4txj3CHvNxW+Uxo0CbM30eWqdHTIPy9QdHvQlHQLcounNbSl8A/VwOvkI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FGecTnhU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FGecTnhU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D11D7C32781
	for <ddprobe@lists.linux.dev>; Sat, 22 Jun 2024 04:12:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719029542;
	bh=hM78LTePmfudKhtvHRmzlrPRUO5KzmM5tucX2JvThyg=;
	h=To:Subject:From:Date:From;
	b=FGecTnhUNcytxlVdVcPkol1kS+t0+/h678fLicdTkm2ZwvaWEcxeZtNw9joichCzr
	 5KBBWVSYqQnVZCoDsCNMO7tOAf1siFHWVyREN16rP4TW5Kn9UklaiUzf6ZSptuI63R
	 uqIXGSYtAs7GSvGrwcc2g52S2VEp2CAEdDE6AYVckJLn0yfL+vBOxLk/mv8nEAyfUg
	 vi7k9t9j5QwDW1J3wBiYhSf7KhKyfOLiqRAd5V5pZhLKOO0Q2ZYwrZoPQJd4IzJ6im
	 8vzGOTqXcKxC4Ud3uPdhkxUdhHGploHyjDJOJ0PZUSBF2wV36C6ZDcKHjoqWgQFcKy
	 HSIvK6ktirWBg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BC1E5C27C53
	for <ddprobe@lists.linux.dev>; Sat, 22 Jun 2024 04:12:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171902954276.24179.6410327686261201022.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c5cdfffbcab47d2417a1ae24356f1bb655b66e467c7af93cff0085c8084e3f65
Date: Sat, 22 Jun 2024 04:12:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719029542
