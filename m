Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31BD912B93
	for <ddprobe@lists.linux.dev>; Sun, 25 May 2025 20:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748204394; cv=none; b=HqzPiSYjmpzQjhkiQQx/n6l/FJ7fTuc8IvwitEe3reJMu9LD3MaGlJC/X22LKZ53lP3oLVGn9MC1csrSf4v+cShOyHxZR/GN2rU8iyNOFf7B/X4jR8gZ6Lx6v9fawPMZjFmwwsUohHf650n4xdIrHeSCp5zk+ZTeP1CYWPQ2wps=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748204394; c=relaxed/simple;
	bh=v49jU1rXbtmlTdrZ8qFai8hYu9jxK68V8FpiVt0ZXdQ=;
	h=To:Subject:From:Message-Id:Date; b=FR7RUoZ6TTefdl1jsaaNpncEmW5M8kLGm7d3DaXhi/1zKTwC+E/70rKMtG6z4Lw7opbIZ1/U4uOcvpadIACq+/HqXv43ht1sSkgFTpeZi4kvGiqPiAopQbucoUyBii6k60Gs/BiYVhjmKq9Gp9/T37dYkw7pLCZpt+8oU9DOkm0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=c+Hk7/qU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="c+Hk7/qU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6E79C4CEEA
	for <ddprobe@lists.linux.dev>; Sun, 25 May 2025 20:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748204393;
	bh=v49jU1rXbtmlTdrZ8qFai8hYu9jxK68V8FpiVt0ZXdQ=;
	h=To:Subject:From:Date:From;
	b=c+Hk7/qUxfSP/cRbZfhQPv5QJcGMsSamZ/6vo/0uu6MUvz2szT6Wd+6W2e7mFcYUk
	 GjlJcG6FaI8EkDq0ZVpbHg/xGbZDi2f1nPiM95ev49J2unbsCyhET/tOAWZs1TUcZj
	 MUMcq9SLQFaZpZ9WA2KpwU4xVuka1ym07LOA0a3viSx52A4+rVaG9NxwQb4922mvo/
	 O/uJGM0OAJ0MFvatW+7sbJs/IQXQpESTaPcquvprhzKLe83NZ0dnMzuNktuRD0utbb
	 bsPbBy+qdDY7e8SVhpotOJ7ntKqOn2RDYxoXilkRCN1FikMZZJhvPGtacb8kTgTICd
	 fC5WeR890lpuA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93CE9C54F30
	for <ddprobe@lists.linux.dev>; Sun, 25 May 2025 20:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174820439357.26058.11565904797011168410.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2ec69694736089c8be4eddfaf082a5bf6d0a242b67529a41c1aaa2ba07167177
Date: Sun, 25 May 2025 20:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748204393
