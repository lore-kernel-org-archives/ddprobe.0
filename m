Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9F8943DDB13
	for <ddprobe@lists.linux.dev>; Thu, 23 Jul 2026 19:40:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784835635; cv=none; b=qpQMJH3ZPnnM844Vi34UxPacsZRRSBAP0swG8GKyo3nkvGp95IQ0ikhRWGD2qMMkqCCVx8J+q/yXIyPkWumeW/qstfH5MBgpvHMLvaXd+knDzS+gqy1StiL5Bcu9B+prkwjO7DfZ3N+nxlkkt26xI4iO8NvC9YEVeJEgPRZtsJA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784835635; c=relaxed/simple;
	bh=gLJc1DmaZmOJdFEY7v/SfdMU0SBtbKghVTGZqovyl3g=;
	h=To:Subject:From:Message-Id:Date; b=Yll5c6VhUcrnHNIQdXCD2ur+yxfdHov9Me00YmqevMCNyrcHX7vpvH6P9mi3KKZ8dPr6RJyXnzIMoWt89/A6X/C3PbMnUJe0xwUgJ6YdX5AoX068ql4zvK1QFJzOZ9DKkepQyg8FgjYGaw4j1MztGEgusXZcaMYRikzVthobOS0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=g3DPlxHE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="g3DPlxHE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D01A6C2BCC6
	for <ddprobe@lists.linux.dev>; Thu, 23 Jul 2026 19:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784835633;
	bh=gLJc1DmaZmOJdFEY7v/SfdMU0SBtbKghVTGZqovyl3g=;
	h=To:Subject:From:Date:From;
	b=g3DPlxHEKVdNYtdM4+tNLmT+d5BGJwrq9PSXZgaxAyFyKBoF1mWfeT9VpaiZWXMhf
	 wQuAMGGiM+nhWzx7x/V45ZhSA6muiF4OA7olJhh2prGjSs41YeUF881v33RTkz3+/4
	 mKQLGpIYlY0gKA5jYNJY132eKhpcHsBD8xASurzYLNXJbO5PdUkkfgVadTib0/B9pI
	 Cwp1t+BwdGjgBI8kYC3hqDqI2X5PpytkGEkydNscS8J18AuGM3N/74AP+67lT26xut
	 hdo58H5YxrP6+K3vmg6tzXTJjBw36zukwXcwzFbwQYa69fN5tp+6I68PX+3g9Xm4+n
	 07AchTwXN7kSQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD5E6C531CC
	for <ddprobe@lists.linux.dev>; Thu, 23 Jul 2026 19:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178483563370.9877.9443807386326244658.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d7c3ae49fdfd6a023064a8edd696623dd0e7705d3afccdef7a2286c123d8e6f6
Date: Thu, 23 Jul 2026 19:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784835633
