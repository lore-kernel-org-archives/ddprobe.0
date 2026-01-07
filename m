Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41649349B0C
	for <ddprobe@lists.linux.dev>; Wed,  7 Jan 2026 16:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767804234; cv=none; b=LTjidpQ6Txnx4+O1axtVIm74I9OMeRsiawez4O2M0rkgOOmwOEmKJVv8UalPuxDx+uak1V9K++b/FmxL8jF3bpRWu8tW7mw1WwkAwZa00kGKXbnVNWSov/WWwEjtrP+zJHnj+56FAjKBgi6268azHtiEhChdGI9MWnofJ9LlHvE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767804234; c=relaxed/simple;
	bh=NXtMfaOHf1GX6TzOl0ft6JTEQRqWMhkVz4GbXpf5jjM=;
	h=To:Subject:From:Message-Id:Date; b=pcNmZeGoCJyO1F3rqzF2QtqDyNq5iVj+UyZ4YVS+QTlnH20R3dx7sPj7DYiwoDLIh7OFxBZieVAuOc9xbs845Ak71jzeNn63xe3ccRp+ewGSRUFtABjlhX8ehU6G2b9Sjo6NEDSAdVzdIA402xV8IwzSbtRta4uiVxv0vT6P560=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=l/Mh3ig5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="l/Mh3ig5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A000DC4CEF1
	for <ddprobe@lists.linux.dev>; Wed,  7 Jan 2026 16:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767804233;
	bh=NXtMfaOHf1GX6TzOl0ft6JTEQRqWMhkVz4GbXpf5jjM=;
	h=To:Subject:From:Date:From;
	b=l/Mh3ig5FghjT/n332bXIhJTvRjsLMXsb7MqjuMIxIK1GvMhJHA1uWK2JB2wNMdZ4
	 XZ+1jp/1KbFP4K/MBGdfhuui1JSiOaDnVSvqlDrvTkQavjLFFj0U/dWljoj40UDqeI
	 zg4rAla3WHQJO1hXlP2MSnwxIT9Q4zZIvtKwokAympjwy8T2KMVgNX8kGsb0Z5tnmD
	 CZdCxynPdFn4DD4z3zZ6ULZK/oFwGdIJtepjZ+GL6hm7WXNp1wf7i3fyeURDhN9Xge
	 BuJtkYpF/yimqcz+K5U+8pOjgaS2t8/qwshhd5bbWlMYRvKlkvUwN+s8sYgTV61wFb
	 s5nge3XzaUjIQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F2ABD0D141
	for <ddprobe@lists.linux.dev>; Wed,  7 Jan 2026 16:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176780423357.26394.9977032705642571462.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b81097beec2714b8bdd90497be1d4212a4ded7fa656dac9c9790a7bb10faa2dc
Date: Wed, 07 Jan 2026 16:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767804233
