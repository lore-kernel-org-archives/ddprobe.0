Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 328A6193064
	for <ddprobe@lists.linux.dev>; Tue, 26 Nov 2024 11:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732621554; cv=none; b=JjqiPlOG9LuS4NyVpFKt5wP7ziqOhHSIkJzF2w8ypB023v5QuLJdFqSrQ0PDeTG7DFoC0QES5cPhsk6iS7YmMevWSg6/ZoLGv+Ck9LNy0q5qTdGQ0yhXvZCO8cRoAv/mqNBY2cTCjK/81tj7KfR9xahetqZDp376J71aF+SV93I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732621554; c=relaxed/simple;
	bh=Tep+WMTBH5jFgbmRemS5esYw9zmV63MyVqlek8AZjVM=;
	h=To:Subject:From:Message-Id:Date; b=SMUmw3gzm6vXtIAWgjpbVMNdqLiGd7XQjDRgcSAk3UfiV9GuMffMw6yDS+xjqV3W9N+QVukgHMtO9RVy83HjaEehEk8EQ5c6daDWqtrCdhgmP3JfuEdMbIbJnMIFalzepyHuLIKcJ0uVGBJl8WzK1NVjFmhO4lS+IkQ7sjBLQGU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=X08zJRKT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="X08zJRKT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8C30C4CECF
	for <ddprobe@lists.linux.dev>; Tue, 26 Nov 2024 11:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732621553;
	bh=Tep+WMTBH5jFgbmRemS5esYw9zmV63MyVqlek8AZjVM=;
	h=To:Subject:From:Date:From;
	b=X08zJRKTyyp4Dxi8oxmmsv4syJhobWMYFsyb8CEHD1aM3C2DkYxPrj3hXaqs2CZgc
	 QDT9KEd+RcrNjkZfgxVI29QCPqM5YqyKIqm5TdYCXZMSfw/aA/4/pznrWYTqTRydps
	 5HUSGq4RPd6ZXF6swVGKN+1EvmDq+LFnFHaPukkAEiwy9nVbFzyYFCLtypSwSRZZcV
	 IvX92i8FPTYnSC0zjI7BvptXjb+litazkeWuaTejkBjqbLh87vZi7s+NCZ2lUotck6
	 XdYkAwy1UrW7Y2u3Y8lEHCgjq76PSZtaqz4mux3znruERsi8YTixoqkxhwC3u1uFKt
	 x5cKtMvwVDKIQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D2F5D3B985
	for <ddprobe@lists.linux.dev>; Tue, 26 Nov 2024 11:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173262155362.2612.7857359222151816043.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0d2959063ebed20054be654c2642e13a7e39ff2fd8f53d834716d22783ddf432
Date: Tue, 26 Nov 2024 11:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732621553
