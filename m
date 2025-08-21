Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 209D821FF28
	for <ddprobe@lists.linux.dev>; Thu, 21 Aug 2025 07:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755762594; cv=none; b=D2DM7k2G+UnQB6au1oMBhKYqmy0bhZ81ZZVsH/TS4a1iT2PHrJuPj+vJDcS9p9RUg60J8tkoHjcw3RsO6o7fV7qh2L/K+FNPYF5yTmz0Oq319BEZvj2jZP404KjepDPh7CcJmWoA1dN4X/jFdaOixypuNPKaE9EsHSsv9j1Gv7k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755762594; c=relaxed/simple;
	bh=m4tBMHCWBmbRPBNnIprrDcMkzcjKDVGjC1vn33KYp2U=;
	h=To:Subject:From:Message-Id:Date; b=k4K9KbycGXuzbvHz+APlhS/VucQv/4Pqrctdbea2ga8g7s+SQHt+c+JiWnuqUqu5IoP8RjDe1gptz+Xmoz2TFRLjHhuL1xPO7SdUZ6YKoQB/yMRgNn3ZKC26WYcn+ZHt20CssOWidYuZRCJI/daZietHN3mVMuMbTf3L6asPr84=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LELhnsjO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LELhnsjO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DAA4C4CEED
	for <ddprobe@lists.linux.dev>; Thu, 21 Aug 2025 07:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755762593;
	bh=m4tBMHCWBmbRPBNnIprrDcMkzcjKDVGjC1vn33KYp2U=;
	h=To:Subject:From:Date:From;
	b=LELhnsjO7OdLtjyM9B8QNVVDfWrx9sOUEY51OX9C/WhdaX5XJrH7aaHcVz66YN4Cq
	 jo4K5BRBfRm7RMqO/ESrsLA2jv2Z2qJTpEKdKTQu3ZcZprmF47cGTaaQVWm/IfJOpi
	 K84KKM9tVddBVj/r5FwUFwHEgZQCmMBGA5eEIpvAF3TDJ0K+kJOrhlnWovb4n0Svf+
	 4Ein75LNh4JgAFevsnCxOEljyZWbGgn0YPRMYS5k4lgD0uFrKGFs6MiihZ0/qpUecr
	 0ch/bUQ9TFFE52YJheXuh045hMzqcrqwCZkGe9aswyeOQ5shekeTP807ZMoj1iZI0v
	 CJNww69RoDUVA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91C26CA0EF8
	for <ddprobe@lists.linux.dev>; Thu, 21 Aug 2025 07:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175576259357.29350.15397313227136266765.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 98af9cf249916d3129514cda9c20e6d4c10c20ef5a479aebd13a4bafb956e2d4
Date: Thu, 21 Aug 2025 07:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755762593
