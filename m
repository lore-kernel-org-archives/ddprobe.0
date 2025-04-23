Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3AF3725C825
	for <ddprobe@lists.linux.dev>; Wed, 23 Apr 2025 03:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745378394; cv=none; b=XOlL9z6DM1Ah5z/saZnqFx8wHJ3yO1TAP1Sfjsqwt72F2dQnbH8Gnl4UAnxK3UME3aJxyBfBn2nQf8PODVq+p/GuvQ7VbAbTcMnwx6Lw3frZcPlu56+FaRWX2IujXBtRuIq/+2Epwo6MVj7KZkIyadg6yhCSrfNIBfVAWLSLyzA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745378394; c=relaxed/simple;
	bh=VGWYLFIExF3/9fsDi9OS5F5azjetNFF26c8sf2+mutY=;
	h=To:Subject:From:Message-Id:Date; b=twCuaywHABbNklPeng0WlW74Wp1KxmXohFzslweCzj6prcCEjKch22A5AwU1K8QQ70Q3p5UDRcwy0g4je1GHAcPUxA1Qw/tunsCW0vyWylKpogVcy9ZXp5w2ywKTjlxIwhAYgwx4WRAbioZtw3/Erd3QgvMYjB48IAQRgPwDPqA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=quVzaj0c; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="quVzaj0c"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2DE0C4CEE9
	for <ddprobe@lists.linux.dev>; Wed, 23 Apr 2025 03:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745378393;
	bh=VGWYLFIExF3/9fsDi9OS5F5azjetNFF26c8sf2+mutY=;
	h=To:Subject:From:Date:From;
	b=quVzaj0cX287i09H7uJ78gQVA/KElbe4qXJTEdmjn5Xv3aRwRVJNi+T2mWNkj2g34
	 ztV9F7Cdnbd4V32WkIo8IcnqkKtrKY7TGWRO0ZvZ8vdlsEZhRkLUAmGtK8mcB5tE3K
	 q6JP+EmcWAmG1MV3ewDAcg4dk0HeYe9SSp/lKB5NcRWLmEvXnPmgfMQLRdZa2Y5qFe
	 nnGGUtaZr66MysOqKTQIjjVrU+8g+phECf2pJ4oHVdxlp5VRmV9/pLg6R82wl3PCir
	 OSyWPu7EwnrHaiJLstB9MOs6cv7ot/8X6o+R2FliB9AWtuzq3joy4Ub6TXuO+Zujlf
	 rb/6SL8d3bnsg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EC1FC369C2
	for <ddprobe@lists.linux.dev>; Wed, 23 Apr 2025 03:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174537839357.896.7946351084387368788.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3ce80222aab3084d1d9494aea86f6548ed8312613889de5a1df7ee8ea0f3ea46
Date: Wed, 23 Apr 2025 03:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745378393
