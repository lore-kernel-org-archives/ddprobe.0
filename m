Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F1DF26F2BE
	for <ddprobe@lists.linux.dev>; Thu, 23 Jul 2026 01:49:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784771374; cv=none; b=s3iNCXkZRzCcQIU25ebadLeLDve1ABrb9hGxv+s6yQOnoTF7GpoMMZU6jkOQ6QQ/GoTF2P9t0yDG6g8P0Hw+OCHzjPb52YnDFaMLrrB8Zb58Jkp2pnXyLK5XjSYMwh1qjCCQnk/zHhkqQcwVu9+V+Kt7I2JaZJtRcfoaezgts+s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784771374; c=relaxed/simple;
	bh=/TWnkyqWUgGfrK6wqT8MrFsOQKuJ0AdvvsD/03uhBz8=;
	h=To:Subject:From:Message-Id:Date; b=YWovcGr0mw8ObIXa9siv9dSVQHqBnU2swDCvVLpccMOUczI5La/sLpFJU4/U+Sz/8wxO9U2WxvUdjHmf2HPjAdJaL3cOeNyPdsZEGBqS85/v1FDXp5h3YLO2WpY/Vz0ovDikUSv9VgyW4ddfBDZkrVwdIrEeORbYjRndmBA7+S4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=L5etjPHR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="L5etjPHR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DF786C2BCB3
	for <ddprobe@lists.linux.dev>; Thu, 23 Jul 2026 01:49:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784771373;
	bh=/TWnkyqWUgGfrK6wqT8MrFsOQKuJ0AdvvsD/03uhBz8=;
	h=To:Subject:From:Date:From;
	b=L5etjPHRDLMkgV3OqKQiXSqDZH1fSRlXjYZY9y9xwC8VAjqnzcHtSHg/TKFhy/2aN
	 hqcvUr2HOFsuZsKrMTYJw2XUDg4NPRZg6rMHELMKDMRd9gfL7AWV6RuO7p3CCUV/Zn
	 QvNMW18eHyTgmzB723+SkLQU7dqWf90E1Lx9ZVWDADL4r2FA8smoAZUS55Efxw0ziW
	 sRJ6q/EFFa3FEveZd/5ueoAKIpBk2I70q+3s+1REeVrwryu6bPj9pos6JkTTaxQgUG
	 wHNqO09RhhU4h1pJLLe5UttSuKBkw7bcBLoFWBYlqeQDPEPc/+maI5v1PLTMkmBjTs
	 1s5nQx9YePN0A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B7684C44536
	for <ddprobe@lists.linux.dev>; Thu, 23 Jul 2026 01:49:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178477137373.16754.921689510669207031.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7f2987b661678570f3606243d7d46658a48be40e0eda043518488f0ab0e250e8
Date: Thu, 23 Jul 2026 01:49:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784771373
