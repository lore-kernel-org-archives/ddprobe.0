Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F45A20FAAB
	for <ddprobe@lists.linux.dev>; Tue,  9 Dec 2025 02:52:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765248774; cv=none; b=gfYUqJaAYvseWpcFRz28tAH/jxK6RhRWDJpDnFfwGLWke+UyAkodnTZdvet+yZfLZnbQ8cQKqxDddtUx8zZyK76TAwBVUTb8IjpOZmczGWIyM5fKD7oKhxfKrppDoRi6u2tuAz8WN6ilX5oYGzJX1Mc8f+VlGlvMt+jmi1IfO5E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765248774; c=relaxed/simple;
	bh=KNalqweMzosOnQbpnDjKMXzF5vKd1Aea35cNr2Ib8pc=;
	h=To:Subject:From:Message-Id:Date; b=tbNmo8zJKKNqrgFAON/1HYIfcEaEHbuxwIOdDLVRxOd7GqY2BCSEE6XztT/v0FKy0wAwPnDc4NVcVbkS5lIaO68s/n1gueMl6+57tbAdBoARNIenV081zqiq+8JSmfASuX+BdxWyElU2gJ2m1l+K+drieeWwi9xCL7bCS6q4Qtc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IoauYejm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IoauYejm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A710AC19421
	for <ddprobe@lists.linux.dev>; Tue,  9 Dec 2025 02:52:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765248773;
	bh=KNalqweMzosOnQbpnDjKMXzF5vKd1Aea35cNr2Ib8pc=;
	h=To:Subject:From:Date:From;
	b=IoauYejm7X0M9zpzi+CajmipQnx06YnBBd3PKFXAgiTPgUxJ2mo5XpcrwNn6ck0xj
	 qYfuKMSdxMeo0BO0+q0tU/40N9Ev/zIznWzlEDVISL534BA1yz/n/3PT7o+W1N7Btx
	 zSSSJ+hdkLXM+OSuiX028BaAeuKobGpDiyMmziXBizpr1fC5GVpQa4xq3Gz8SuHQUy
	 XdXrkWf7AyOZmQn3BEkWrxHL2xPRBdjgkRznEypbfecHhAUPH1m4oFCCpSCnKgrgix
	 gwc1XnDzLE8N8e8JwfaDRlLuSGn/hXu+a9gm/kqY0OUciEMHimhYGexR9u3YA19uJ3
	 pvYZw2GdEudzA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 941C8D3B7F3
	for <ddprobe@lists.linux.dev>; Tue,  9 Dec 2025 02:52:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176524877359.19121.8946808974537995747.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9c3a30198dcaa243fedf247dd865be7adbac4535bdd7b0ae79aa66ff2d70afb0
Date: Tue, 09 Dec 2025 02:52:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765248773
