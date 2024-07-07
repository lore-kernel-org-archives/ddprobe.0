Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 68FD84405
	for <ddprobe@lists.linux.dev>; Sun,  7 Jul 2024 04:16:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720325783; cv=none; b=SA1jQx2y5oLocqA0DRY+60WoBzYlBFhUbLCfxWheKXwYL8hNa//nVw2S3gPJAZLu0k32TLso0RjgD2TcHICtVEUuvUXhcJNdg011yO/O6a5n7EqjbNQHZ3Cou92dJIowL0dCxLMyuitnZNvgmRHhW2mZNNTO00nlVR3XpVPyIow=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720325783; c=relaxed/simple;
	bh=k7EqCxwN8FG/1PKhvAdTvmnwpqKdU7YBAMFVM0SXVqQ=;
	h=To:Subject:From:Message-Id:Date; b=cI8x27a2iPYfkfizCQ21umrt/DGYZdOCBUrD0x6+80zXJ975PNs3COdcwkC+v/MU7+c95vsR3QEBEnNqkOWDiq0XuYfAe5YB/iTcKRn65bRJct8qgzJCqQNR5dZmThZ/bgYABOdjLA85OGQS14VJta5Cy6iPkNdZaOpe6iClEi4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aLKcE/4R; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aLKcE/4R"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DFD39C4AF07
	for <ddprobe@lists.linux.dev>; Sun,  7 Jul 2024 04:16:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720325782;
	bh=k7EqCxwN8FG/1PKhvAdTvmnwpqKdU7YBAMFVM0SXVqQ=;
	h=To:Subject:From:Date:From;
	b=aLKcE/4RjmcmFN5TcPV3muX1lHNY0yB07cnc8oMkXaCwk04/yyDACZZZFK+ia9hBx
	 3UmLGie2OIEk98AIjAGg2WHxIYeHZMgrUODbovAJpVH1sVmx+2fZ2SuLum3eg6Aflk
	 IZe1TFB6En9GBsEOCz7Fsd8ayPCEnvNlnhowN3f+E2PqXKqahOtx7/UGE6Nf1I/EML
	 RuxlvpCjLdavUCayuXD+Nt8tWdZ/iQN6gbkVXKEizleu7YmqIHxl2HKH+VEUJ8Y2/z
	 hiV/m8c24rY7N7qvie6pBSNqFqCmXzRmybirLbqL+g2oGHUFFdBx5ye9yLufZtOId6
	 HGYvrVviGKgYQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C53B0C30653
	for <ddprobe@lists.linux.dev>; Sun,  7 Jul 2024 04:16:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172032578278.29533.13291767274646341825.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b48a97c34350bb4128f87d4468bc7af740813b18c021e506305519f5c3f373df
Date: Sun, 07 Jul 2024 04:16:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720325782
