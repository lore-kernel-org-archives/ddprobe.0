Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 224D33546EB
	for <ddprobe@lists.linux.dev>; Sun, 31 May 2026 16:54:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780246474; cv=none; b=cKNcO3/HobP2WQ07hOU0iJMZvESFqJNFgP2Eo6KPFenwa5xUtXTfCBafXMzp/KAihKNLZf58HMBANmRI4SB93oEn8iG0K0ujVzrYEfg9AfLKqG091u8s4TpcU1aBm97G40KCyx2FjdekAURZD45wh5zW7CUoeuc2rYLOKJRa8EQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780246474; c=relaxed/simple;
	bh=X/dnxhHYsVfZtzsMb9ehtlVg9CT86mx/MZ7n6ThyUeQ=;
	h=To:Subject:From:Message-Id:Date; b=bl11QfhcJXIyh7ekaSk20lQz50RaFlZjesbNBknDnPUYt9EZIxL8xDUCg5xFtiSj0fTzAFrSz5r73EH5vrXJFii6yAuEJDHwxPUS9JCRKvJ0FmPp1uU29Mp05B4dC0MtqFfNOdt6Dt6KPAg1/TZaA3wcof1sf3Q2Fh/mf5ceWEE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rfj1YIjq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rfj1YIjq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B84B4C2BCB4
	for <ddprobe@lists.linux.dev>; Sun, 31 May 2026 16:54:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780246473;
	bh=X/dnxhHYsVfZtzsMb9ehtlVg9CT86mx/MZ7n6ThyUeQ=;
	h=To:Subject:From:Date:From;
	b=rfj1YIjq8vD4+ufc4XWffngF20U2Zi5w+Tx3ZPEGO+VrFZ9jAoq4AxFBQ5Ca8bdmO
	 xMruY8w7K7CrVh7JGNLhCvWkztQudxZHbSeK6YjlW8Jai2dPlosbFZ3AY7jGLl8f+a
	 XGyjEW5SSJBG2G02AJ0SjtElHzLBBUS5s1w54GY7M3nuzHl2ZGea9b6/6UjMW7ishq
	 WcRBHAs5dBof8te0WiaXv1ctgf/pE7IsLQ5S4BsGRHYrqtGm+lkH5KDcdZd2nPefoI
	 U82h6MLrTjZ5T6age7vUfAXTqmvJxaXJ835n+XWZEtoBN13mVgkoTefzVLjc/Jw7G5
	 8mIhtkLRzrZHA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAA58CD6E52
	for <ddprobe@lists.linux.dev>; Sun, 31 May 2026 16:54:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178024647368.4913.1064415770747399207.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bf6b8d692f0992bcc551a5f7c4899dcdcf7c896c762e6c3192ff4ee5613178df
Date: Sun, 31 May 2026 16:54:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780246473
