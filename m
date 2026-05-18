Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0FCB337C90E
	for <ddprobe@lists.linux.dev>; Mon, 18 May 2026 11:40:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779104436; cv=none; b=CRqaF4JLUe9sqOglkXa6LDuK/x3VN1KStcIPDKDwSwqD+rdhqyoEtTaBAcbKnq/5IrjJl8qmpOrj1eg1gPcTpaim8duO+0YwGUCIFv2dT3yPsrW+RcEB5QEVdc/sW+ZsDcK4qavBjAQQkwDmwgI4EsSDEFjlqt5hRUUfqBU79G0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779104436; c=relaxed/simple;
	bh=OtU7zHMq/zyl6e0fIkeCgblodzdvZjLscQxFs9b1js0=;
	h=To:Subject:From:Message-Id:Date; b=JMLv3BwsDuhaCYz/qiJ1DDPFVofNqCzzj9toyzJENKCLyTzt/Lpco/hrPg679jyEXSgK1KoMyMjXu0AAOwE1QCM2bUbgUdu9sUv9b6n8VLZ/1SEcWPdXXrTjND2o15qPPSL4voEJ0reGevIllZmYAXgarqnePYs0CS7uqoE8O30=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=e2vlqby9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="e2vlqby9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B89E9C2BCB7
	for <ddprobe@lists.linux.dev>; Mon, 18 May 2026 11:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779104433;
	bh=OtU7zHMq/zyl6e0fIkeCgblodzdvZjLscQxFs9b1js0=;
	h=To:Subject:From:Date:From;
	b=e2vlqby9Zh/9Y34l59osCCQS4uXwQocqvP43oc6rF2qGu0yHopSTAOW7fn202BsML
	 d7D10Mqx3bKoZwRIQq6rVbW/jVPsc0HrRNeB8utVRjIIERqSNyc+H/SBkvZL3Q/ip/
	 LHJMcbVfPHmNtp8G3P6GxYYy6TbcUaKfib+s7mMufj+RGo7SKm1/Qm5VonGtUGyfIh
	 jTlhPZ+SKnP66PNJhP41azYg9pfWsJO58KxA9hNbOafE/AT/7hzCZYQnfdJe6Br49O
	 kgwzie5QJaldog+LV/KiJ6rj5qlc3iHKCBtVvCkzz15BA+KI1Vt1La8CaiahXiZxQ7
	 kLWcZylnOPtHw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAAF6CD4F3C
	for <ddprobe@lists.linux.dev>; Mon, 18 May 2026 11:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177910443369.1393.1559761112928062525.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6303a19d0878bcbd47860df93a7ef1a1d29298b07febb261839000f293797e91
Date: Mon, 18 May 2026 11:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779104433
