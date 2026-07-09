Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C2E930D407
	for <ddprobe@lists.linux.dev>; Thu,  9 Jul 2026 07:48:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783583314; cv=none; b=PXQ3yvutcG8wy4HCrg8Y5JGtzcQfQxpo2xg/lWXNLQSO6MkKFbhBPPF/4l/54Y6SzD+6+ZolEIkiZvtKZBIGlS5dVF5AeuoLF9JOz+L5eWn0kwersACG/iJSHotaoLIBQV5x+RE3eV1ynO34rhB6Kmc1YDjPgK4dihtXigNvNVc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783583314; c=relaxed/simple;
	bh=j2A9LlQza2ADkUu8xA72T4xnJ8EK8JvfC0sBzPqGsLk=;
	h=To:Subject:From:Message-Id:Date; b=AUwdjusy8gyLyw3PBrrorM5kqSRJplU5+HvtUK4VY3H49RjEVHwuCSWWBf3zfmhsmVyqV54F4inuCeL6yigdMz2R4RjEfTeMM5SU6Pi7E3AnZhjPM25CPFvNdzZA+MybWk5AtCaoSIkcB4Hlj0BbtqgT79zRrLe3p9bFN4DeFTs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bbMg7AKV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bbMg7AKV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8BF8C2BCB7
	for <ddprobe@lists.linux.dev>; Thu,  9 Jul 2026 07:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783583313;
	bh=j2A9LlQza2ADkUu8xA72T4xnJ8EK8JvfC0sBzPqGsLk=;
	h=To:Subject:From:Date:From;
	b=bbMg7AKVFsV6tKtZ1Yv8gGiSjZwLy9PYFMxjavckXBffwyCjrq+3XpCGbIYQ4UVB3
	 u2KTJYIZFNXizphQUhGw2UdcC4YNa4nwRmEKrR/PBhbF0FZREFQVBN9DvOjEN+XzIo
	 qcuTTD4sdJ/w5nby1vZw0y9va8W+i2QrPjV4VanTkPBSpKHfEdRoTynMLenfpGC5RQ
	 rZAy3OLzEk6DIdhP6avg86TOCMViOm4BjIPsFfSFeI6iSQEWjK0DTwbKqLojGhkfVS
	 Ww4WYa0h3Kvyv3UGfnL3fkljmWW5a/IvNiRdysz9T0GzG4pxkCXD4b5zPiNYp5/4qn
	 q4g8ZU23CtYAg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A932AC43458
	for <ddprobe@lists.linux.dev>; Thu,  9 Jul 2026 07:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178358331368.31045.9490698883154276044.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 144e87f59f8d93e47a867bc9e8280edd9179f38794c52d2b84cf7997671fe4a0
Date: Thu, 09 Jul 2026 07:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783583313
