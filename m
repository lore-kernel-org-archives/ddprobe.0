Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DB1F27472
	for <ddprobe@lists.linux.dev>; Wed, 29 Oct 2025 00:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761696594; cv=none; b=aGys6Kd4tbXPUXBXbQcJ9NZx4+WHS8Ne3f3N/39Piq4nWCGO6sI1rFQ8Gb5axED+cIWujJpjMzfYdfz1FRMA1PiE71eQ4cgCvbCyhOn7+b7BojUD7443X7ljC3YwX3PI8Okzgel9OIbsrJuZ0X3jWkWav+X/UGgHofuLRt1Msaw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761696594; c=relaxed/simple;
	bh=SCOMQJ+/Mi/8ic3+6Q/U1HruUJ/cTa0Hgz79l/usYMs=;
	h=To:Subject:From:Message-Id:Date; b=eNRKIS2zOaTlFXbawxz25Vh5n6NArAPAucYFR/7gZ950sb5VIT3lve6PpPif48Ii9NBbwUc7v9nrEmmP+OckH0txoxLiWyG48busz0WvPwZrna8UIuwkGcEHA729DHksYPhc+QLO1H3gS3i6pm2TrVhR2azdqA99KEIv5tSYcoQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iVoevkpK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iVoevkpK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A13D0C4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 29 Oct 2025 00:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761696593;
	bh=SCOMQJ+/Mi/8ic3+6Q/U1HruUJ/cTa0Hgz79l/usYMs=;
	h=To:Subject:From:Date:From;
	b=iVoevkpKhYXVP8WOyJrxxgf25MWfRS6RVewjtPkPAYapNcqBoqAexvGwd4/teNaYJ
	 ++baAFyXDH5DpSKZlFVf0KDMaPao+L78AdiII53OsMsWT1CbOigMqpHmd8fG+JUGIN
	 nXQWO1JB7zYMTy+hNKgS+JyG+CQ5z4fAtGV7/XKWWiV1/ZOaI7DLOtz7Uq83JAEoS5
	 1clsjRbO2Vfij9hBWO7QLKPTMxuXojLefzXiIs3VAnf5rIqr+86ROwjGU2SIv+gEIh
	 W4o5ACYykmB3e0SutmcvCrXl52JbfaVh5q2qv98wE1rPWRda8kqIOhS7VewcKLIQB4
	 7aT/6fPwdMzOQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9045ACCF9EA
	for <ddprobe@lists.linux.dev>; Wed, 29 Oct 2025 00:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176169659358.13467.18411630145113265042.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1b0e6a45c8a3b89e8ad150745bf20cf44d1d89aeb916f8e720f12dde04388fb2
Date: Wed, 29 Oct 2025 00:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761696593
