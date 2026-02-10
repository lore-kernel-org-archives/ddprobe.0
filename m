Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0DB3020C463
	for <ddprobe@lists.linux.dev>; Tue, 10 Feb 2026 09:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770716034; cv=none; b=XuITnXjOVTMg6F5OY5PJgWW5mMQNbAuVlvu79isQchmGH4cJ+g90SKSmAF/tcefgCkV//GDqyUedgtMgk6fh8tnpCiAOavRxq4nAnOrAf803CcTs6GN3fCRWlqZLy/gcpMcwnvNb8Q8jzRzKna1i61nqHTv+ArldZbu3E1t9E4o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770716034; c=relaxed/simple;
	bh=79clPuwv3CCCY/MBhSYLOGNZA2D/IeGJ3UDYSyEGDz0=;
	h=To:Subject:From:Message-Id:Date; b=GPP2QO6NHao1H4nu29H1SwhAMlHOgVEu2yHBT5MH88zPgPXwAEr4vijEeoHg4HrmqoZu/IEyrEoReQldKS11fdTHT744fTQC5Exq8aGZgMNF1CZ8kppLH1QF/QTLp8ewt1UI3SNEzEm455gmXUgvMT+x0AYmhG1hIBlpDbAnlzo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=u0SXxRQx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="u0SXxRQx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A428FC116C6
	for <ddprobe@lists.linux.dev>; Tue, 10 Feb 2026 09:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770716033;
	bh=79clPuwv3CCCY/MBhSYLOGNZA2D/IeGJ3UDYSyEGDz0=;
	h=To:Subject:From:Date:From;
	b=u0SXxRQxpgIO9dvAcrGsh7CvQ6Grr07AswaQaEWx9uxv5QC4p2WOS87iDmwOLOPQU
	 dsj9yvPMCEhO7t0/K9V/Wg8jw/iznJp6rxkGa9XhDC+l1PFmTqvQ6bJCI0gFaikuuA
	 QMNDkgwRk9DLuv9qf5/kqQcLwmZuI9t99Crm4XjauC8t+Rt+/np3CPL0fJY9eu+0DK
	 t3ykSbnrppB5TCk5Sy0R+mkSXKXYITfEa1nsvROTMBAxjeBaxanmD4zZ88uUd16ht9
	 KLRGmyP2oLZpKL7oZYwt+aiABQ6n1r+Di9SfYII24hVyfeRIWV8y1+eUxh31NjfBEL
	 7+uhOO/bhLg3g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93058EA3F28
	for <ddprobe@lists.linux.dev>; Tue, 10 Feb 2026 09:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177071603359.12028.14375866045410909842.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1e0dcc411713ca2d12de7735a7bad3e1ec9b8070d52525cf4cfe4d60b37c126f
Date: Tue, 10 Feb 2026 09:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770716033
