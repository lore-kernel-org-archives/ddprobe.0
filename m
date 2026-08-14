Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47E85369D4F
	for <ddprobe@lists.linux.dev>; Fri, 14 Aug 2026 09:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786698034; cv=none; b=uaHxK9J04e9QqZML0c11Gj7/xCgpIcL0FoLe11SqBA+hBt3AcZDJEnAh65BICY88CiJGQEPNMEC46IHwsEnjlSDzRO7+sE6tJR6cW6hHef9ZfaY6ev0MH0bjOphS+gdndhlLGER1DjIjbdhlxN8sjXjPalUg+fFmnAXWOXQgSZk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786698034; c=relaxed/simple;
	bh=bCVuIUVM4f/nR0SSfJoVHTDLZQDCDzKR7vY4OZMkxsI=;
	h=To:Subject:From:Message-Id:Date; b=guzCRWOd7ijpzy1mRLvHPp56DbroZd20XNMgQXR8myb/iI+8Y2IgKmmkHS6iqfV1auqlThJshH1Hi8nqhCe7U6gFPgY2poh6dgrvCBqisffq/o0WLcQTEyygIeb7/N8qQdMQita4cv3cMsh+mbaYwhTM33OXIVVVgcu+/zEG/Jw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=a0/7xP7h; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="a0/7xP7h"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C6815C2BCF4
	for <ddprobe@lists.linux.dev>; Fri, 14 Aug 2026 09:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786698033;
	bh=bCVuIUVM4f/nR0SSfJoVHTDLZQDCDzKR7vY4OZMkxsI=;
	h=To:Subject:From:Date:From;
	b=a0/7xP7hb9hQUPV6sFRVhEfhzMgPk7wifBbCi886L6ua1wyKDrz4baPVbOldXwwWZ
	 afhHDi5LJWXKP/5SlwZsojbOwslZDaps7TouPBR2FZpM605DbxkjQ372Kq3i0HNbsk
	 6aQwvMxHtl+D4KrpfjSrH1GuTDEXS6K13ytFWKLfwRvoXujdYXjg2kMr/8+IP4cxhs
	 SIoK2qjbeU52kQiHvXK0mwdUVmvXnWbysJ1yFtL4ZOP9DDK3HRn+jTeUYUX88NpCIP
	 v1dt8uSDI+daAx9SVbYDQ42orGsZM2E4nZDp/VrfYetDaAJxgN6bUGRS90tBMTpBPG
	 mb97LZthsOE7w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A7BF9C5CFC1
	for <ddprobe@lists.linux.dev>; Fri, 14 Aug 2026 09:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178669803367.3965.5109124342979327424.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e6271d64fcbce0c48fa8716ee2993686ff3ddfd3cf8d828a0b80318c8c2ead07
Date: Fri, 14 Aug 2026 09:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786698033
