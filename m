Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F56B1362
	for <ddprobe@lists.linux.dev>; Wed,  8 Jan 2025 02:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736301954; cv=none; b=iotlU7H3XT2dFhMuo4+TIzFdXV9dIRj9wfBeAOkcJLDR6CSK96n9LVEygGTWADnmF4UX8QCAYBGRKub/nPHXuia8BCx5fWKm3MCZ0j2zPbwWzuQjmqBvSkyfQwF7rlj1f3yJiWlLhAQMzzF6PHRZgfkSsOdZzcfWmnIORoHTIP4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736301954; c=relaxed/simple;
	bh=FbQbu6nOgE1mk4Z9XqXVQ/q0iV0Wfab7UZxz042ouTE=;
	h=To:Subject:From:Message-Id:Date; b=OgFKzhan2EjxLbMUpbzeGEwJF3tHvSkv8F/5Ql5tnpWRiHwlB133XRNKEM56DW4INg23F5t0TCio6asNc76hlJ/Xz6kBQNwpG0RWvUgVitueqPOBnvRDefGi3Fy40fcQCqtV8lyYWUevRuyt4UsgJ43ufRc6RRTRf4q7n4QWE6k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MPiXIL89; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MPiXIL89"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A48C1C4CED6
	for <ddprobe@lists.linux.dev>; Wed,  8 Jan 2025 02:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736301953;
	bh=FbQbu6nOgE1mk4Z9XqXVQ/q0iV0Wfab7UZxz042ouTE=;
	h=To:Subject:From:Date:From;
	b=MPiXIL89JrqLIwW3TzXvGsVCj5wzWN8RV90M5qr69A6WuDqSbUi6rpGzScaO+4Leb
	 Np36HFnE1OJLgl50xAaUDaWuUKulw76GJQEp5VeUmcA43TpFaMmVXXh+cWE/0YBolK
	 a1Z0YOnZd5mhuLVov064IWXA2IZmgYVK8SaGDCacvr2yVf6FrQJOdPPsgOBqK1og/O
	 yRIioz5LsqVn+THvYtYFJfJ8+oww0HHGNJs5HJ9JB7k2Oj+gkz0avwPOEQb6xxBYkU
	 lTE8D51pvAV1aM9F36mg0xCvcNiBCXW/yWPrf/QlHf0I8iF4IOqQOiz3eny12PvFyW
	 Nw09pKOc4hvUg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 943FAE77197
	for <ddprobe@lists.linux.dev>; Wed,  8 Jan 2025 02:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173630195360.30413.12279507385572929273.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2f7f79095cd3965b97f609c015aad9e3329e747f4d6726ce5b577a2beebe72c7
Date: Wed, 08 Jan 2025 02:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736301953
