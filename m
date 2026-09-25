Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D91D43F4DA
	for <ddprobe@lists.linux.dev>; Fri, 25 Sep 2026 06:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790317834; cv=none; b=PqU6zrV5J1E09lzpzP3ZrRwcOsdOmrws5wGYRU53t7MwSWRHrVTi7OKazbYBI/3eEKbeKEBcjb9q9i7u547vgVeYl9alw3Iqi3+fxPcu23OhfXfEBkDs/QNmrG9yYOv97KLbUBqR6j0Lz/YzOD42APq5ao+AnTYdHCcdWjLDhCA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790317834; c=relaxed/simple;
	bh=CV7QD1V9xF+XEU5vJM3+LXVJQK16jfe0pQKuv3cngdA=;
	h=To:Subject:From:Message-Id:Date; b=DwFrC7nfMX7K7cmICn5qLWlB1Gnv7yXvwbna2in+s6IM/yQMVgb2LDCIEsb1EMIzVeJnJbOGmDR+MDR1Hxn8YQ2UHIPcU12r6Mn48Bt3qGgu+yn1LAjBdWyfxBOw0ukiNJhAd+ne4+o1x5GEHGXnCZDZUI1/Vl9BRFDeIlL7P7k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=k3jsSVAB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="k3jsSVAB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF6E7C2BCF6
	for <ddprobe@lists.linux.dev>; Fri, 25 Sep 2026 06:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790317833;
	bh=CV7QD1V9xF+XEU5vJM3+LXVJQK16jfe0pQKuv3cngdA=;
	h=To:Subject:From:Date:From;
	b=k3jsSVABuc5vqC1qxf7JCXzAtAsCpmvUnNAxSbeCF/08j15/Vuq/br9el0fTHlGHL
	 XxPzgI6a0k0fg+02NJA1BntGPKZVPLnAZkXegosDzNQjkUSjXZu3ceEkmD7Oz3Yhm9
	 j9YIobr6UelySjzW9evB4x36WmxD7KFmC00oxImIVOWqpKrOkoCVFaNw/mpm3syQvW
	 aqHySlx7cMwFDG5j89pa76T5PgmK02c7p3XRA1/88Z7VbxlQ6wh8eMTi4cg3DMb/3X
	 AE7hNVfdJhQt5UyT4E7rOYwRUIZh/nQDcEWYSMV+xa12rOOp51vrzOlPkx4f8hDwUy
	 +QGngOP78i1cg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD76AC9830D
	for <ddprobe@lists.linux.dev>; Fri, 25 Sep 2026 06:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179031783370.11319.13029723906317945861.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 709fa9c397cd69b720960ea349eb7cd1adfdc0b97a885fb7cbb31cff08579a1a
Date: Fri, 25 Sep 2026 06:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790317833
