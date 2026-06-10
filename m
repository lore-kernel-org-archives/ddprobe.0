Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 279A440D580
	for <ddprobe@lists.linux.dev>; Wed, 10 Jun 2026 21:26:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781126794; cv=none; b=u8pp4/NjN8DLRA2jNgmIXPbfgEZLezLGRCDhhXvNdIyIt/GONJP/vfCJoh+aVlJ3DdDaKkIJPnKVjN2xKHzDXTvSdHfSD6aUfXTfFEz8Fc639sLhML9Pf4Qvq/He5wBqVcjCsEuK28tsDxcrgpDEhiRleiWoLivM23tI4eTZCOU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781126794; c=relaxed/simple;
	bh=1jDnlaD0DjYMH7ubL+fnAxMZthGbR7GOlCbOYfI4PBY=;
	h=To:Subject:From:Message-Id:Date; b=EsjQxoAirF35mf8vdgF9IWFO3vUuBm6xFfNWm++AB0O5QisZ8IjU2DWZSO4z36YJ7U7F+q1lFJexoteqwRKaXCKc8RyMu6avr1VFi20Z+S5JkwiR/nkWFn0jW4ZpNW/htSw0VCt+Bbl62GNA9WjUaEsOpJjUacO/AqgW5KJa36M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pOvdbXjM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pOvdbXjM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1EFBC19425
	for <ddprobe@lists.linux.dev>; Wed, 10 Jun 2026 21:26:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781126793;
	bh=1jDnlaD0DjYMH7ubL+fnAxMZthGbR7GOlCbOYfI4PBY=;
	h=To:Subject:From:Date:From;
	b=pOvdbXjM4d72/ga451PQww8Wt9+hPOy6e5eOIlbACrLlS938wun5LjnbqWNOx1gFD
	 GhryKksGPMQySet0l7605zCQIp4yFi/uCqGbEzkicWNYDjP7d+G0AY6+B2JKHuEFZf
	 o8UgNIkQZo3WaHfYtOm7VKsGgODmxdZUhK1ZZXmHemoryaKhMsiUquMRIhFmb5czJy
	 tbK/xFdcxxu7P7koOOOYNSIf47/OHMpQON7UsvMeZuEBvdHfM90+Qb8+pERqU3GEZU
	 uqYO6jQ2UTp8/ye4kv6h8Bb419KQ/g1bdLyqNHtcCqNZBJN5fYcwpjmmE/iUHt3Mlz
	 y5QvayyMyqAxA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2439CD98C7
	for <ddprobe@lists.linux.dev>; Wed, 10 Jun 2026 21:26:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178112679369.11570.9101994501559642654.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 66264551d025d7876f984f2d69de44b4c209e7e93e306192ccddb3dad2796c79
Date: Wed, 10 Jun 2026 21:26:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781126793
