Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F04879D2
	for <ddprobe@lists.linux.dev>; Sat, 29 Mar 2025 11:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743249594; cv=none; b=JPAGpEJv6TE2bYdD6IsssLoJoqocp0RwzedLOpCvc895nPJgFNshv3WB1v/3526QIsMkvhm2EDfGNHkAVpLTS9hd9sZDSmqL4H+/lPHH6VGSkIBMyP71YNlZZmIjtJDgMZspWfvZyx5bc8VuZCv11oOMzluB+azAeiExa9mJpy0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743249594; c=relaxed/simple;
	bh=Z2Ix3OeqBCp5pFRjYziUHkX930Zm+tTx3FWnOVBAc6I=;
	h=To:Subject:From:Message-Id:Date; b=h6YXJc+/EquKnhIqOdeI+O6OpLjGpDIEUEDx4JFkcCtyu82DRM1mXdkBQmCQHG9IhOb7P68eXTkaA1YP7e4P4scfUJEaIe579kDLzEvjQu9amOFPJkTj/bkFU/jh9Oq34O2ZUVeSEVyB0L5hoAbQrpvfPF22zdIG/Irkfj4HA98=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SsyqTxiL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SsyqTxiL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2EF5C4CEE2
	for <ddprobe@lists.linux.dev>; Sat, 29 Mar 2025 11:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743249593;
	bh=Z2Ix3OeqBCp5pFRjYziUHkX930Zm+tTx3FWnOVBAc6I=;
	h=To:Subject:From:Date:From;
	b=SsyqTxiLtzmW5/D86dtTMQ3CF80yj59od0nEPg+lM5mQ0bsWtb43Xlq6K83rYdvxU
	 xclTLvgC19VLDq3jgNZIP4ZosCoeMiE/25Dwl9whcWrlEaqRWKLAUbMGen3YgG8ivf
	 Dpq83iUxIrkm0BwEKquQuJ8SVpcZ2wMFzW5p53vUyUe5kUYdC57kaqEA3z1ll2+aOA
	 JxnRj5hBwtqZeO+89tMOq4AdT9i5TJ76PkHLauDaZDWy+15/deuC2yIcgGDEBGxICa
	 pXn9xFGzsE81V9OzoBkH2edVrDEU9dZNqQHJqbLj0bfoW9wlAXd5C9JISYLNQdd7NA
	 0n2z62MVV0ZLw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9CA01C36008
	for <ddprobe@lists.linux.dev>; Sat, 29 Mar 2025 11:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174324959360.6793.16618964215659553945.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4191e4b8fb093308bc766443d20de8bfe9822de0b69a160bd40a37056e7875b7
Date: Sat, 29 Mar 2025 11:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743249593
