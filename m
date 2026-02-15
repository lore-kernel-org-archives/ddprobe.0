Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3571717DFE7
	for <ddprobe@lists.linux.dev>; Sun, 15 Feb 2026 17:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771177494; cv=none; b=kRTMJfuNrtRA+xkK3QGUctXBk/eQZvlDhox/blo/29noUJ2Ayvx8rtWtHpRTPMWoFyRY+gngBoayYH0QDcmSapFY7O8X4PDULJTWWK+mZD2Z2ixVIoUXlyhdh8BgSwdB9VznIPsRqOyMm3yfA4ga1UQITohecyCX5V8tnUHsAME=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771177494; c=relaxed/simple;
	bh=6LLSGKmL0HjfVdjd+v9LRYFewpl9m04jB/K2wtsSpVU=;
	h=To:Subject:From:Message-Id:Date; b=j8vkZKxO90bnk74/kZj3dKqNSyg3hGyd4CalKIcKR+p7jM4yfc8iY+ZB6nU0GhOPhEApde9giVF14QZiJEK817n8YfSH9D0UmsM+6tmntaYODj943/JekFmoIBLKzF3Lgc8L/fvFZ++eBlnqM+mLZuO4kB4FS19sWdbJuWQ0LKk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gSA1tmYA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gSA1tmYA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B4692C4CEF7
	for <ddprobe@lists.linux.dev>; Sun, 15 Feb 2026 17:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771177493;
	bh=6LLSGKmL0HjfVdjd+v9LRYFewpl9m04jB/K2wtsSpVU=;
	h=To:Subject:From:Date:From;
	b=gSA1tmYAcy/eAUqQF128WQXhdo3EV52iHqBId++ebeWEqlho0KMPRZ+h57Bkt6pjI
	 skX+EWQH+1MzkiMmLFR01RugLEYClDaTt9VJtPrbbyCh+oAG4ZBk/LkKVPEhDPvAR3
	 +JrX3EErn8zJaS1IR1ks3EdkDx1trJqt9wB1CPMPO99BMajywPgT9LyskIrgQZzEY+
	 qgSryYgUPfrG08X4nvgkt5rTef9LWzb77+Co4Yq+jtkcpzG+jyjuYqocWtZMZGOTPr
	 I+sn+tkmbe0iFzjki1WwyCB/zmZ5jZE1Zdsr3iWvYtVxtR+SBbZerBoF1bBUAeKr7G
	 yhGBqJaK2Gu8A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D8E0E63F06
	for <ddprobe@lists.linux.dev>; Sun, 15 Feb 2026 17:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177117749361.4128.2934114305536542699.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cc489b31e8440770b7fcc2d04280a0458fd34bb2107ff0ed44f48b53b7343edd
Date: Sun, 15 Feb 2026 17:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771177493
