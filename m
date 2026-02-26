Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DC4684A21
	for <ddprobe@lists.linux.dev>; Thu, 26 Feb 2026 00:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772067293; cv=none; b=LE1BwwgN6lA5B0KTStLrbG4C86sAmQHoPabwmOhH2mHCT/n3iH4ahpHWX4vbqhCv+7UaBYq30fidmOVaGHqWi/UIozybbdop6tRzLjJ/h6kU3kIeQvedH4uNvoXFpK+DINuAMYXYEHfaHF9AVlGTg/Ug4CD/AekDyaiFXBYDH1E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772067293; c=relaxed/simple;
	bh=lpTz5sfSze77v31aNGyafcggPcTqdpI5GSZSg6YBkTw=;
	h=To:Subject:From:Message-Id:Date; b=EGFAmnvrTZfhxphFHX6/I6rTYz37dKjL9vFMp9v/lyHC7cFTs8uPc6fwjOZmRFNeu43fy3li+Y+vGHUW4FGeLBsKzf5u6Wh+CiP0ps/uG8KioaQuzdtojwo2/PiwPloDpy7YcxUt4kYo5th1ghKft5ISqjXfXX2CtRQgOzfOLbk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TdoCHfwG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TdoCHfwG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3CD4C116D0
	for <ddprobe@lists.linux.dev>; Thu, 26 Feb 2026 00:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772067293;
	bh=lpTz5sfSze77v31aNGyafcggPcTqdpI5GSZSg6YBkTw=;
	h=To:Subject:From:Date:From;
	b=TdoCHfwGCo7UnUXLI9UvUW/fv7O+KPQfGAgygGfjZRwp/d9LHvE05tZoVdFRYNPbu
	 zwhbjRAyiJBs4q4/KgD/T8iiHFUHrWFdHREzOux7hEJxZu7uWliqj7VQod2qAX8AJM
	 r5wVbYoEMGsEEjqOvWtazJ3GBBjFPrOz0lHTc+jO+m3yKx9B5D78FeE77Ay0jIDEYd
	 9t+V+z35EPWhj/VhkvHN5s7DO5VzCa2g5Z9idDc06AY42h1SUsKFi5Ncn2a+46tYh1
	 SQFnwbM55ewPRUKONS7kAceKG9MeXjTPBYvmO/5QLjxEtEtp2N9rR8S0BWhjuPvfZo
	 6yl3vLFI5aCSA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92315FD45FF
	for <ddprobe@lists.linux.dev>; Thu, 26 Feb 2026 00:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177206729359.11929.4558189242038171411.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bf6af428d451bfe117cf98b8a9b4b5e3d5738c3080cf35bd0a3fe132d477ab18
Date: Thu, 26 Feb 2026 00:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772067293
