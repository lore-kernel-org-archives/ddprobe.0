Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CC6517A2E8
	for <ddprobe@lists.linux.dev>; Tue, 28 Jul 2026 00:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785199234; cv=none; b=YnWHPp3JIAs7XilpANYnxanC3iOSXMJq+8zaaj04PmWvFY+n5NHaZ0UZiH/LEPMnOR+F1SEiLddxdjTeo6Vop0uKepZQgqLSH6dNNcQsPosieWjeMgJ77NN7qDoOu3aLeLTVeGU2jQXUFSU8OWT+YJs6F98jFv7SV7GoovGsB10=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785199234; c=relaxed/simple;
	bh=lhDokBlttQ7TidRQCz0ja6buUg6gZuR/WmvaOE7T6gI=;
	h=To:Subject:From:Message-Id:Date; b=BoQlZaQRc0nHR+5le4boBni6DB9ildsZ3Ujj4f3Mo/VDN4RJ7PNtyj2+iSurP8dNZiXDRAY5th27Bz9mVkbnEc3PJ1fN8puJj66dEfjNVIN+rLrSFoav4EvpwurB8lcGPHJh3yKkl4sKjKj76Ic9ku9JSY9CfR4Ci/w0H1z14zU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DY0Kq70o; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DY0Kq70o"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CED20C2BCF6
	for <ddprobe@lists.linux.dev>; Tue, 28 Jul 2026 00:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785199233;
	bh=lhDokBlttQ7TidRQCz0ja6buUg6gZuR/WmvaOE7T6gI=;
	h=To:Subject:From:Date:From;
	b=DY0Kq70o2NU8+lsRnEyEczrhOgYLHS0ZzGD61Zb4d6Xjrq4Vf5hi9KZmuxbtbR9gh
	 NRg4MCL3aen8h6cXu4tyPqzMS7q7jT9Gp4j3u63ppzYKcvApl8gGgrc0EM6DU44BdO
	 j12zvmuGSlRUWvKXAyT231PJlMYFpuoShSaygoedMEMmxOz6Jv32mY9gBgeczsF1Wa
	 h4JDfoWx58XPhHnuBluWUMMBX3+N9PCtoYDbQkP2UnEj0tqCxlM5psOLNTQXCkDPCj
	 +1NLbytxosyUE42XropX9tGjOIKusYl3Oj9Z56QvQFFR1ZS5U2E6xODZu96mOdVtY5
	 N+1k+yq8m8BMA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA90CC531C9
	for <ddprobe@lists.linux.dev>; Tue, 28 Jul 2026 00:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178519923368.6226.11981171998506683888.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1518865ffd3b7940575a410431e08e791cce1ba2e50dd780de50c3a06e40517a
Date: Tue, 28 Jul 2026 00:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785199233
