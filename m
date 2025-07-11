Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33A141B3939
	for <ddprobe@lists.linux.dev>; Fri, 11 Jul 2025 20:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752265795; cv=none; b=G+26V5XRHPwiBqgCasEfgBawY4DRecFGPuHWOr+qxgDDhu+rneX9Xy7l7X+Yqyydt4NuDQeWgxsyQdV/QkhLmWiFe4JsJr/i1a1OQNtqtpqjIYo5QfSYTXqUwR78Yg2euKpSIboalVXymKvZX6rAyJK0omnorJMO5ub1+O53td4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752265795; c=relaxed/simple;
	bh=R+CP1PinXvFc0VvMsbTaOTW02S/YDMhJZo+awTUTWq8=;
	h=To:Subject:From:Message-Id:Date; b=BWpTQ4k1M5egWupG5TbW6dJlZCFVH5LQruUIY9W95B26CnosCK8XKcfTBSsUwHgSntzRFGrJwvCyJjPtK9UQdwkFdItBRnlICM2kv0ku6OjBnD6U0zoajiHhHxjlLLemU7LIqaL4Q82BjsMa2+zJH5yixz0qam6LI/cZQcWWsSo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=h5EG5sFB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="h5EG5sFB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0E6DC4CEED
	for <ddprobe@lists.linux.dev>; Fri, 11 Jul 2025 20:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752265793;
	bh=R+CP1PinXvFc0VvMsbTaOTW02S/YDMhJZo+awTUTWq8=;
	h=To:Subject:From:Date:From;
	b=h5EG5sFBSNlctgrJFMBFbmpC1BsPH5wC8SUFxWTE5dXXILhyJ3DKUw6eKNKWphpTJ
	 Vb+xRvSAcuNDafdTEgz7/dJ0VY645o+9+zR3mk3MA5MdWqRKzaNE+2WE66ILVAaDre
	 njyEvMWTyx4gAko+JBwM1gqxv/WCaQ1nyfMIgOpe28s+4hN6YyU0u4GFGez0AQVlGg
	 8xBp/U15Bi3fEmHOwD9fCAqzBS8tjG68BcidJG34qaAYde3eD9mIA8qZCEYpO7MWNn
	 +Cp2kJP7/3PvDktb6JDPe1mV7c1Hn3w1Xswz9/cWr2BHTBXzsA42VLsB4wbKSwlsS1
	 F7vRkns7JJ1Pg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90D90C83F1B
	for <ddprobe@lists.linux.dev>; Fri, 11 Jul 2025 20:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175226579358.22699.14136377932728755582.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c8aa7ab73857928133118c9c6bf726f9e189db80482fd5a9b97b33b1eba16d6b
Date: Fri, 11 Jul 2025 20:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752265793
