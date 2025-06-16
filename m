Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 259091EFFB8
	for <ddprobe@lists.linux.dev>; Mon, 16 Jun 2025 10:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750069195; cv=none; b=KUFliuJJykeuSXrsKzYFNNlR0VAV7jzh0wwyHeCzdgb4khN5F+SMBxutRei9nrHQntDnmpzW4+MJszqXJeeuBLVcSw0b2UWKeG1U4MU59M4zylq/O5+UMBrc+2Pkgr5VEHu3ZLGkxFfYCHoqx1XD8VSS3Yc9ED39O+9oTr0iVis=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750069195; c=relaxed/simple;
	bh=UG/kDc7lWgUeYs+sM5kGjKMJvK0JPojVhTTXKzGhAuM=;
	h=To:Subject:From:Message-Id:Date; b=MStb13pwMGADDaCSiQ8p+4UN7n8ft8XSiJlhTBC4Db1r9496N/wDc0pgAowyJBShQi5ffhpivdTmBeipWo4C2G69fT++mt0Blx/IFy9d5PJ5EkrNdjGBatu3fe8ZvxwJgLgPPSR+LYjJkEpn6umIFzWu2XXi/WtjV/WYU43W4yo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IEpPQH/f; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IEpPQH/f"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABD89C4CEEA
	for <ddprobe@lists.linux.dev>; Mon, 16 Jun 2025 10:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750069193;
	bh=UG/kDc7lWgUeYs+sM5kGjKMJvK0JPojVhTTXKzGhAuM=;
	h=To:Subject:From:Date:From;
	b=IEpPQH/fBO+r8GKbjxe3di9SX2ZhOWA5VuSmDVsYI7r0eLopdZVxz5G4xgqQAZxBH
	 hDA/SZ682pEG7IQZcpkrocRgDEJQhMw/7lHzJ4Huix7UkndDNveITTkyWb1gRN/2zv
	 Q1evd+DF6jPwVAJaMhdPUW/O9TZEy/bvKdF4Z/C8/stugTVwwrCr2Gwuy2WN0WXMlU
	 NG7stEBHy2LrdT9lJAzXMxOKrjKWmahZaSqY3KN0W99Hc6DAq4ZGkhH8ZdOE3lYQvx
	 fsDxkevZTic95PosRpycxrH/m+jnOYFbCldgxzVIc+1hjMFAyr3b92Zthe1NkodsiK
	 7ejxW/ukUKU0g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99614C71135
	for <ddprobe@lists.linux.dev>; Mon, 16 Jun 2025 10:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175006919361.30464.349549758638275477.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9dc53f1c03eb3798c27470cf7732542b4fe46f09adb03da29f16be01e8e1b5e0
Date: Mon, 16 Jun 2025 10:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750069193
