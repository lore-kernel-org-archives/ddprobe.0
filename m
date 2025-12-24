Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D196914AD20
	for <ddprobe@lists.linux.dev>; Wed, 24 Dec 2025 22:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766616833; cv=none; b=FKgcdnoUW1z9ixHtyIzNG/oh4qObBuhiMMp/z169EJ0jx6CoLL+FC6DuyuceVsFpauT5eZ12352ycirGpo40pOM1OR82fzAf1sc+9Hjp8WIIEtinVlWJOodxeNry7H3Hu2jk0/7CYnvvYUpDy9PMuPnikaLLOSqQXqj0pLD4fno=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766616833; c=relaxed/simple;
	bh=Hj8Z6WRAp2gY2tfsdITju04XevweM/LmexSNQtSMWx0=;
	h=To:Subject:From:Message-Id:Date; b=P2WUWuwk4AdFTdL6GPGxLEUigAtl538sAWmtgR6cbZ1vDRtR+ph9JSwYbknVbukLsXXrAiZk5QciZr+Vcmgzix54z/9XvrLjH/HSKPeO7V+HyHXvLU2Ge5pUSj9aGLikm/fmgKoyZ1sZTqoSgpeb1zRDdJhZIL7LJuY61SS7460=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=D3ayUWBr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="D3ayUWBr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A613EC4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 24 Dec 2025 22:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766616833;
	bh=Hj8Z6WRAp2gY2tfsdITju04XevweM/LmexSNQtSMWx0=;
	h=To:Subject:From:Date:From;
	b=D3ayUWBrS6pcvOsgZGlnVTtLtgSXFozKp/KE8iKfB63PAKiEzUEZdjIqqwM0a1SQ/
	 XSxJybOW/8e/RLK6AaId1H9SUCS4R/Kowcu3OFIHRYO+xPVa8/I6c/KGzReG/vq+Jz
	 6tibDN7xeXciTbfweEi6cCDToD45iMBnhzM9IxlMyi5hoMqjN07mQncI03++NKIpgZ
	 pjKsLVSygRaYAfsGVrG+L4iaP6nZXcZhVNz1eKE2yKN0zBs6ryiRNyT88AbcPYq6on
	 YarsEdwdKxqF24uvOt+GKtVbRFh0Txd89ROmwc+wTccLZgrnxUofR9x2j97Nhmu2n8
	 DTd+YkrFzz6Dw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 926B7E7849C
	for <ddprobe@lists.linux.dev>; Wed, 24 Dec 2025 22:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176661683358.30603.12328135659725008511.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 840e7caf8b5609dda8695f813bcb41d7f52cc41255de37993f435301c7c0b162
Date: Wed, 24 Dec 2025 22:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766616833
