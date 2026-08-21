Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5CC7723393C
	for <ddprobe@lists.linux.dev>; Fri, 21 Aug 2026 11:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787311834; cv=none; b=kccWm50M+4fCSOADym5xGkzUv0WEVhkxkoFCxl0hCbCph2/PfBGZiXuwTxhNW7PIF/xs2LF6Kh3QeBcpHFBn/n6sN7oBL6jrA1RH5pzkF33wero/AdU4D8Pz7Bo6eFaKy+f9XeY0AzSpWwKZaQBTPYxSUMzsFDXKqc89I8Ss6nU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787311834; c=relaxed/simple;
	bh=d5eK6ce1gC0esYRZfX9Jj00Z8IsN2leYH+qOmPS0WX4=;
	h=To:Subject:From:Message-Id:Date; b=KigHZIPtBd3w5bvOekK3V80rExpM5Ar/mkFfD1yPlWt+jEprDKhqGZ8XPkbrX9lhcSMBdLkADEpVgJNqmrsQdsx313tIulro5hd2pO15/4JLj9XOIu1AsXNS+HKAZuidgi9M6VV2za5EP5tircmNe/Ffjrr8xQnwYHI+ThXocd8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=C9nkh1fS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="C9nkh1fS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DE039C19425
	for <ddprobe@lists.linux.dev>; Fri, 21 Aug 2026 11:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787311833;
	bh=d5eK6ce1gC0esYRZfX9Jj00Z8IsN2leYH+qOmPS0WX4=;
	h=To:Subject:From:Date:From;
	b=C9nkh1fS9WJEpXQo260aiFcV8xhTOCRy2v78FHKt8Chn83ZjWMc4zVHw7LmiWT24/
	 spQ/hVKsNFhFF9HSXWOoL4KZ0Zqm2gS5D2A10KX7aHE8SUdW5LQSNqBE7Wt11j0xtl
	 vUs5Eu9LCVylKBh7aAnO6QO8FKTMUVj5dBoE2ZSzlZps9o+7ZCula2up54K9leFcUo
	 uou6u+AI4yPfCjuhJqx7scyfpToEnTweYphVnvJZ/c+SuY6ag1kJ67suulqO1LOdda
	 iFxOteMzy3FDC7SAgFukOR2Y9+gD/p8H5MiE8zQFdyaa8JzYamJ2jVthy/kjYqh39t
	 6VLfCB99TDmYg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B8FDEC5DF87
	for <ddprobe@lists.linux.dev>; Fri, 21 Aug 2026 11:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178731183374.25249.13868273025588775247.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4a9e7818033bae75c8aec9c78d2c0be23f4b66e22b3d7aa192fa1a8c2db3b8d2
Date: Fri, 21 Aug 2026 11:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787311833
