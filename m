Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26F0317BA3
	for <ddprobe@lists.linux.dev>; Thu,  3 Oct 2024 20:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727985954; cv=none; b=DvjCJm518yqDbPi8ca8ZpNKjWznjab5l11l4rVcFRlU9u22QGJ+ezB5h2tcaUI8frmMUysBL+2+9bsoe2THjSArl/A7hSXwDPG9PwTA/vlIJxMv1pBhHopDTR1RCnfgbB2p65Dat3XpLDOAPdZpFczsrDji/Hy0eTJbDrXyiEfs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727985954; c=relaxed/simple;
	bh=fyP/4pVJn1BUjPsX1kVrzP+3h9UvU9AgNJ7iY5gIlq8=;
	h=To:Subject:From:Message-Id:Date; b=OCD1nv/op+BgRscH4YBVg6ibgyxRHzwIWiJek0mnDGWZ0Ksx8MfhUNQnReyJWHEN7u9W77DFckI59zDC6algQeruBboamhqvXkMb6QWnkORvIOpkhEEGZVjySf7T28JOC5LEgH/8yCX02hVLUDDaHRW4PyqvRPilmF6pTUQpv6w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=khV1H7FK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="khV1H7FK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A45D1C4CEC5
	for <ddprobe@lists.linux.dev>; Thu,  3 Oct 2024 20:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727985953;
	bh=fyP/4pVJn1BUjPsX1kVrzP+3h9UvU9AgNJ7iY5gIlq8=;
	h=To:Subject:From:Date:From;
	b=khV1H7FKnS4jXTQIO0jUuZptSWOYIGgJ5JelGzfE1X8iRlozXPrsoH6WKCl2feIuX
	 ey6LMxqFoDOMLD2TpIHklN4ulFR/VWdBhUcTFl8MZ7DLkmg4YIxTS6Ba2P/EoeN2oB
	 4pHjdSLer/5u9N1xF0hMlhVkXTjnCpJjOdYgx9H73zCi1otH7BRgdbElkKTAt810Ji
	 Q7MQbLnF/KjcKDqab5FcOWJkwb2w+OXQJDhLpr7mnC0/ytmaCqRtOIcjseGRwii6GT
	 ItrgQySUF2XRQeRNIJZ0Fph9uwCUfym00x1sKUKyDpeEfDextavXhywzKZtLkyInK3
	 5GgPLWhKHVQ1g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94490CF34C3
	for <ddprobe@lists.linux.dev>; Thu,  3 Oct 2024 20:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172798595359.29311.2031730255891139728.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 31a12d5620735ca57ac781dd22ed54592f1f7c3899141472ac8f6941f35ae3ed
Date: Thu, 03 Oct 2024 20:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727985953
