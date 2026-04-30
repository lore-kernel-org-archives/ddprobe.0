Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CC202C236B
	for <ddprobe@lists.linux.dev>; Thu, 30 Apr 2026 18:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777572454; cv=none; b=Qd+DG59BZbYsJCovjTc22He0oz3Cr51Gk7lsyWqebZm5XDcCfs5E9Ab8eh0jJ2mWPsZisTjrVHxJ3GcLxKKENmH9zeR9JGk+fChKETKvLTwUTKed9azzZN8ZI9cS/j2xd4Jz+urwKSF7xs2MU6BN9wfRmv+33KlP9qHYua0/eHo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777572454; c=relaxed/simple;
	bh=kBgnmlxFokbf73o9Skd6X4Nf13oYCc9q6JTFXR7VjvU=;
	h=To:Subject:From:Message-Id:Date; b=JZo2rM5YbE98X111oKJXQGm0KBnPYOwcBcx4BRTBd1iyi45CTZGupzi1D7x9gUFUawqt0oYt9ARlIdsveJasuWI+KWBa5Xj00Fizvs1EJOF9ehG7yITiQboJOwPfiSRryHIHdmK3I9cnwmjHkeFf5yrIKmYjX7fTSMmsvsqaH5I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZlF2brZT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZlF2brZT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB20DC2BCB3
	for <ddprobe@lists.linux.dev>; Thu, 30 Apr 2026 18:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777572453;
	bh=kBgnmlxFokbf73o9Skd6X4Nf13oYCc9q6JTFXR7VjvU=;
	h=To:Subject:From:Date:From;
	b=ZlF2brZT7PE7FKH/bTMHDjlqSK2Y8PEYbSqP1OGPEo47RKAGPRZciHHCDmkCqRAQs
	 YcQvmQT5/yrhFySx++kaWHWsd3r/TgmRfd8KKOPR7My79Zzo7I5duorEoTPtXzNYQv
	 iOPvOURst8m6XONr2hRz9Vq3SgisrJwQVVk9Q0GJtDVOUmDNfsPR9xGNwjkjNPhDC3
	 IwHCfvZeXbrXo6OZSzIfBA5J+ihV8+SyofUZzMZL43TS3mrQXwm3yHNZKbRXOYWra6
	 aEHp0g+4JabxpnjFt12C5ceaw/b9/42HnLzI1+TGbKbA1GwkZQT9QCkF1PQME6PtTB
	 /KMgJRbJs/K8w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9450FF8873
	for <ddprobe@lists.linux.dev>; Thu, 30 Apr 2026 18:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177757245368.2763.371698817359524377.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 02ece3c8897d1021858814a7a3804f0554e5e02fe44c38de6f0d527bfd0ce238
Date: Thu, 30 Apr 2026 18:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777572453
