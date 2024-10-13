Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2AB4B17C9
	for <ddprobe@lists.linux.dev>; Sun, 13 Oct 2024 01:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728783954; cv=none; b=EfwnlCwwnFL/TZ8dg6syQvt2TU6murFWMvmhGb3vLg7FWrYwOZKyUAoC0fvjXBPNs6RM+lWr/RCxz3wVrQp36C7uzFmnAmEuakoS8dl7zyCbJvQBeQhu/5xJMBemg7qfFZMDaJpz5HCatOA4x8pi71a97qpJ/0qUF9CaGP20/Pg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728783954; c=relaxed/simple;
	bh=UryDGTK1ZSp24cCsgJtXZmYuuY258z8QRtBtNJBS4ag=;
	h=To:Subject:From:Message-Id:Date; b=OEWDsccWwIzu3w6Ax8EJxCgqO5IfQKp07GmjpWlWE8Ehl4UI2ANo5J+PrtymNwGQrnNOTRGHo1D+bB3aaqa49tUOkeW8BvxqZkzz7VPk2L63eD0FWfv7wtBhkZUmalP7BLyhnOxZzhtPzAq0FAOwC0WX+JnQEVeeWb4pA4JsII4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oYej7OgP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oYej7OgP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0E3BC4CEC6
	for <ddprobe@lists.linux.dev>; Sun, 13 Oct 2024 01:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728783953;
	bh=UryDGTK1ZSp24cCsgJtXZmYuuY258z8QRtBtNJBS4ag=;
	h=To:Subject:From:Date:From;
	b=oYej7OgP1hvC6XSD4vfR61xleifYty1ENKxgGBZ/MYUCeTKdEzLY/s43AMaCjl39B
	 CnLAaLNtGLamOgcor5dO1PEhD9I5F6q5HCRm0vrAOxebd/AWV5HW7HpJqI+ZXgmszw
	 TBe07EQQQrYLmuLA793jzmmo55MA5VFkJZIA3j3nKG+VuHHfrnrR+HfD9QVWFqFU59
	 ce4iBQYoHXZs2ha571ugIkuSQGdgMot8D1KVnchLxymqeaBoqlbK7d5FxrAa+cJBPm
	 a77GnDsLnZBZVg+BseK/wtT1AEDZcrKFm4fBPozErq7jRPlqVf/IetOOOfDIhQOWfH
	 d6gsvmjECO/Jw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E68ECF2569
	for <ddprobe@lists.linux.dev>; Sun, 13 Oct 2024 01:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172878395361.23976.13648558634662604011.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 307afaec26938b10bc9fa5b95393c3e514e8bf21346b6e18d9304674fba907e5
Date: Sun, 13 Oct 2024 01:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728783953
