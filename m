Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 407E13FB31
	for <ddprobe@lists.linux.dev>; Tue, 23 Sep 2025 20:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758659994; cv=none; b=X8zJXiynADYo8LygpyD4qoKbGoAzCNLC63g5ZFUADqqENVa47vyU/nuLp7u91/dVz9tyWc6ICdL5QlV54Snu41VBXMtDJp/AjavG2QtZ4sKDGpFwYjljTesP1aCyHr40y+ELvpFIlRB3bmizFrEhWAsXrvnmvcNoLgxhFYEaJdE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758659994; c=relaxed/simple;
	bh=g/0yTkKNKrsFK37GDpSGKKp6ZP4Z5S4gRGaqEWCxj0A=;
	h=To:Subject:From:Message-Id:Date; b=ScI8Zz8lOY/EueRzLvg7c8WRwIYRUNwOHWsB76nXKDd0XZHp9H5aKE1kKoEpaU4zKTiWIl/yhUfo8zewYhQ12X4N/1txU6RqgE5fzFucZKcqn58B58DzHn354YebbQlZo68NlJJMErDSYNGFcWgVlel2PMljeMzoSHFq4aqiGO0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aeskFPHd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aeskFPHd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC5ECC4CEF5
	for <ddprobe@lists.linux.dev>; Tue, 23 Sep 2025 20:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758659993;
	bh=g/0yTkKNKrsFK37GDpSGKKp6ZP4Z5S4gRGaqEWCxj0A=;
	h=To:Subject:From:Date:From;
	b=aeskFPHd45Gl6ydKdZumzTYzlzd6uoAy4EkZtwdx+cW92qTtHDL8gJcCTZwtntJen
	 GNklkUdPUvm5l2CBwoh9bhMk2ZQQ0JVOIuz6mdksrVhWnYt2Oyc2UPpunlNaNZdDQ3
	 2q9k8pschDHxMb4mH0h8LDDI+eafg/QmJooJlc9KiC6m7difMoLFYDZIcEWqSorKoh
	 LX9joykCKj6dEz735tMM5m58+Z+kJBEExCyjNsmMt9xwchk7SzzUpZYa6ny3JKL7d1
	 0f99lZnBpCT5okZwHYwrkZbwBTk5jlq0pIuQgRECnfPNBt70WJBI8pw09s92aPdpM8
	 pcVc9KUB0h+TA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABBFECAC5AC
	for <ddprobe@lists.linux.dev>; Tue, 23 Sep 2025 20:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175865999364.5387.16857562468057795102.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bced05700b56770baf4b4206690db284e3b66b070ec7951cd767cf1e7257019b
Date: Tue, 23 Sep 2025 20:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758659993
