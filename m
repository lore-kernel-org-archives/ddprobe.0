Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 594431DA313
	for <ddprobe@lists.linux.dev>; Wed,  3 Jul 2024 18:35:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720031723; cv=none; b=mVT9PsVzcumOaJwrhLQGNOR317wlfP7ZUp35w8H2gUEmDUmYrxPN3RgWZb9p/Uh0SmJoxRKRnwp8jnkGqeziAATifcWt0tGKz1tG7C9rqqNKb9hz1379xNwV0nfOQ/My69T50kyVY1haAyKSj9ayuVkm2n+VauOJXfWm6nrrAkY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720031723; c=relaxed/simple;
	bh=ytgs41a72rv/wB6WvKI7FxYx1AlXgiXXQZg/1vObr78=;
	h=To:Subject:From:Message-Id:Date; b=YFAJa7yY5G3D8YB9C8RmGO6xblTByujqGW8mczRy9zDR+alZKB8gr3ZgKEa4EodPVBhnbA7pkoAeoN4xrtrW482WojRS/tkepybjgrwEkIhxyTgV/pbOnK8x5QoTCZSZIbv0neM7Q8rB53bIz3X4ffhI3G/gyrPtOT/pKkwakdI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AtL4oREN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AtL4oREN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E0452C4AF0A
	for <ddprobe@lists.linux.dev>; Wed,  3 Jul 2024 18:35:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720031722;
	bh=ytgs41a72rv/wB6WvKI7FxYx1AlXgiXXQZg/1vObr78=;
	h=To:Subject:From:Date:From;
	b=AtL4oRENV8MPSvmvN9BmHzPrIZW2NE5aq6gApJZoym4CA4S0smywcx4VpMpj+ll3r
	 pmnjPHtWg7PsSXzxlP7in5lkvFH2QxYsE0Sfl2+MnyVREcqpeAGZ2+Or710VpwcfuG
	 uHS9owy10frzY7e51/GCqcERGp++re/lklLNiVcqX478up6Xj9B/eE95L2CsdinTJp
	 E74r76LhZZ3R5NRsum2qaQ5fdV/f2aV4IhyUw8VEGPTIsV5fbvus5ze6PiQ6K097sd
	 EVax6S8XKMCzENYA6JIKgMbA6m5jmI3ubkJfcM9brJU6Dhf68/JyqFdFBXT6l/sm4j
	 e3JKMAQei00dQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C9D75C2BD09
	for <ddprobe@lists.linux.dev>; Wed,  3 Jul 2024 18:35:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172003172281.14388.14454985182262585948.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1d42aab437ec43af4c3063a7e7538efe5cb46fd83acbbc437eebea577142ce56
Date: Wed, 03 Jul 2024 18:35:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720031722
