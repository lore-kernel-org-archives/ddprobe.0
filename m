Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4BCD82745E
	for <ddprobe@lists.linux.dev>; Sun,  2 Aug 2026 05:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785646834; cv=none; b=VeRq8P0gu5Yt/cw9cLa6/l46XdWS8T0auOYeWtKt+pUtKpFErOlAlJ/xlweE62A0lz36O72L+axhowKIOAros78Bx0LfO/hvxHS2af0U89R8tzcQqlRDPXIulhQCEyHg09X9rtUL9CuXSg5fn5TqdtOILe6ZqB51xU/Hm18r6xo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785646834; c=relaxed/simple;
	bh=ilLn8FNYIHlSr/EYCpP7WFnfJqXlqUHzaFWHg33lCVI=;
	h=To:Subject:From:Message-Id:Date; b=N7MrUFIMMKX0qQ1E3jWtUPv5S815ISPNadiYVE01gS5oscOTiR3jjKKfXviaFQuAQ0Bg4uz2Wk0+FM+mjrhJYuot6GkIeNCr3ZCcBwlnW0KM+fEICV7r8GZv2+NBRBpCacfButyu7SUv5SoeBgQTg4IifW5GvY1e4iU+2DFBiUg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=K8q+Qh0y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="K8q+Qh0y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1812C19425
	for <ddprobe@lists.linux.dev>; Sun,  2 Aug 2026 05:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785646833;
	bh=ilLn8FNYIHlSr/EYCpP7WFnfJqXlqUHzaFWHg33lCVI=;
	h=To:Subject:From:Date:From;
	b=K8q+Qh0yD8yF1G+MM0CfCeyFRP7GepcE8CyeZ0EjbhSqmxEZGIOP3tgIWrJw1/QW0
	 O+i8rAqAu3nFWmfh39mQtJmgKV1zF2TMMrsA/Wi9U1yz0swRAQd3aPoRKoMynxucQH
	 zQuM7RslmvwnUsdUJNETKc8WIivtj7IGk7nKrz5JYw/z82BGYfbtbPy6BRR6przRvr
	 tuaHKRz9oBFDoYLlZCcKVrvmNCzzgPj5Y520+VKEG2IxBBBWMD+dT2r4fGPcDBpRNd
	 BSgzxMwCwBdYpIw4vN9CHPoB6vKlZgUOeFO5J7hi9Q7QYEvcuyHmPtbd3Y1AkUgBBj
	 dtNz3jzEV1A6w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACAA1C55162
	for <ddprobe@lists.linux.dev>; Sun,  2 Aug 2026 05:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178564683368.8871.15201972670976401501.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 79d5a477172a629101698b32e3e30577a54bf56992146038685c2f403ef9fc76
Date: Sun, 02 Aug 2026 05:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785646833
