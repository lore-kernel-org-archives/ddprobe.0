Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1517E379C23
	for <ddprobe@lists.linux.dev>; Fri, 22 May 2026 23:52:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779493954; cv=none; b=PFF1EM4dq4h8jginFz8JFXFhTqSUbfYbH9MmhkR3hBoRo6ds6GLMuhEJ2nzr/0ajrjd47LOva8XSnJNcbSQfB/v4LX6gUS47qW6LM1/C5+KCe2mqx4hvpLoizT/DVYx48eM3YxCjdUPq489alusiAPrtXIA5vYXfI7Q+oggbKPs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779493954; c=relaxed/simple;
	bh=cbP53IohJKR/U36WVFsLGYtEH2BCASFAwdhWsJwaFjc=;
	h=To:Subject:From:Message-Id:Date; b=Y7yWRp4z6duZSU2TdKF2wiUbAnpMx7CNytGoR/MCyCcrku3+IQCp+h2O9zVRTfLcpE3Gqj6WcREeZnX1RDBuWOts19G0voiIpXyL4CVKFh+SabcmJ50BvxaZV+TqBCSX4oaLTyTC0dMW8z7POOvzV/y8CgGGz/d2NtPD/pL3pHg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=H9Z0dltH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="H9Z0dltH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C6B3FC2BCB3
	for <ddprobe@lists.linux.dev>; Fri, 22 May 2026 23:52:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779493953;
	bh=cbP53IohJKR/U36WVFsLGYtEH2BCASFAwdhWsJwaFjc=;
	h=To:Subject:From:Date:From;
	b=H9Z0dltHp5V1sup0sDug9bYaSKy8yQrUflWGgSWgXOre8NjCly80d3MKYk6j02oY4
	 St1HpfS0Un/ovToOLMAVkwFZWR2EhD0ThBbrnOtSEhvS+avMtriSkTQZnnJ+3uKuK/
	 jmJwbz0vzXUAguDxqlUDwzpZ2rzHlr+mqW7qDBAxAaAVSK+MTP7tEnD01mF6PRJb/V
	 We3uxvRY9d3xLYrESUkYYRXQ7Y/iJgIBnJ7BS5k/bWR1/TjsxfPIA6Qji5I794HW3/
	 C8JFEmyB5cTTMXFwdbDf33wSZ+L7g5KCF6wOzk3CZDqJKwZzc7REJDKMadU0NQ6txl
	 b/xt8HE0WHD9w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC1BBCD5BB3
	for <ddprobe@lists.linux.dev>; Fri, 22 May 2026 23:52:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177949395369.5314.2363034555086386162.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f50ca70f58485d71fbe01b487d144813d6f31b41c17e3e5cb19b83cc7551c8d6
Date: Fri, 22 May 2026 23:52:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779493953
