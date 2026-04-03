Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 50F52272E61
	for <ddprobe@lists.linux.dev>; Fri,  3 Apr 2026 14:35:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775226934; cv=none; b=uAyuVMnnYHb77IjnhuNHCt9zpteQK1Bw4Jn1fKvmQmyQqOKWBaFtOHFAeTGo6tiw+ESy9iGKNXITDBjXWKecfcRIawDsq2nkWjsWTSbT7Olu+1NyJqnTtQTlb+gQTxN89PK3+0UE9rfVzurgg2vg93K8z+zWyO5zumZbMA8JWKQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775226934; c=relaxed/simple;
	bh=RSrwtARPE/xbMWX7OY1quQUVNRSCRHqvK9wraPnLISE=;
	h=To:Subject:From:Message-Id:Date; b=bdEf5d2nHn6B1kTfSR331tfHyWDLHDZ3AH+RSSxbTWhIAIaSlmbobtHlgK9tOHXHhutrdoR+FNZ0TVwh+U2EqB6HB46Xu3AFauarJNRQvZC/QBJamklIphPiYrOiWftgNuaddyzEiZ2IKybFqGwSYnSN3HjorLU4RsDRFOv4XNg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oL1hbdUD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oL1hbdUD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C20DDC4CEF7
	for <ddprobe@lists.linux.dev>; Fri,  3 Apr 2026 14:35:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775226933;
	bh=RSrwtARPE/xbMWX7OY1quQUVNRSCRHqvK9wraPnLISE=;
	h=To:Subject:From:Date:From;
	b=oL1hbdUDYOs7v945lx2WSHjkhSWIXd+3O2bPQZ5zh07xrGE7y4RhBjKbNzgPitKqp
	 AfRWJQu/E4FH6EircWSpmde8Gt71eEDgEtXBk6AxtG9RqK4oNXM8tXb9dFF4hQ6cfu
	 VYIYTQSJH0zRgL8AyMX3tdNjsldYa+8OINTdqCIKN8UBT0JCVI/gc9TObpS7Y0Dqlf
	 ZkyswAcuoS9zBApPm3rzydhsMwkuKfOur+31vF3HAxnr6NZBFYSeXF7zb+ye1RfAXr
	 rKmolq+zwqkN+cXbXomDsQo7ZtuRMJumD7yLkoRYLjIGYQ8IXRNexPmqt/3oqBwF6V
	 ibBiKkDq0a+CQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF043E85372
	for <ddprobe@lists.linux.dev>; Fri,  3 Apr 2026 14:35:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177522693370.7405.2483377679454015310.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eb22643a9f517536163fb29817be687d6da5eca217af78e8162443cf7741ae6c
Date: Fri, 03 Apr 2026 14:35:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775226933
