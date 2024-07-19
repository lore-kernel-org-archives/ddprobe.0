Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4083B69959
	for <ddprobe@lists.linux.dev>; Fri, 19 Jul 2024 08:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721378154; cv=none; b=DY1wJ6trk6WRMSv1Z14svGJD/Sffq7d08ocTYoUNrog8gLrs0ZG+AwcYCYgHAZufTKUuecQ86ZnLC6AvZ2IyGpY1PvnvFWuwVU9i1xMplp4yqJ8NKYo1qCvAConCRaQHOhe7twjjj+gBq7ftCcpIwIk9Q/luRsapR8nvemMZgRM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721378154; c=relaxed/simple;
	bh=NKZ7siih82+cREuEWf5Q4qnpfZ4jDJqLP1wFvt6qYK8=;
	h=To:Subject:From:Message-Id:Date; b=Y7htYaWOINWykcg+Fi7tupxaGi/PzihGYZs07KvH2KCODmejf7d8F4yIEW3R/scVWStTLp6sm3gkKCdbsWhkSLSXxXYM7BFkI/2Wlpr+lst58N8iu+K7DxzpOnVpXkO4N5BSzgAkgeAx82k7XKH22cU+hJ+o/k2+GGNlFB2erro=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ULAu7fnw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ULAu7fnw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C88AAC32782
	for <ddprobe@lists.linux.dev>; Fri, 19 Jul 2024 08:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721378153;
	bh=NKZ7siih82+cREuEWf5Q4qnpfZ4jDJqLP1wFvt6qYK8=;
	h=To:Subject:From:Date:From;
	b=ULAu7fnwmc0OEmX50aylLhv/vYSSXePWUDcdRQeud0JF9BP3kuJq0ZLNhQNZoXgs4
	 XQQ4/Upmsw+/a57lfs98deZgM/pcXNhrWEt/78N2C/QGplaZ9WLsIX5Es+VAQjsN4w
	 l4TeCH04YT7Z6OlY/7HnANQ/ZCma1eVJy6wEsXmiPQYSxofUN1pHAuk7VF1uHfAZ+Z
	 jEHUwEa92z+kxp23hGIOAUfmSqEKd7n+4nIcsbuOI9L6jPvAo/TpokiHsO3JdVqM76
	 DEPmMSxvhzjYTpOvCo58A8afJOPkeP8VDqS9oNP3RDGJhfukSgoBvngNGs9ET9NMel
	 DXNTWb8jhpvDQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD93EC3DA5D
	for <ddprobe@lists.linux.dev>; Fri, 19 Jul 2024 08:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172137815368.26535.6276350907931452694.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 994fa918e2aa980c1857f1a62b0d8423b74d495895611a77f822f6be304eea5a
Date: Fri, 19 Jul 2024 08:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721378153
