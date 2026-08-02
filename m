Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B17E2737F8
	for <ddprobe@lists.linux.dev>; Sun,  2 Aug 2026 08:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785658834; cv=none; b=QiV+6VQIfXS7NkeOzW7596HSLGNV1eLvbimP2IOuOOU2PRq8XkqQXhHWkJV+sokFWBawXl4jsI3sz0Ic6mZy8uJ8L3lccb2BWHM5ZINSjbyM0sPel1Kf5GG64eFsEpj1YEOvzeRp+FORJuStQ9dH+R8CXNQ7rP86T/5MXuTElZA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785658834; c=relaxed/simple;
	bh=dlvHEz6gp6RimpE0xJRP/STf0jxhV6igfyIYNEsaFLY=;
	h=To:Subject:From:Message-Id:Date; b=WXdkmRO01VcNRz15XfwvNN9NQ/YVcdP60DCqT52Pqj+lk3eYUEh+lD/2sJboeyYrQnl4aDi+9pQe+q8DS2ZVpqvLVEo/dtgJtlKq+lnhH7XnF2j90MLtAR85SCwMTIWQXGIJbX5+AqrclRSQO1rLaVLu9erhbnZwP6uarg/JwIQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Qp4AMlP8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Qp4AMlP8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0F6CC2BCF5
	for <ddprobe@lists.linux.dev>; Sun,  2 Aug 2026 08:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785658833;
	bh=dlvHEz6gp6RimpE0xJRP/STf0jxhV6igfyIYNEsaFLY=;
	h=To:Subject:From:Date:From;
	b=Qp4AMlP819exPxGhwjLvfUn4IIZntW/aUMwsENfv/9X+vjWrZBRPddU+hslNdEcGZ
	 CTbn0TBBISIQk75mKC7ptx8nI1nh1miKzsYJT0ronRlEwfwLD3rOQUI0TYxQMV0rn4
	 cbSX9HvRy7GY/+Spw/XKQicxhYT3z7Y4Mkzz4wiQSBCzDBW5/hAPk9uvPfiSgHoiz/
	 FkcjAROgJR1Mvws3+VJ/xXBzF6Z99yKJYapgEVgfkjfyv/a6vxCguPObKMUxszmura
	 7A2a+3gWdwhAuecqkp7oDDlwtRL/GLPs6mxvdTT3BeU0ZdrSOlW20E66WhwVWJCc2M
	 NF9vve8ssOcOg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEC9BC55171
	for <ddprobe@lists.linux.dev>; Sun,  2 Aug 2026 08:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178565883368.13190.1213409398156877680.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cd5bc86e5bcb95a17b091b99ef7539f8b3069a6bbbaec33ebea22eedcf037d2a
Date: Sun, 02 Aug 2026 08:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785658833
