Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E9B44B1E4B
	for <ddprobe@lists.linux.dev>; Sun, 18 May 2025 04:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747542594; cv=none; b=WhY7UZt/Wp0VppGB+FpUW9OD5ZyPhodv6wz8oTKw8bBDhOkwtPYNbb4OwIJqYf8+xbL6P3SD9sxeCNVShHigPDE108XatoumS8Y5CpCe+MMVDtAT4+g8OaZepGLIHX9mFsTIR5obvZb2dOB42oQM5aOM+emppZpaC4Bh81iHn8g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747542594; c=relaxed/simple;
	bh=dhonZry/vxyAvl6wnc3d6a2QeqYU0Y4JQS+9HCj16no=;
	h=To:Subject:From:Message-Id:Date; b=JeYRaKh+0JmHFggGWFsj0RsII2rzyCl7nQAFwqwoGuWyqW/H/GFcz5hOxUs9keJCek0VsafG0/wrzP/H+Zp5g44QoyyOTEw7wqEut8nufpyh8Y+U5RhKsSnQ5+y6QWD0LaDXsqzgM9hLuqyqMW2nxPdIeH9zAWkiX6Qb3+dGErI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hIR4u24v; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hIR4u24v"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC066C4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 18 May 2025 04:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747542593;
	bh=dhonZry/vxyAvl6wnc3d6a2QeqYU0Y4JQS+9HCj16no=;
	h=To:Subject:From:Date:From;
	b=hIR4u24vI/NIq7RZ/8LwxQmKyE157o50BdkvPo1fI8O5xxuPeuRsvw2EVNDv/lrx9
	 5SmNKeQsLqYi1+g2SIEBJ3GffRsenYy2j0xEx+OkvFhRpwgCxTtKN23bMye3TBQDnL
	 cy/nL5deMLsJQs8YLojKlOMoMcATMEA6LZXmdrXoy2DKAexphexZ559uNAh1nuuyCq
	 fRW6v+TMe9Txhv01dPTklyyGrHNn8fLEHzA5H3GPZkb4cp1QO7gPYdE9imLS66QTVs
	 NSrX5+VzIYY3VLmkHS7rOW/fYRkbqgwhqRbbDIMZIBqI7TtAoXC/lX5t1samzsmj4w
	 Bv1qgQtrBz0EQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 938DFC3ABD8
	for <ddprobe@lists.linux.dev>; Sun, 18 May 2025 04:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174754259358.1073.4183685309470556824.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 134e9e0979f105bed0e28c2a04ff88c78e9ea30d75df1d30f46dec4c72926918
Date: Sun, 18 May 2025 04:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747542593
