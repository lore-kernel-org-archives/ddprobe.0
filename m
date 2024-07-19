Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 375404C85
	for <ddprobe@lists.linux.dev>; Fri, 19 Jul 2024 15:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721402154; cv=none; b=rVt2TL6QuFKVDSjFvETnP4MMFORVlaWcNlp7I3pMWdEpGKXbcwllWqUd5ssQhxC/OvUu5aOGKs8xeELtIbIT5NZpQ1IlXQxhdBBiMgjgJ22h5u7IgeSrUCDREtwpDKC6dvtASoriU/qqm2jam1BgGRTz2sYAFe5WqPchCZFuFY8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721402154; c=relaxed/simple;
	bh=AgHoQT7LK+FL/AxjyZKwQoo39exV58K1skBHDJxIIvU=;
	h=To:Subject:From:Message-Id:Date; b=FkLUtAdYfxaMi1BChe1P500aihlyQuojk7SX3vUraRRy6XBm/XWqRQtbYOvgYWNcP+xS4ijAmIPKNOjPqt2m0pN4VdeFCmuZYyEcND8lF227C6G3ZM6Xh2KtMZkX+tbCv4WIG7mvrn13IdjMk5pzG3ArRrihf2FCI/AkXu+8zuo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Z88Yur4X; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Z88Yur4X"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BEF4DC4AF09
	for <ddprobe@lists.linux.dev>; Fri, 19 Jul 2024 15:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721402153;
	bh=AgHoQT7LK+FL/AxjyZKwQoo39exV58K1skBHDJxIIvU=;
	h=To:Subject:From:Date:From;
	b=Z88Yur4X/wp+04biqLxnrAfkJ6YYtzNFYfbq/fgTqkDRIp7sqONeVQr29wxQS4teV
	 eEshbfh9A2h0fAtAt03/CvlHBFr/zkjlvMkuSPYr2mR/M4bqIaJ7lXLQXwISVYrmN/
	 S2B48Epd9vonrdguH7PAi2YgL/i6ESUzEy85/faRr0SsGBm72xUTTgv2Y1UORWeFsM
	 k6vxfuTpzpDaLHvVgoht1hRuC4NoZ9VRj/hzs5IeZeIU3TmgYoBiXUe/oSSsJIZRwX
	 pesN02JxFBft1w4JhHc1JvleUNC0OZCemHL07szZVh2UAuvHdgTNFMUgE6wi1HFFyr
	 fScXNYjTpBJGA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A5695C3DA5D
	for <ddprobe@lists.linux.dev>; Fri, 19 Jul 2024 15:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172140215365.30076.441183622151515982.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 696fb6153e8da45e855d4da528c1d5e59fcc5486ef5abf2bbcbf2fdffd37f287
Date: Fri, 19 Jul 2024 15:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721402153
