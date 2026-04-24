Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25D2C1D6BB
	for <ddprobe@lists.linux.dev>; Fri, 24 Apr 2026 12:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777032454; cv=none; b=bUDEIS/ZVvGaEtlWn5etJpahrDN7YqqUdzbp9UMdGD7KkX67JYIP2hR5IP5K9XO/4qxG9Jae8pfC5qZgsHHAEyb0cLvqD7Occu/Ji8e39+InSbw8eJdZC1n/em5VIMUIkG0JAnX61SVvWsV0uXJ1HocuvKuidoX5sy+m7gzRBYk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777032454; c=relaxed/simple;
	bh=NhPJAnr9mENfsnPFSSlXCcSUbSWa8ro3piLVnxXyits=;
	h=To:Subject:From:Message-Id:Date; b=gzgYUEIo5DNRjPT5A19efIyUS+Km4OdDQK32AK+sUpzlUO9cN+6HVvHNI2bezFIHZMy+8VARJr2UWfd/j48Uyk8A13JTVZE8I7G770jcZJ8Zr5icNwH/5zEdt1R9cdu59gW2ISajTKmWesHCza0/y3pVpFXBlIDBp2MfDBKAx6E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FnmCAXU3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FnmCAXU3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BCF36C19425
	for <ddprobe@lists.linux.dev>; Fri, 24 Apr 2026 12:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777032453;
	bh=NhPJAnr9mENfsnPFSSlXCcSUbSWa8ro3piLVnxXyits=;
	h=To:Subject:From:Date:From;
	b=FnmCAXU3MctT9eLQmT0YsZgMYjgKxBULpF05GAkGmioYpgCuLclEjpv4/XgSGDESS
	 jaRgG2qZ8zXeuUUwApT7kLPwbOwygF5CFiDhpyUF5VXvXSr4YyrixBXkmFkAo3a3i+
	 TjiKSQ6EJR8XxBFmJqJ6G8rEfBOINBlKzC02IVwnolBduBuqXzIyiX8iIjecSBqMcx
	 dWyba860smSW/tIcDPkHHW3cWXDhYR0LHjZRYIMNPX+UpYws1B1IjmeRxOfyRjoX68
	 /sfN83wFrAVldRIXQMyQMJs5fAC8kI+CITSa2mM1egHGZtdDQSxywezykrnr6y3g/Z
	 Ddk9wOlSJ11+Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAE30FE51FE
	for <ddprobe@lists.linux.dev>; Fri, 24 Apr 2026 12:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177703245369.27519.6674352512457823115.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8f95bee1f7751fbef8c74af7c8e5000e0481117455fdc76e0742dc9d6a90ad99
Date: Fri, 24 Apr 2026 12:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777032453
