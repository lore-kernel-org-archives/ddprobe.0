Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21DC1288B1
	for <ddprobe@lists.linux.dev>; Sun,  8 Mar 2026 19:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772999694; cv=none; b=JwHqcOJ21nDT2ix8puq7oSuUb/HFgxT/GeyIfbb+qePM4nbhGW73o3+NkiT1PYuYNhg/TjnBkWRL1lOm/gV5pX9nkNF0NHGgCGGqmqL0Icdda81wIacLTtcWS1Bxm9nQc49huLkZUw8SK6OvxXb4PGtIO09anjBDN/VeOlRC9FQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772999694; c=relaxed/simple;
	bh=a23PefOP+9n+8lPcv7qg4t6kNbM/hcSoPCw1WoL5Scg=;
	h=To:Subject:From:Message-Id:Date; b=hJW9gQNGxzf/f8+/ESOrkudq5DECqwVu3z0qaqB9H3fFToOXGMQR2FVHpRTsmGvi2r+jI6ZdOH10Kq0quuasDkmRQwAEXcmVy0/7KICowdAoMA572w/lpJXOVv6jbqJRMU9jDKlEwjlvU7d0czEeqT+cuF7P7NYEjf0TwqFbjRs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BjS2bC17; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BjS2bC17"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0914C116C6
	for <ddprobe@lists.linux.dev>; Sun,  8 Mar 2026 19:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772999693;
	bh=a23PefOP+9n+8lPcv7qg4t6kNbM/hcSoPCw1WoL5Scg=;
	h=To:Subject:From:Date:From;
	b=BjS2bC1776o5itJZS1dlPQk7UgXaimBJEiuiLiUdVRVNGh1PSkgNGOmhCCk4JSzPN
	 o7jJwfAMO2M0iH1fADcweudyfkf4XsF2N6OXOCBPc8oPZ21TKSpOrtwlUiwzMHqom5
	 Ro/5eDhUReSO9WfWNGDhmKXm6A5hLBjUruv4TR8Q3YrdXXDP2jH0NQHljH57mXrMSH
	 lHinCRzdhBcRbOlQiKo3vBH1XuKFtpGyqiTaFlOsxvZYxP8PKa4eQrO+m7bwr8qyH7
	 Jg8gEE3dACD0DvKt3tEyRinlENf3xIUoMijH3IKQE+nGRkwDhTV0Rtr2d/YkzmRDqy
	 k0kGVkxMF0eGg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 974D6EA8541
	for <ddprobe@lists.linux.dev>; Sun,  8 Mar 2026 19:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177299969361.6567.7438028920628845694.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1ba9d5aabe3feee14e3925d921dd1781bd5fee7a0c3aebb63a10f244779f7f93
Date: Sun, 08 Mar 2026 19:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772999693
