Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A8092E62B
	for <ddprobe@lists.linux.dev>; Wed,  1 Jan 2025 08:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735721754; cv=none; b=KgzkycVjc0X+M0ZyW7Xzo/8CqUtbpVFj0gPF9PG+3IGhQIhO/GCuQjAlb5xx2+vHyEizuJna4bdlZlRzriEfdbRKQeLZJxOs5SjymckiEuatxz9DDK2a4YKayiuDSPVWBN2BOAbu9KoJWUlaHJUQ9OqzJisZlrcToHOZqQ45Yhc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735721754; c=relaxed/simple;
	bh=1pOc9IHHIkQRvX+RJ7/P7UZcg8N6Me3qQMrcAZjmwa8=;
	h=To:Subject:From:Message-Id:Date; b=i86Tv5mRVOQUH1BOpKCnMELjd5QekzlWSw2UZAWw3F/6447Fqtpl4qQ/tQTnpgxWsKqXgHCTVD06FlzALXdHGhe3P2dX5QMQYgvuS2L0co9Ew2ClMdYfsE50XCl3PVlb/nJL00dcrbjdr9opWaLEz0LV94+WDS7ledSV+Iepm2Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rDLWLi+1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rDLWLi+1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A77EAC4CED1
	for <ddprobe@lists.linux.dev>; Wed,  1 Jan 2025 08:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735721753;
	bh=1pOc9IHHIkQRvX+RJ7/P7UZcg8N6Me3qQMrcAZjmwa8=;
	h=To:Subject:From:Date:From;
	b=rDLWLi+125hCSlGRu1R4jqUayKg3PMQkHsxLZxS6YtAkdLGiwGI6EpllVtHvJsUGg
	 w/hGeG6/GcdN/fybZ+ipZ1k8Jbg28BdmnPOY0tNLuv+qSuhbMn+6OwlwA3eSeu2nSL
	 XKQvCAIVIcdOI0Da6qWdackb+qg3+hA9lZ5Mv2BeDWXQkXlkKaGn4+Kgi9SLQha0xO
	 N7mYq//3Kzdm0WBk1czBSZSoEDtktIhjdqQXRqgznSoQGr7qRwBCMV0L69F0M7/rhS
	 6dkxQvbFoVLhBtkc81DZxivGf52A3zQ7qPdGO2W/vbEZV36EO1OCuJ6xnRlMj6WxD4
	 XdbpqV7s7mggw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 920E3E7718B
	for <ddprobe@lists.linux.dev>; Wed,  1 Jan 2025 08:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173572175357.7466.296880785640694508.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 97cd8fe11173b5b63ed262aba94d29642f0c7df89eef3ad9c73e03fdaa547edc
Date: Wed, 01 Jan 2025 08:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735721753
