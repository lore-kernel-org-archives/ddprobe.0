Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 60985357CEA
	for <ddprobe@lists.linux.dev>; Fri, 11 Sep 2026 04:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789101034; cv=none; b=ZcXawmaxgoG8xAjqd/1fK6/MyyM/EIYtjIAQODNGx8fBrDlb01L6W2sb7lxW6T0Bn+5xsf7zGN/4icAiI9rUJZLQpEQ6TU4xeg8/aZiUUEksNjKuHhAdGUJi4nuUKo8FxuP0NmaV4C2ZlAi05os+4NY5qkoMkgf/3zT3/XXw3aE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789101034; c=relaxed/simple;
	bh=gOal8CWnKn5ZSlFq9KJudqLt3/QWkBPuaO/QOfjK4EU=;
	h=To:Subject:From:Message-Id:Date; b=EpFAPXxt8ooq+iJJvDgPbXkqdAxIQgM+fLmK8OwxSMGEOrAihkrebLKlDUBEyXQfFBVLNE78bHvxnOcE9OvBpDHEAsr0xlGjX6m5HVe+S5GCtjaYV7UsTnDbDqwhbES2DWHa6KC0yjRgcas0os0/tR8+GzxT10eIJBCbb+5RLHE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ctFOpizj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ctFOpizj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DD6DDC2BCB8
	for <ddprobe@lists.linux.dev>; Fri, 11 Sep 2026 04:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789101033;
	bh=gOal8CWnKn5ZSlFq9KJudqLt3/QWkBPuaO/QOfjK4EU=;
	h=To:Subject:From:Date:From;
	b=ctFOpizjRipxJ1vrV7vyOgg6Jeg0nDxU91ktwzGUpg+pBFOClhozDt3ofIauQi0Wc
	 c9RnijTGlcsKhAGXwMSveBZ5oQvTsk1IUi8axbkHrP4OAIUGd111y1rIkWsvbPbJKF
	 QlVahDm/gemnwNQRnc+rL7y+6/mpavmWmTXKr44Ls44sNuD/uSnZ4zx6RbOXf8TJsi
	 p3PCZ7WfcHnYPUkjgaAHoyT69av9hpmGMqiBPcPwcf9ROz1+eh0KQzGcXh9fsJhlfq
	 diD24VF0cdlnCDyo/GunELf92fJz0cys7i5pnJuOHwgr+iHDp++Od0DQ39XqN/0gLt
	 CSlm9Gtm83lqA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B7320C88E42
	for <ddprobe@lists.linux.dev>; Fri, 11 Sep 2026 04:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178910103369.15407.211661647585328901.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f369a3b4b96b27f9ee26f4da6e9e2ae089fb4d612bb267ad1386df6cc1a59bc8
Date: Fri, 11 Sep 2026 04:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789101033
