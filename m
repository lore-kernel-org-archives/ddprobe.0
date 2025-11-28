Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E8D032570D
	for <ddprobe@lists.linux.dev>; Fri, 28 Nov 2025 13:02:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764334974; cv=none; b=uzbEefX5RxpLOMxoeHdoBTYYwzw/AiMZmy1jcpF9YDXH/b1swEIpJ1rXqFOQtg7RYgHk6TDlYX5rEB3I3I1nZDWW5hwnoOALmn7q+vQSsV+gExKaBBsCHUhld/yIxZsSwqYMfGjadW/o8zE0+Bx+ObuaCYAu9h5uzXPSDDtAASY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764334974; c=relaxed/simple;
	bh=bKxjGx7KEhxbWazktGf5ewabgoyRp3n482PHwKoK7pA=;
	h=To:Subject:From:Message-Id:Date; b=tGJUUT4sJTQzj33axgL6jh+Y4jvQDwO5oJ6Dh/ve5QTyoohLQ2xBHvJUwexT67d8p+61t6e5ngByTA+CR3xuDpN/d72Kngrkt7o8cRsbD+q0bzr65BPZei658qG6HAyKIm+eKnJoUu0g4N8PN81RTmCaMcGlME1Efxt6/AqRYpI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=arnmfvbb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="arnmfvbb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8068C4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 28 Nov 2025 13:02:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764334973;
	bh=bKxjGx7KEhxbWazktGf5ewabgoyRp3n482PHwKoK7pA=;
	h=To:Subject:From:Date:From;
	b=arnmfvbbD/8xj2pOzAh1An4wAeODDhw/GMBoLBgt8cIbNWzq4/45/QI+ZKlutTSAl
	 DYoi/rJT9AnLxrZg1VCU9Wp76YaU6PMUUOgvep/BCFv0GqGGLqE7sjgw3SXc0HuAgz
	 g9okjXkRnNLhgnnftNRzIbUOyOi7cErxixnzvbIESz5IcVHTpasiVVM2JxmmhXhGUk
	 r7atDipG804Kv5boPzGHp6wRFJ5yrk5rz1fxss+ecnuzJsKRUPlHMqZeDMfBd5Iow3
	 bgwOGp1R1qxNPZH44WoMzyvOxKwqwhHWStcUpgFwz1CtBELJz6+J3FQ1nlTvzY6J6C
	 6JF8KQJeeYCqA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97C2DD116F1
	for <ddprobe@lists.linux.dev>; Fri, 28 Nov 2025 13:02:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176433497358.21357.13328820955716462047.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0b83c4d8acb0f6f3a7e010342719050449e7b99c4133fab370dad530bc444e21
Date: Fri, 28 Nov 2025 13:02:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764334973
