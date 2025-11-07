Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 142C42DC33D
	for <ddprobe@lists.linux.dev>; Fri,  7 Nov 2025 10:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762510194; cv=none; b=Ft60M9mQRgeq4hRF8KvjDX/IAy4SqwkAQ/in6fRV7qzNZ4u2jwFE0gXaRe/2exua20E9SIb7ejgUjvk6hyoFiuxQmTtwDs1nLrXJ5zuNx8NM21vwn8MT6ERYm8/kfuGRGZy5QA3gxM6wjNKx6L/8G6+2mi+BisVeOe1An9/QXRY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762510194; c=relaxed/simple;
	bh=GY1hZBF3EtS9KauA74v4Il0h6+DK3FaE5ub17UOO6zU=;
	h=To:Subject:From:Message-Id:Date; b=LUFSfZYP7Idh0G8F0pgJcvISWJSpYSSf0DfqE9M7HAn1XZF/iI7HkbHyRa+ibQ8YwJHNN7J60xQ/qp0TcJX2lVztIVC5258bh6OK60x8izHNJyfHeh1UJZ5/MDfrkgfZwVYNKwYmzafA3s2tUz6ms1JvbsNSV61u7ccod/SZevQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ovoOJ22z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ovoOJ22z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9C2B1C116C6
	for <ddprobe@lists.linux.dev>; Fri,  7 Nov 2025 10:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762510193;
	bh=GY1hZBF3EtS9KauA74v4Il0h6+DK3FaE5ub17UOO6zU=;
	h=To:Subject:From:Date:From;
	b=ovoOJ22z5G1nVZexgSZIcRd+XHmBk+GGif6tDAuHPpiGgcIKlq2C+ZFstihkws2ZO
	 lAlAJv9Eenpzzbw9/97KlB5VpJsJQyZAwGGb76Pb7RHD8UFna4ttDe84h7IxI+DNwW
	 DbfhKHLl+n/bQYnaKWLdPFRJK4XXorBFDqMw5EMoJQ4N2/bd5u4H3Ktol3nYpDAUXX
	 xp/HBeO0cFNBQGjgAKeqeftm/jhaldhb5EeXdOZ2Eq4+tYrtdD0YH45ED/pDoUTSS/
	 S0pDR6hiQzXcAw0X9QPda92nLO5NtwFGTiGTVtxCFA9YtdsogFAAcZ9vBVqGK+fCpK
	 VQPmMmfyozs9A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 911ACCCF9F8
	for <ddprobe@lists.linux.dev>; Fri,  7 Nov 2025 10:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176251019358.8218.12953846617285558405.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 53808c9f974214461dd40d6107d9fa7bbd32cb59914a90adb641a1aeaf469147
Date: Fri, 07 Nov 2025 10:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762510193
