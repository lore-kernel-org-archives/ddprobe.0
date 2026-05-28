Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3AAE72F691F
	for <ddprobe@lists.linux.dev>; Thu, 28 May 2026 07:22:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779952954; cv=none; b=elPDtlHGzIJxnJvwmPkGQR4X9u9y4s9eX0XGJfQIkihr9tIM4MAYWGCCUYVWrEtitAew3z++jJYqNJT5Rmh1GSXtWE6s0gg8E3GUA0r1ZYc0kfBpgYt6dJ01UWbC5lvD9Wh8RbONAdibwFcmHgHoGZKDWUK2A+JpmE+U5j+piFo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779952954; c=relaxed/simple;
	bh=jQwqtF3qdjjJZxF9uiWo6pH6FJzVCMb9UY9mTkbbPoA=;
	h=To:Subject:From:Message-Id:Date; b=lJSTyBdp5NP4Lq5aBljGZfUHtuJg4+oieZHweneH3sK0IGrkMVsy4h18YuPjugz2Hl95l5nHqaQzKktWSlB25SD7KBgLTNObeIKqjh2LHFL7GtL9cxsCexL6qvSE7PYXNvZBPqJ3EqAdh8U/oYtOviBe91OnJo8D/S9A7I4HMv4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=W1/DwP9k; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="W1/DwP9k"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C390EC2BCB4
	for <ddprobe@lists.linux.dev>; Thu, 28 May 2026 07:22:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779952953;
	bh=jQwqtF3qdjjJZxF9uiWo6pH6FJzVCMb9UY9mTkbbPoA=;
	h=To:Subject:From:Date:From;
	b=W1/DwP9kCQc3nm/znAQQNQxIpBKRN8gzgxR/eptJt1Z1Nfg/xYyk/uq+p4/pMYpSY
	 tVsZFD8k2BhMRndsEtcrwV/Dhq6yvOPgQLxvywkdHEjxSDc38bjZnLOv3+8kWnJ7w1
	 cbz+xJOIcyhnk560E9Vqw09DHvty8EWvhKQ6/o9YOPHb6COeNxyJg7PzZGDyuT6TNR
	 kQWTdpI01S74mjg2iwV39fspiqyP+5WjL9r9ZFnlMVbvQ5Ejzb6GQ1vSC4P+lDcaxV
	 ii/Hxk4y+jt8zHa6T58vOgZ4ZjKYPenA+zBVcUiAZPKR4iELEP8lgdv4+hODo7XZ7L
	 juxM7ufes8CcA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABB67CD5BD1
	for <ddprobe@lists.linux.dev>; Thu, 28 May 2026 07:22:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177995295369.28800.3523335648699138458.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e672e47eb189506ec9723a9f664f6d9d35a11b7b33e36c9a63ea9f38b7e6fed0
Date: Thu, 28 May 2026 07:22:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779952953
