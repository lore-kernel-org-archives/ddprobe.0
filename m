Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 727293B8412
	for <ddprobe@lists.linux.dev>; Tue, 21 Jul 2026 20:48:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784666914; cv=none; b=sunVq8idG5w04yiX8AHfxdrT2hq0HXMjYzxbsicV9zhEu+vMucJ1t4GBgiKExVAmywgS7nNzh/dDCKmGm/tyYKSZqlAwtBaLpQePnAaBCuVXhlSJfAvAwaWWjPf6MxuVHDoHc/ir21VwTXPjFGy756z0PvrdE2bUTYAs99tfO1o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784666914; c=relaxed/simple;
	bh=P18wutjqmvW3f/6O6NzZ0bYz1Vh3zp9yYbG3FiZ12Bg=;
	h=To:Subject:From:Message-Id:Date; b=Hb0GzyoLu2PpA4wdU+4zaj8l660DKjmbfY5Y7F+Jy3gZY7L0qzyU3EgC4TaGdeVKJMj5nucYVSHch/D+z8QWsAOJZrbwgBHwqQ45qln7eIVye/Y6RsGe0GYYEhbanfBym9tJ4iqBUGJ6B8ergiclZEotAA8LV7dn5+WNJEOQhGI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=S6w/ZWxA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="S6w/ZWxA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF420C2BCC7
	for <ddprobe@lists.linux.dev>; Tue, 21 Jul 2026 20:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784666913;
	bh=P18wutjqmvW3f/6O6NzZ0bYz1Vh3zp9yYbG3FiZ12Bg=;
	h=To:Subject:From:Date:From;
	b=S6w/ZWxA3e3HYPL2wGQUP8D+JZpXy82uix6orfvG6X4kNKbktq1VQmS1WTgjV4knH
	 BlYIRifr3oWo0Frf/UiNZ/7lmf4VNJYnhshRr5F0IlCxdhP9R/KmjsUjCL6Vi/SWqZ
	 VjqAumAbrHAIogyuzzaOrkcejS9fjAsA1gSv/1qL0ZRbj5dUcqURcRiOamF40crV6Q
	 y9cHZ0GayKphk08aV+njFVv1pde3vcLhwQeNp6OMLRnnrQj5kT2UX3nQNKSZl9MaXf
	 atDaisutDI70vufP60J6Ytfo6iJvi3QI+PgCBZmSyZOQyQZMOf2EpsC0NFlB3gDmIR
	 U4tYQcYYhMpAw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC483C4452D
	for <ddprobe@lists.linux.dev>; Tue, 21 Jul 2026 20:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178466691369.9322.6702159004476438917.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9f3359459ab770d0c68bdfa67647e3935878b124539026fa199bad20c446f9e6
Date: Tue, 21 Jul 2026 20:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784666913
