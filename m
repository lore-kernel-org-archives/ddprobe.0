Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 278912798FE
	for <ddprobe@lists.linux.dev>; Wed,  7 May 2025 12:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746621595; cv=none; b=e70/iOS99D9F0HDwqGL+oMYAoeQWuy3w4PVHvd1pRlI2ZvO89xwy/7xBQt1M0Ok8MRtLRmZrWuxPuglT5ZDqV8plI6iqa5eEl/NbcyoCCmTTFuAolXvnp0u9Vv4Iu0q6num2cuLfePNaZy+TkI/hsgAIYJQtl+p1wKnZ+fdH14s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746621595; c=relaxed/simple;
	bh=/2fRlZ/Am6U2NE1U8j3JhCLn87mJTPruKjdEsJf+iQs=;
	h=To:Subject:From:Message-Id:Date; b=BEMzXRYuUztt4PhDzdy5pDoTOjfjYLN2zfqyph9NKrwGZ9cij96/+w+pZi1Q3BI3SEJCHO2hkrLWfQphAqhZniBeKQCh6EkGSBJHRoUNS4qBangxtMgsc2hrY6UwqjvosLya8j/8hhhpU7imVzmT817CDQBKuk13ph9gw0L6hfU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Z11NRnwr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Z11NRnwr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A211CC4CEE7
	for <ddprobe@lists.linux.dev>; Wed,  7 May 2025 12:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746621593;
	bh=/2fRlZ/Am6U2NE1U8j3JhCLn87mJTPruKjdEsJf+iQs=;
	h=To:Subject:From:Date:From;
	b=Z11NRnwrFw7KBm8eVSAa+StboDcDrFbTHpzoBIRwKpSZAzhoG+uGZ9YA+kgK6dM2V
	 rReELzC+t7osAKLKNKWnOz9mU7epmG2F1udd3B6k3Kjqs/PPPTvsYyJU0Tmy3/1L13
	 dISBhhIRE+AC+KhuSghb2AboeH+PbnYfn4eu8ke3Jgf97bXPEAhqv6kceB/w86Lftn
	 iDKicQC6kgHR/5hPeU/uXat1IAN45WBRrI62dk745zXVsSq27DKqKuxgZ7P4BuQwyS
	 O+ZPYjWHuGF/I+dTfndjCk0nXIEFVul77MmJFo54MG4gF3wmlDo0NR/16YJaK2+Zd7
	 LfUbU5pLbHRDA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F645C3ABC0
	for <ddprobe@lists.linux.dev>; Wed,  7 May 2025 12:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174662159357.17847.6819826414880914498.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ac36fcc558c9508361d79fcc7a99333ecf79e2b3c3ae9966495514c7f60b1b8c
Date: Wed, 07 May 2025 12:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746621593
