Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A8B9242925
	for <ddprobe@lists.linux.dev>; Tue,  2 Jun 2026 22:34:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780439674; cv=none; b=g3DUscyGgxq9dLuwpKNVgqrIdxUp3YApTgZet+iVFDgUYcWCUOI+PMHlYNXanw930BVW0n+T25BRXh9bkzXv41dJXYtMepUCBFvrGpnuCmZdjMFZE3cdq59oI3LrSqXBZi63QyMhNtbCVQuKxC/VyqdYq6vR16R/rzsEw150iDM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780439674; c=relaxed/simple;
	bh=JAfd/gOCAuiz+HTplLmrvhV0IicerJof06CRhwE7x/0=;
	h=To:Subject:From:Message-Id:Date; b=pevebnW74iZLm5UKAhDIWKyPuk56l1Uj3FYPYik13FwMwhWhgvmZ92eKVywz4yaqTHvvE4SLqmHSVeLp2yVq6tkS5lgTnwl1ZJ4IIENx0ur7b1Yvw+7yVqnu9ub8sUIiSFalEx+S2eD5GsYNop8K3iDry49H0AhMSuTOKNWwLuo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FG6PMfc6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FG6PMfc6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C5CA1C2BCB4
	for <ddprobe@lists.linux.dev>; Tue,  2 Jun 2026 22:34:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780439673;
	bh=JAfd/gOCAuiz+HTplLmrvhV0IicerJof06CRhwE7x/0=;
	h=To:Subject:From:Date:From;
	b=FG6PMfc6v0MAfkGVcTPyNIJrt9RF4ITYl4g+uuj8B7zt0GWdAciCV6hvu8GNgvk+G
	 EecqnSGwjl/6BXx1FFFlJ8omfAw7YNyJTwt3L7bBLjT9Lbvk4rKtiy9JOEAunj49qg
	 zm8KU0yUqJd6H3/VJn6WPHqbynoHPgH0YSVyBQxIn47XwurGpBjjXKKOjChprKUbDx
	 J/n9x+gSdWvKI43cuGmxsvdl+It+KYesKIdg9HW8eDL+WvwoqUeOxv9KzYYDXPdABI
	 WbAJHyVTxbzFsdU55pypTEYxfKE1UCkwiCUUF0ZZwSWsdWtDr6kcEbCfAcAeDxZlgC
	 v4GM+QnhFlsjQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAE91CD6E5D
	for <ddprobe@lists.linux.dev>; Tue,  2 Jun 2026 22:34:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178043967369.21105.2536280158032329964.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 29d2183f542858e45b0a4cb7d427543743dcceecff7d116fe89707dca0d3d96f
Date: Tue, 02 Jun 2026 22:34:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780439673
