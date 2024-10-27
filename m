Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DA0D217F3B
	for <ddprobe@lists.linux.dev>; Sun, 27 Oct 2024 04:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730004954; cv=none; b=gYo0o5YmTaBWj5sEGw7AqvrRWaOgk6vRU+6iT2M4tiBspL3IG0p++QPTr95ezclhJQjFQ9n35xKKpUJnlzvnl1+YHqYuDafMwNNXKxBipMzsoxBkXGJT3/RgWB2PgxHhbSWk+XoFV82Vg4UEyILddQrPGG8jHsYpGLZe0/AQrrI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730004954; c=relaxed/simple;
	bh=zAaxBt6yt6nxrNXiHRUlSjqbnTPAD7oVOqbJUfnDMkA=;
	h=To:Subject:From:Message-Id:Date; b=JPYiqLH2DULOWRcoUDHcuuuwHoSiBlQV50/zOFXnPf8Gxd19JCoPiY4HqvbeAZqabKhgpIokrO7C2EhOMnLEum/YsyEjcMgJKLVZjX0VQLpwKpKqR5xU7Qz1j07qRnLojFH9ncUW1ml65TCGnkbqPUUhMyWO1YnZbBQaxH9WmXw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Q6sFSoJN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Q6sFSoJN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7984C4CEC3
	for <ddprobe@lists.linux.dev>; Sun, 27 Oct 2024 04:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730004953;
	bh=zAaxBt6yt6nxrNXiHRUlSjqbnTPAD7oVOqbJUfnDMkA=;
	h=To:Subject:From:Date:From;
	b=Q6sFSoJNQ/6v6sjPCJAb7CNSjUjsB1zZGphhtB7XqJbJkB4i54vptNDPOIsfeKhHf
	 YsZxhoaQfgiVjSoPxp/GWr5hLPUzxDZ6yNOtW/FObE7n7wMg30Mmsji4pNTRdJeRnZ
	 SguFw3zHnBLGi1ZT3BByXAPU/wqYxV181qqYATF0aJmGpsWNwO9lKfSiYhbMJAIBXd
	 la5jyyTekPSBKuLaEHDu4HntqkWnFlKxofArlaFnjB332KCru1I57jHWlWvODxVo+9
	 B+HJgab0jHtfbw5U7ZETJskSDx/SxfHVHek1/iGdSwNd+sUvYkuSDN3iTbgMu93/gN
	 f20i1hjGAsl0A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B653D1039E
	for <ddprobe@lists.linux.dev>; Sun, 27 Oct 2024 04:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173000495360.5706.13356424396323939924.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2b6ed30a7f2f3494006e8b608c5eac05425f5a1fe0c8b55d6437029469dbc377
Date: Sun, 27 Oct 2024 04:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1730004953
