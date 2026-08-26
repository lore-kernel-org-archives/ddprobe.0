Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B0122DE6E3
	for <ddprobe@lists.linux.dev>; Wed, 26 Aug 2026 22:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787783434; cv=none; b=pdpZh4fZGl6u/CmL9YPTeTAjBZ2Nq7z3CEeHk6H96HiXFP5Dha9R542Pd4e6F4X3Fwypc1VHe+GAcMCviNciC7QbTQHlERO1v4LrejUkJ32IijaVjlsjSNlXs6uo+ROuT7NavRY0ztWrIPJQvLzSMHwBmysrT5LCBSVuT75Py34=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787783434; c=relaxed/simple;
	bh=J12gV/VaKs5U3u/LDZRUr5Ty3i1rL4bz93DV91oRXMw=;
	h=To:Subject:From:Message-Id:Date; b=mtMwUpENWwUtJVPbfdTO6YXfEzmZz77NuQpTKXX0oyCPKkL08O5T1tYzfJmPwqr17ao3Lo4vjDW8XjaB8eCywavsk49hkszPUUEEXKVU6+ghkLMynPgjXNEKCGMLJPzjRKvy4CfFyxEJLc6cd1xbkkGQ7A2wgp6h+16Y8RdXc8Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=i73ZvBfn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="i73ZvBfn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE4AFC2BCB9
	for <ddprobe@lists.linux.dev>; Wed, 26 Aug 2026 22:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787783433;
	bh=J12gV/VaKs5U3u/LDZRUr5Ty3i1rL4bz93DV91oRXMw=;
	h=To:Subject:From:Date:From;
	b=i73ZvBfn0KhFmp/NERufMfEuuNsoifEbzlv0RlLt4MsAXYJNK7l8aXr2J1+WNt9VR
	 xmpne2RUCMOv6+Qi07jbJSH7nS8f9c0YNghLjpuiZfXTtZMtZsxcSon2wJ9lvTOZaD
	 puC46TH0kgmT911x/pPTQ3iW4NXSBcYHX5SlGeF0sGNYHMlXwsS1/T05BgXyREwsIG
	 yuLLlF3JeaJQUUIfuTIoj+b1nSLqMaXbKv6xylSNJ+b7D7ObtDv/TDaKB+igms8/iT
	 6sCs1JMw4Jrv/Tgc0p0rBxKepuzRdnTRg7RI50/NrEaw+Mf3AKZABfbbi+IMoDovui
	 H1RVUb9SLajRg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA459C61DBE
	for <ddprobe@lists.linux.dev>; Wed, 26 Aug 2026 22:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178778343368.32690.13587753398960288482.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6177604c275d59ed97ccdfc8a8f2f64a5048e390c86daffeb7735787bee89185
Date: Wed, 26 Aug 2026 22:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787783433
