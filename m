Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E6F3839658A
	for <ddprobe@lists.linux.dev>; Wed, 25 Mar 2026 21:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774474494; cv=none; b=Q5XXhEDr1kc/fiEDo7R9kr9o8bFg8H331J2XlPYnQSpv3VMhirA1FTq6sTB08YM3vvDdd6dFcKFqWWWZuT2W3Jz1JBXEltczRoLc5bX3hPBAiXXWbeC1EIy8C5VvmJ6KSQUDgLmtBKXsHnpVnLedQ8CtmQ+AfhrTv+zy/uuYdZE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774474494; c=relaxed/simple;
	bh=JZkunpJBUqwhPvTt7dh9hFteW74BERWdqCgjC+eITds=;
	h=To:Subject:From:Message-Id:Date; b=NsT8GEieDuMjQIcg0k20dKK0k24v3Ouc3eAUqxRDPIpiFDCf9F8KZ1y7ojOw4Cac33Y6tvdo4gDnM1TlOZvJ0/yAAp+WY7ia42P1PJIKA/Lrn4EaYIIMDNCNrOMKjn/U62ZabOHupsTq+Cv/G0QdEY4tlncTlO+nXoRt6KEzXvg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=stj7kl9v; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="stj7kl9v"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0DFCC4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 25 Mar 2026 21:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774474493;
	bh=JZkunpJBUqwhPvTt7dh9hFteW74BERWdqCgjC+eITds=;
	h=To:Subject:From:Date:From;
	b=stj7kl9veEf9NQ0xlgU3+p2H7B2NF+lE0WZ1f7/refBoxHc/E5n21fcVs31C0q36C
	 SKUjh7u0UjLHQiucDu3RjLRMvernQRdhLS7MuP5K9DkZ5lLXADPNnNYAkpO8bWl4Ut
	 oajLwiziUsdid54/XiQ8U+Id2W76StPaQoY6wmzQDRyayF4YSRb449Y9IRN2mZRR8w
	 BQ5SgDOWubTPdwu5bemqIh0JCXN2zHFF5bP3XoT/iFOwrTp64J9IS/WMsEVALfLjDX
	 xvnJ7lMu+k4jxum4zg011J9Pq40KoqtAa7CSVlwhoY1JrJE6wLGruReu7GRwzYriDW
	 W7TyXrdTVKDxw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 911BD109C05D
	for <ddprobe@lists.linux.dev>; Wed, 25 Mar 2026 21:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177447449358.15271.13753810897976603947.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8df6b668cf3070d9ae7f39c894f440ed1bc8d84ac1e71e2d692ecd6dbded959b
Date: Wed, 25 Mar 2026 21:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774474493
