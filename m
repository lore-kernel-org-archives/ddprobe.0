Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 427F21F94D
	for <ddprobe@lists.linux.dev>; Sun,  1 Dec 2024 23:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733096154; cv=none; b=iGHY0CAwtPfBrV/S3Wmhu2BRdZEzKAgoCv2OIHMoN9WhC/Hao1MBf98ltRYjzCfmkSmrO4Zkm0CrvEW2SPplJOU6ELj8NaPKfXGbQD0KEECZCGo9JI9eygCK3XIKR/DYzhdKcM/x6kyxZYW4DdoIqklnb7kWEYkRhZQDoCu0GSQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733096154; c=relaxed/simple;
	bh=6uJHJnncPYAZ1N170B8HanpedaI75+4T4DgkDxjajF8=;
	h=To:Subject:From:Message-Id:Date; b=G8rdaLG+LbEfJCgjJpsttqdJXIG9SvNEFo/BnC4sEBXrfL/wa/KsBTiTtKG1PkTIW+gHociftCwq1zU7g0bER5X4xDN1VGIGK/1vldxjonxsALf4qhSD6qP6186mSMfZ0vRBXOIfh3UnZfmH2ADByKxODzsBlBmH8e0PH6J1kCo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Pig1RHJn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Pig1RHJn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B659CC4CECF
	for <ddprobe@lists.linux.dev>; Sun,  1 Dec 2024 23:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733096153;
	bh=6uJHJnncPYAZ1N170B8HanpedaI75+4T4DgkDxjajF8=;
	h=To:Subject:From:Date:From;
	b=Pig1RHJn2VNHmmqQ9qpP1wXyr27jYQLC3JrqlypkCs8aP4HAzL+fJbSMkfVZVmrW3
	 d/z7egZrobuLWPbNNxaRojzZ8evQYnf9a6zY90I2yFUY+KloRVxMyKoatDHcwzdbxZ
	 tBqXEYXopIbvVBaaoKwQy0dSKjKoyqpWedXFhKufkgoQ1pQrdu6YoBEH7q9JVQ6FXV
	 keOLdH66zKeNJRmSPopMxrKAqF4RSZgCRoDVbOugDuAD9PnHKXase02o5HUttLT0CQ
	 xwdhSyLLJ+pGFlDGeOTuDiCt3t84OvO/VxkFPr4bjGhsjhpCzHVpAw4gJsqdt9iBzB
	 2/W9Wt7US0shw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9AF78D4978D
	for <ddprobe@lists.linux.dev>; Sun,  1 Dec 2024 23:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173309615360.18351.1642282682576989982.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a8e28499ffcdc7421b41d89bc8c09bad7ad34a0768d0108a2bf3066dc6030031
Date: Sun, 01 Dec 2024 23:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733096153
