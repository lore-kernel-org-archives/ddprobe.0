Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 229FC2BE7DB
	for <ddprobe@lists.linux.dev>; Mon, 29 Sep 2025 07:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759129794; cv=none; b=GB1IjBmqWBH7R0zV6eOk5lOg9uexqqpkc5ZALwtP1PRghWeAohi2FPM6ywrLM0gXpvtZXDruP495gcsaQQxFYz61Vit4+MGz1fwsaaydjWl55KBZjPYjPKbdTmDH9Ao8Chy+xsSRrtZJlMNGc499lekqC63HRSMm5IxyDdexK2I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759129794; c=relaxed/simple;
	bh=Wq9pF7A227Ee2jOMxdKa9AUqmovAGCgQ4t9/DW6oz+g=;
	h=To:Subject:From:Message-Id:Date; b=ocYLWJBPiWugc9OGWSaqcmgN8o6HBk1EgJO5fpMydHzmLq662j+PWxxby5chwelYmJEzo15CULtB9KE65CAUmsWx6SgfKw6BZwtth9l1oBZhJoPX4cVuvnYMg2W+65eY/o60ltU1Td/r19Iaw5FpdsiizGskJejkINQaAhW4ho8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hOMQJ/8m; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hOMQJ/8m"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3289C4CEF4
	for <ddprobe@lists.linux.dev>; Mon, 29 Sep 2025 07:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759129793;
	bh=Wq9pF7A227Ee2jOMxdKa9AUqmovAGCgQ4t9/DW6oz+g=;
	h=To:Subject:From:Date:From;
	b=hOMQJ/8mIZQrWPDabWBfGYWLE+mNUpAxeQuCZ3/7uMqWpsFwG+MC90IbbalHC+MDX
	 hbe3VCL3qrKFRSMeQt7sUW8b0DFjyUUNY+KNrkKoFx6bG0fDalz7ZSuTUBhkfMvXOT
	 qBIfPe8tSXTYM2hMQBOKEz7o3WhkQVpnl4QznHV4jE4/o9hgQdNe8iIfPrk4T4f5rd
	 pSLO1cuReFL9Dmc5Qat4m3LKj4BrMm9BNj2Y9Yaq4kditM2Q9T6epmeT2iSCtX1bD6
	 IVs5AmJAkkxLQQpscSxhkk/i/Z7xKxKyxgyuPYD1if4UDwNf+ZJay9THoI/ZS2o4e0
	 +pb4yaVl6qj0w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9998ECAC5BD
	for <ddprobe@lists.linux.dev>; Mon, 29 Sep 2025 07:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175912979361.29574.13594295471411861396.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bfc0f62da95f0231b724adf3249303a3c9d94db52ea00cdcd958319833248173
Date: Mon, 29 Sep 2025 07:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759129793
