Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 629982C181
	for <ddprobe@lists.linux.dev>; Sat, 25 Jul 2026 13:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784987434; cv=none; b=sHNCpbEpkVQzUtMo3NV2H9MVxEiTdPAoi/j5xhgRurYhXoZu2FU9vUlCGdiqWnd5+zYhTP5QL8PxEH/buFGLrIITts4QsgVrxyMILTzazpf7YW1u5+oH6mVLghxfFOhnrEWSFIv85jGHBXrMg3n4xG0QqCq830qGRpscWyKhdDE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784987434; c=relaxed/simple;
	bh=otISA4uPClIvyVfyQX46nTa3Y+q02gB00mYp1qrpqgY=;
	h=To:Subject:From:Message-Id:Date; b=g54SXmo1nOpvlkWe/al0PV6LAti6pCbtZO5tt1ydndWon8c0gWxGDrQBtU5kjCMfVzHmL7pJpxZlRuCeFM20J1T6azx+WV311V+q5I7t/LT4l9SIrKHIhipJe7x3sZll9wPayz+wJ5jlf4tpBQC2iC/IzX+YSRjfMwzP8RhpSDU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=scjYof2L; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="scjYof2L"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0BEBC2BCB8
	for <ddprobe@lists.linux.dev>; Sat, 25 Jul 2026 13:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784987433;
	bh=otISA4uPClIvyVfyQX46nTa3Y+q02gB00mYp1qrpqgY=;
	h=To:Subject:From:Date:From;
	b=scjYof2L6SFL9t8litfMLidXjF4EidusDDKjDrVFsoOM9pAancrkmu1uPxL4OfZvS
	 CMZQ2EVe3zsmJ179VtgFWfdWoNetHMrbGzK04FE3G+S5ulUFc4KF+/GzNslL4Cwam5
	 L+5voIC5kCSLhOzaFHCSHK0iJzqbnZuYBhXBlG8kxMKOK+WhCxgH6tVAfxns0lJGOG
	 /sdLMwPtKPZI0pHS05Aq8PbecxjhaErNERCD7heTPcjYf/WquU2TSJP1oW1FYQ35/M
	 g+A7xVK1ilqiaGewyv4xirtRogNmYpphySolGUIQGUPVte1uXbJS/eZdYx7nP7a/5l
	 oT9cC2G1daRsQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEC04C531C9
	for <ddprobe@lists.linux.dev>; Sat, 25 Jul 2026 13:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178498743368.15988.9800289406129977963.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1486504f95c4a39b6a7ac14832cc90ba4472689cf922cfc75d41ff0cc30416b3
Date: Sat, 25 Jul 2026 13:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784987433
