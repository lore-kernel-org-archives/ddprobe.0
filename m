Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 501111865C
	for <ddprobe@lists.linux.dev>; Sun,  9 Jun 2024 21:37:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717969043; cv=none; b=Mzog59dvc2hwwkgpXI1c7RalWwvXIAhIbvQuPs6TmarxUOeSyJNZ5nri5Bq4kBQOJrB7gP2z2YC66ONSRrPAcTqy5DbF56ggbi2y0NB09CmBYCRyDCMkb+4KCDXhwxBR+34pipxsobsFptirDiTsmNwqA8Z4pmYT+yEsTPvWzjc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717969043; c=relaxed/simple;
	bh=SFZx7/qniNOOMkyqix/tJaDnIZRZatmH1mTTYBZMVIo=;
	h=To:Subject:From:Message-Id:Date; b=omMNYiVVz4/9xvcKSkp1vt7KyrtaLVPtXkD5d1ZOVF+grsbnQ2OywTAXuTmr42d4453n91dQYYZ6Nh4YYWuuKBrkzwTIk79IQxHVgF9rCRQk+lBDgV3gGtcbNA4gENYwzTvhlb4EmYiWOvGwpG6vq5e4rNoLkWsVkqVRPSzUxlg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VV+VMhe2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VV+VMhe2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D69B1C2BD10
	for <ddprobe@lists.linux.dev>; Sun,  9 Jun 2024 21:37:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717969042;
	bh=SFZx7/qniNOOMkyqix/tJaDnIZRZatmH1mTTYBZMVIo=;
	h=To:Subject:From:Date:From;
	b=VV+VMhe2vx/K89vwL1tH0IgQ/x2YIY/554+d3Bb3oN8p8513oTUpES7QbEL0s380A
	 V2XAHuscIARXWtQRZJU1YTwY6hneKZCI2JtT2vGuRmCz9FntEaBlblEWGBaHnYt/w4
	 t4m/5akV40+A3gZKRIkOdGogBXzmBESe0jfSNpPJ2whd2963FXo/VJuZO7UJAIgz0P
	 wKbcDdpQPrVv5zJDlteuDA0F8+Q8eP52ZifPB+apk+0+xIRvMaZpud21zoAGeGDvLO
	 iCA8E8yM/a4BwbnVDTeLnOphzcreqprDmKeoccMIiOXWjFCbw5XHrgwcHjXJwBUvLB
	 ieGBHrAziJY1Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BFAB2C27C53
	for <ddprobe@lists.linux.dev>; Sun,  9 Jun 2024 21:37:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171796904277.26935.2743933890580611334.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2cc32787f001bd2d430bef49338222629a1054ce3f096dabe950b4cfc8214d6b
Date: Sun, 09 Jun 2024 21:37:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717969042
