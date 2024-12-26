Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C8F314A0A8
	for <ddprobe@lists.linux.dev>; Thu, 26 Dec 2024 08:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735202754; cv=none; b=aAx0VcmZm55BBlQIIurCdsWZ4quYGMEOuKYIPanYDF7KEVpPDORwjzGPMV1RQi6Hrp7zfOsKPSJ6jMxJD92bA1VMGPD0LpxD69hIOTQ4lnJs7XjlA4J3WJPfXwBHe9gGTFoPK7G6fH6Pa1H3tLjWrA4EL3yYkpTA8856c+UeBmM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735202754; c=relaxed/simple;
	bh=VB0ilPf3hhvRmeYSEk5mVqePrqPzT4aypzOXYLq02Cs=;
	h=To:Subject:From:Message-Id:Date; b=gNX1bgP1U9klmc/Of4ffnPUDxfeDLCGqILXDBSskYUXpwWi7fBAODPnPObtV2GQzExOmMuKSJRjJ7VbTXvfwpNHOmERhNvhkVKOVvPVCKqOe6G22vdPmm7zjD2mAQXBdvxeWOzXd268zxLoi9DEsh/kkiGMPlM4n1pByLYV8v+8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QoXHSeMv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QoXHSeMv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1E7AC4CED1
	for <ddprobe@lists.linux.dev>; Thu, 26 Dec 2024 08:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735202753;
	bh=VB0ilPf3hhvRmeYSEk5mVqePrqPzT4aypzOXYLq02Cs=;
	h=To:Subject:From:Date:From;
	b=QoXHSeMv9BDjXkJn6lT2jUnbGb2AyjcLEqIT/q0YRh6RkgN5og2ZA9Y3SuQeZeIoC
	 h1T9NzAGBBf3qPABi9eadTxv2w5XGjXCc07bFj//yFl/5FPgeddl65QzKAjZWYbkxR
	 x2ivwNddEFIjc6Ec3CL8vZmJhwqe4uqfh55Cw3R0OfmLUsI34ZREpMqopTr0x6ZJQ6
	 1c1SDLsS4Atu9ZcrB0f+Mq09dUIXzktJLDPgYHZaHvW7p9haDV4Vg1j3rZAeV8lUzN
	 Iz0bU/EJbHXiAyrTrn9aJw5wgZSYmP1J4hLfnsIuYDh+ajtj8xqaP+w38VxTmyJ4MA
	 7P4Yd/uswx2hQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B9B9E77188
	for <ddprobe@lists.linux.dev>; Thu, 26 Dec 2024 08:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173520275362.1446.8174158015429747020.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c5decc9a19227ed19350f8dbadb9deced2a00673551e010a566f4ba212daa6d6
Date: Thu, 26 Dec 2024 08:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735202753
