Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 59C4B30CD82
	for <ddprobe@lists.linux.dev>; Mon, 10 Aug 2026 01:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786324834; cv=none; b=X/isRLJbSxyzx3HKo+uMaHQw2lx0lQ6eoDWxZR91e/hoif7vYAubfSm1pDgxFQbVSFsj9ru3sFlnKZnQsXzg1n5royDXGFDweGPbQJuk5+w7hwMA2WjBoDItbCj1OMYrIhSl1uvYjkZ2zeoiITl6o7NXUtJLIsxrIOfCRxX+FGU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786324834; c=relaxed/simple;
	bh=XukJWT2puHbXRk0l63MjAMJCwA4MY6+RxwEyqMC3fUs=;
	h=To:Subject:From:Message-Id:Date; b=cQu6JflUEa2wsCe9jMalMpyHiXkGLZiSUHqFj7v1V4kssDclJJqdr93l6wptKjAkillArele5XtDZPtEeYKmaC9annIhuN72brWryaCrGwHiR1CD8gusuDMgFzBwRTMiiJhNAMPMqmVeWSb3ZT7iGfT8DCLamtpsmjeaK5VYrMg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HbJ02Mwy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HbJ02Mwy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8177C2BCB9
	for <ddprobe@lists.linux.dev>; Mon, 10 Aug 2026 01:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786324833;
	bh=XukJWT2puHbXRk0l63MjAMJCwA4MY6+RxwEyqMC3fUs=;
	h=To:Subject:From:Date:From;
	b=HbJ02MwyNuo5+P0A3kfIjN645ca4WZFE/Ps04xzrnh4l/clF3OUBg2yK/a+Ol94zx
	 ISRvqUGDi1wcla5lGVt6E+nywOBIPq68S5brMG4XBLxJnvy24HbXVk6+wgYR4ZJxDr
	 8/q83yX8huy8fQMswyseMIAXMa9pchPjw95F6OyUiKQdmXptFOgarMnlHvTHH3F6Iy
	 eX4ewPS5fg9cHONFBG3K93ip/52ls0NVQmtVfcQ+J1X658zITx4OJB6gaQX5eE/o7R
	 oTejDTWnoxUxWavgKOfjHabUQDl47NOf3mbWwkRWlO+da6DcOZy6Kps0MvVe1qNM5m
	 xzREvInFVldcg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B4519C5AD4E
	for <ddprobe@lists.linux.dev>; Mon, 10 Aug 2026 01:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178632483370.10368.3285139204213010814.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 999ee945a6304432b18b3ba5360a1353c3580d85ccb844791bd8ff99772a2e53
Date: Mon, 10 Aug 2026 01:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786324833
