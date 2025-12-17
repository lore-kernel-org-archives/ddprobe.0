Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 310E834A3DC
	for <ddprobe@lists.linux.dev>; Wed, 17 Dec 2025 14:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765981434; cv=none; b=FGpYVuhcvfH0ApzD+kZ4vjdwHBV+iv1uySobBH66brrCE+fG+MTrmzvGCRb4KqiG+4Shn6XFtAjzTp3qxbrsCR7WpL0337NPo8bYWBE6QIa138O7m2+YLmF/EJHickoMldZ0umUTB7ALQHUipQsJO7WYRLOs1iNc8N+02DWs/HQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765981434; c=relaxed/simple;
	bh=kEZwxk7/+ds08PNIf9dcWquSpZDdk0EB0mfGhkOGlRo=;
	h=To:Subject:From:Message-Id:Date; b=rSWIAD8Rvhxkk4vowBUf7mjz/ZOYh24KV+c5XUV1sfxYpWV2s5tKcvHcEn7xsTesF58aWCTVFUCKgvphWQKwkvQv06v7qCh+HTQRrAgGEYb9SLjfPueE6zEunez+jVd7Ogt62kWngXo6JWWchnz5izcXIItKT9EWEoFoiAje1VU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TPso4WYv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TPso4WYv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC76EC113D0
	for <ddprobe@lists.linux.dev>; Wed, 17 Dec 2025 14:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765981433;
	bh=kEZwxk7/+ds08PNIf9dcWquSpZDdk0EB0mfGhkOGlRo=;
	h=To:Subject:From:Date:From;
	b=TPso4WYvYm2THCNFerUBVZ1EMOX7beL48FGU/8m5Fa1w4Q2VN2/VUPcGUcrp4BKo+
	 6k1KSD5BRacCBPnLoIEdHY//DuRrRJiXhx2mwoAGGOlIxv+HZNMFHvlrIbIldYnC1l
	 1rViLGgyZTsrd7tviGfExRpLfbL3OrFP86HVAPbBHAhwH0K0+r3j8/lK0mHJBciv7L
	 fqqdsQcgYj6lFgdzaR/0rTyB/9UIV1xFi3HnTm4lza2RXmb6hrdWGOsMcn9gMIY/j9
	 62NXfS/wZpVwUsdFXOZKG446C+MCUwQa2R4GrfIgl7/GdapzJgndx3Vh1buwchX9PP
	 eYsNCEB6roNPQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BC90D65C49
	for <ddprobe@lists.linux.dev>; Wed, 17 Dec 2025 14:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176598143362.2768.8033099376741220010.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cb789cc64273a698602749da66b788a154592e9bad289b1fd076bd9ec8ed13bc
Date: Wed, 17 Dec 2025 14:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765981433
