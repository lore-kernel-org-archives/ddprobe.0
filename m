Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E49B253950
	for <ddprobe@lists.linux.dev>; Sat, 28 Feb 2026 01:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772243094; cv=none; b=CezalV+KFR/JNrdh+QtIspYlgPK1QmSQVTeq8DLq2lq5bGONrIETlbBl7RgzIniBS4UTRzTzBCy3MNcSRpQoYj6mT2eocjMGnGI0vQWuy1iHctv12u3fMBQh+74aYtqgi0ll+9bgWLlWE+2Mg1sYCPVxAGmM5tRa/mQPGLfIu+4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772243094; c=relaxed/simple;
	bh=yaGOn52ilk7fnRvWo5/mlDUlIUBd+k2K/pxdIIqnBnc=;
	h=To:Subject:From:Message-Id:Date; b=njSNwKRLRH8glCWwrjz54IDDh9PzKgI5MA+MbsXNVEVXJQN38EZpJroiMyE75Cq/x3Oq+PWCbCk5gePcItpNQSCK3x1w1KQduDErG34hpYU7KgWfnlSyf4vtopC2ImtZoVHba90Vqr+O6dCsTkdiMLk0fScy16NPdXZFDESZdE8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=U/9RpCGB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="U/9RpCGB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A18A8C116C6
	for <ddprobe@lists.linux.dev>; Sat, 28 Feb 2026 01:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772243093;
	bh=yaGOn52ilk7fnRvWo5/mlDUlIUBd+k2K/pxdIIqnBnc=;
	h=To:Subject:From:Date:From;
	b=U/9RpCGBXybxSRUWEt2N7F9lykXAWDJq74UcbJBu922QylqydO3Ccpl0im0oyu5LL
	 0FtqZJZDqvBo7tE6wL0zE3RSQZs/TbqrmPUGj9+rmpPguKSGkgmGYkGKkvkRhOe2SP
	 GI8XLz0EmSgq4I3f2Xfd6ovUVxJL/pZ5iNHBKhQRZOTtUFWhkcActsPTWHvaH72Fo6
	 F04sFlfz0gWui7uQxQ+7J9Y4Ykw4ooH/kd5OHhZS53QbmJH32FbKjYzQfA11cJvMfg
	 VzudRMF7buSZcVlhwJSEkDQxqFl5sZjboQtUnK/DmNXHErbOYi+ro4QattyTIjRtRk
	 Kzf3HEUEz+nBw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 904C01048925
	for <ddprobe@lists.linux.dev>; Sat, 28 Feb 2026 01:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177224309358.25067.8268952657434594533.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8fb25b5e6a0b163ce3c65b70e55fa7da9b03f3efdf5ea37770ea37159dfa77eb
Date: Sat, 28 Feb 2026 01:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772243093
