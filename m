Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 559E746B5
	for <ddprobe@lists.linux.dev>; Sat, 23 Aug 2025 03:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755920994; cv=none; b=fVX2tZcsXguWvZIPbVwLScYHTNAaXauDT2PCCoUcXfGvujmKepUAc64atwARFVdMJWxgqkAQ9Wl298qZqJnP7m1HY6o7AZs/iJl7hRXQDFEgoCRX0ZoxHhsOfV6LYvg7M9lGK+681zHxRlJW14LdW4F1rNYnhWW+uai6hcX0Rlw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755920994; c=relaxed/simple;
	bh=k2MDpzohDlzf4z9iG56MYthsKxnYAHIs2YZqTyabGk8=;
	h=To:Subject:From:Message-Id:Date; b=JAOd3oAlS6XLoSYfXl03Yf+i1Ru7eBOE+7T/f3nTymiG+LVGbgbKpf9Tkm92A2wV2ucbRr4dqqb7XTWc9CMXsy3Kt33pocgoeLp2ec/gePJeWBuIJxMSlrra3dGF740Q6u2pavsY7oKAw6saG42SZeU6P+MiGdQrG8m/7JpWq6c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Bjp0ZsOr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Bjp0ZsOr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5872C4CEE7
	for <ddprobe@lists.linux.dev>; Sat, 23 Aug 2025 03:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755920993;
	bh=k2MDpzohDlzf4z9iG56MYthsKxnYAHIs2YZqTyabGk8=;
	h=To:Subject:From:Date:From;
	b=Bjp0ZsOrk6guR9OV8/BEOCyW6qubzXnOcj5pKNEjinHuddT3vzA0CHmgkytDGnBgD
	 hta/18NnaHQk2EU384oXExpuCAhh9BlelRu2W7RB3zVqKKlp2+EJyb+AfRFbnmBBID
	 hky4FA8Q8KoRUS5hXakph6rFp1ZuJFDd6KHLRWCK8t5z++EUvJbX7blJE185ZiAqIb
	 whyhsB7EqFnZYKWpz1gCUta48XrzFV/d7HJ6vLb9/noeHu3biLm3Ec5Qzic8+kuJz+
	 qA23nAYuF++bn70zqZ4Hv7pKdjGMCX5+E7eFrwMyfwskNuJ6EvSLq9GGwUtYZB+BR8
	 xa6VTEVnGfn1g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91174CA0EFA
	for <ddprobe@lists.linux.dev>; Sat, 23 Aug 2025 03:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175592099357.30955.15215380165373169485.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7f413853066eca1f5bfa81291630db41eac26f0989fc173ac5a10ce936e63140
Date: Sat, 23 Aug 2025 03:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755920993
