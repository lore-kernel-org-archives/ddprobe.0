Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F235286419
	for <ddprobe@lists.linux.dev>; Wed, 18 Jun 2025 10:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750242594; cv=none; b=fDytzkvhAbkHMG6E8Nl2Vlqn5z7fqb8P1E9/SqHK3E8eYHKLhbhdOXXCYMA3IZrg64ik415Lke4ZzjAqtSST9WN92QPvMd5w+mdJ3x5QICpBcqHfCK0yKKHF8TT2yzfPjKjdDieSWz6eU4A8kbDRSG1ylSKxp7fn+dDa4pgCkrg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750242594; c=relaxed/simple;
	bh=ha2sM03EC4gcDE951/M9RKjbGSRME8pj7mXCUC9iQL8=;
	h=To:Subject:From:Message-Id:Date; b=ppJHirqqiLmtkP9bwYPFR26zRWCaNXlnHisarDsq+hnRqCDmu4Ds8AOi6d9NAmgGL0bujjQRgvXtJnX1Bit/dLi/LWe5/WrFJ0N7ynpQLYkzFO/3lAa0uXtAWnF/RJ/S3B4UIAwA6t1VHrYSzdNYYmVQfm+ZF2QJl7R7wwL6XwQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SeRkW5mQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SeRkW5mQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0031C4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 18 Jun 2025 10:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750242593;
	bh=ha2sM03EC4gcDE951/M9RKjbGSRME8pj7mXCUC9iQL8=;
	h=To:Subject:From:Date:From;
	b=SeRkW5mQaq3KE4JK1NcM/IdqC5WxpctfQ5YQ1J08qQvGnyKmTDhAFiIRVP0DVFIYZ
	 Vy/jJ0sAOpWLd17TaEEu4ZgJpSSzBPmAhKrO5wcyg6fD7kTSPIshp3nmEnfmf6yOEJ
	 lnS6zUii/Xby/CLe5AtjoM+ovtdDq3omJk2Uv+A2JyMbyoDwBXpqzVCMURzDnWORl2
	 KtBUJHOrtd42tjtBEc4MO7CAfmBXHCaw0yJYze4vi++jq31ft1ApnnEviZLHbX3u1g
	 hHaiBZypgYPRLzekFTQaGvPgIEHoOanyJ84UPp0VndUWMAmnebUhbKqMF/n0tvLVBW
	 Obp+KZAvzNWMA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EDB7C71157
	for <ddprobe@lists.linux.dev>; Wed, 18 Jun 2025 10:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175024259357.11942.3137236086401310449.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 86ce0a11feaa66beb65f1830e626125aad6fa1924860b3dd8b50fdcb2555dba4
Date: Wed, 18 Jun 2025 10:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750242593
