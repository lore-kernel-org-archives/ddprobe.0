Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36CE034678E
	for <ddprobe@lists.linux.dev>; Thu,  7 May 2026 21:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778189854; cv=none; b=UY36hBm7bq+EGeZZcBSSwQ7ujwQDgqsmV0iOvkgJ8aABoy2C853o+FNlgv4ccvyUwu+FXvi7+7YWxvpIodE2YZYqbwFv83gm592eIV9hWqVPCp8GjRSrrK2Ut2w9c1L4TcGA1vcmX4CYuCe6Gc3p06JruM9+5PZ5YLlWIqc3uGs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778189854; c=relaxed/simple;
	bh=PTjToC+GsPBc0qtzCpFXnsSUdhH7jfbc164k9OEcP9g=;
	h=To:Subject:From:Message-Id:Date; b=rtt/LONn7rBmo77JMem/1iKqGPktquUdalQ11cgbiuwLv8Zzu0IY0M7akgXX1UFFjGORPhkB6HUqHhgEDIZMo0CD6BSyi8QJoKCOfbiJhrLWzHS19IFLmgJabzuMiYbBq4ccJS0npkpoLZ/wZHyNb8i5hZJGmuSV7Twe/K17X7A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=g21vwVIO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="g21vwVIO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA809C2BCC7
	for <ddprobe@lists.linux.dev>; Thu,  7 May 2026 21:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778189853;
	bh=PTjToC+GsPBc0qtzCpFXnsSUdhH7jfbc164k9OEcP9g=;
	h=To:Subject:From:Date:From;
	b=g21vwVIOw63yNKImBlJV6jqLf3Qfr37KA8xDGxNIR1UkB931g5iRvc4vwnH5cuBV8
	 1BwLNQ/Ui7rV0LVphMjc+tmvvicvWWY325SiwAEjaPQ5aqfZQMg14oTXIEk287kAAX
	 VncKHbyPqmZbBI/+H4gEB+MsaTKFxnfRQwLuO3wBME7paKoBvwR98w6kt9KggTLc3c
	 vLP0ZXXCtzzk9ij2MY2uDos5TpuRkbYxZS+bVPTJi391kyAKZwFoROQueK4e4R5nbm
	 cK0ZRcjBEgO/xRLuA/qAMPgVFmBY7KvtMVeys5E1WjelBNRuLq+bHWqfOc86zN4/m+
	 sYYgXd+W4lCEw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC9F0CD37AA
	for <ddprobe@lists.linux.dev>; Thu,  7 May 2026 21:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177818985369.10897.9048691794810166859.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 24cb007d0e0a9c4e5cd75b0a5a3a053ad8979c93347dfc04010280dc50e5376c
Date: Thu, 07 May 2026 21:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778189853
