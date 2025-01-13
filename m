Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41478240221
	for <ddprobe@lists.linux.dev>; Mon, 13 Jan 2025 16:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736784954; cv=none; b=ruFpdw/VrbY9ABzWVqAeEJqNOufAJTrSkFzfYAGURWXP9Yg3JnL2UoGeyoc+UhMLemG0wewXXpVQSqyjLBiOiXdt15O+w7HFLl1gPHcb6VoE4wzbJYetpEXxovnq9incgQ5kduQv5kBF6s8K/bjVc5MVNyxCyASaN9YIgY/7J54=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736784954; c=relaxed/simple;
	bh=oe00LukfBLancZHx9nOjocxx/QFcj3Rmclr9XGHHTa4=;
	h=To:Subject:From:Message-Id:Date; b=H5eOCpJUdErUUR0NBDJj+Fv6bEFUcp4dx4dMOAy71Buwk5xukYtvDLiiqygj86/PiaVtlcBI0Fum5G9E/Co61OxmVW0VpZhn3N4YQT4peaX+l3w7oh3QaKuF5ouZFH+6yOL+iGjmyvGi9izFZyDWOCOZeY+GbpOqoVkjv0CnqwI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PyVD0aIh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PyVD0aIh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6CBBC4CED6
	for <ddprobe@lists.linux.dev>; Mon, 13 Jan 2025 16:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736784953;
	bh=oe00LukfBLancZHx9nOjocxx/QFcj3Rmclr9XGHHTa4=;
	h=To:Subject:From:Date:From;
	b=PyVD0aIh0NJb7kxqMy0ZKpjqwdwrCAbcWouno4ooStEyPANY8l9HSfU4GQco+Vt1T
	 fsz9QyHZ4t1nAJLo/h9f7ZZ8+SD9nb9S1B5JVB3abN1PLEW4bUXcs4IQg9iTiGTKeL
	 nn/vnFLdqbBVn4vUeNH5EiFxLltgaaXOHJH4A+tmi1g6AYfj0Y7QN96msXRRe8PqKx
	 dV1xBQ5Bm/duuPQL7fUurUO+rlfwI7Aotn9yoXrKemau+Z7AGD7hZqJMxaR7vgTG0h
	 P/EshahRwznxENkfnjjpODT/LCu+d8fGtus1nCS/e1nDx/Zi/bpV/jsIfURigeHzaD
	 GPIyR7kRwPccg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 916D3C02183
	for <ddprobe@lists.linux.dev>; Mon, 13 Jan 2025 16:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173678495358.4077.5694800088428406083.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e31c1fa1d568268ccb80affa17481c1dab857c9b3d5aac94ac1d66337d24d678
Date: Mon, 13 Jan 2025 16:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736784953
