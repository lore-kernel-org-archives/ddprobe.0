Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 117542C181
	for <ddprobe@lists.linux.dev>; Sat,  3 Jan 2026 18:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767465234; cv=none; b=e/lxhe8qsP5m8G8alQD6wr5haqstfYJMx0WIk7NNDez/bgq8z3Or8a+c0tZOvUbIeRqmRgdgbt3SIl4G9lRqAR96vSvkA/hh1SaS3D05nMASP3oh+K9aN4n6MN/Mpdi9hIkIGaAF6qfxJ9iTrkSF2l+SY68Y328TFkofv74EMns=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767465234; c=relaxed/simple;
	bh=qstd5W/eaMy3kYhlSU/uWO7jSZiHSMGJb/GjdF2nAKQ=;
	h=To:Subject:From:Message-Id:Date; b=HA6MfiHHNX4hUnM9KjPsvKkMQjxMPmWRzKTmlnVIQtOunbfBoJ7IlA/gnxB9yoMzD71IAA47AJLw5dgc/xJcgQoKakDF5sZXWURkEjbaGHVBpMW8uvgNR4beZgyIp+sHUAqgj6cKRLNhgntOYPUjbYzeWHjleM4OikxcZ6jTJQ0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rU7Y4Nkq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rU7Y4Nkq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D249C113D0
	for <ddprobe@lists.linux.dev>; Sat,  3 Jan 2026 18:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767465233;
	bh=qstd5W/eaMy3kYhlSU/uWO7jSZiHSMGJb/GjdF2nAKQ=;
	h=To:Subject:From:Date:From;
	b=rU7Y4NkqPBgPflMAh2kbbfvR/Bw+8exQq+dgVSmkWi8q9mZ6hpCGWHqpJ2ZKDdnmK
	 +951WyasTtabF4qLc+WY4SwN0oIcOX/Kf0lGCVxeNDiEm7nxgQyz5HfWJicj+dH3cL
	 0XZlDA5CPL/gBNc4Bjol8GgOz/+fZgz9NNKfoXiksQtckLTjXz8xmcyBjEvYI+il2o
	 2JHD6e4jAaSSTTgm49nWLeAp5MiqnS1KZNlENjn9aTY/0pO1u5i1L6GCWNgn0eoKie
	 qu7CF/b3G1J4szkGo4YJG4Syxa6jzYr5+WCcrqDemZ7MWU7s2XBkXgunTPI9CzwL7T
	 IVKf6lCTyczCg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F699FC6185
	for <ddprobe@lists.linux.dev>; Sat,  3 Jan 2026 18:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176746523357.32217.6528071204363827131.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7ec8c91772de02b8ca24e27393789af273389f408f926495bb943b8a8b7987b5
Date: Sat, 03 Jan 2026 18:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767465233
