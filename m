Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B88223BD02
	for <ddprobe@lists.linux.dev>; Fri, 10 Oct 2025 02:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760063394; cv=none; b=A1VoO6lXC5XXEw0E1lAEobSO56VZD8jdcvPCMiEaFxgmtPjKV20HJ87NkvVc7NrWsaWb2ID9PgGRIfZ83eMbg6qITcsQDgUPC+5wGFlA8tJTmxsumYp82nrFj7+UJsYe9nGcjyr9b+Nvm3GXVediZG3S4lhQxyUT7qoI/NdZ+rs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760063394; c=relaxed/simple;
	bh=lVA9MZTtaqL7IrKl5hzt0dxn64QiBd7hpIMo6LD7rCc=;
	h=To:Subject:From:Message-Id:Date; b=qr8exbCiIEkOnsuWuoJushj3p9EJi4260uEkk5G921Ck8ww4exC28knSteHAc1MjwbrxVE+DIl7WFkyqldkx+aEnOoZldHtBjpvqlOLcooM0yPfvwKWQrZbWThLxYagASltI7MSfPYcPpLb6NuZrltlr2/8BAkvRZsXqb2F9G+g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EKJFA2el; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EKJFA2el"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3B09C4CEE7
	for <ddprobe@lists.linux.dev>; Fri, 10 Oct 2025 02:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760063393;
	bh=lVA9MZTtaqL7IrKl5hzt0dxn64QiBd7hpIMo6LD7rCc=;
	h=To:Subject:From:Date:From;
	b=EKJFA2el4LmZgkfeMm8648F1JYUC28b5/K3iJQDhNrU1TEWyxxrdvpEbFGy0GyNQp
	 MOpPoVdbuF6Dbziz0pdU+N4GM0ykFK4CFZ9BDymV+FpRcMEafkMS7NOGYDSnhKOx/k
	 6GjjIb0q3xbypDCezJ46Fyqvfm3C/GtL9C9qr5juW0N4Gc5dTlhtCIbNnKGGoqzYG9
	 JIh+7yT69BI3lo9l+z9ZXW6ouceu6hwDV43pKyfZCGVtUWp3VDBxUDrW99/k0x57Lj
	 hnO8Bic2+e7Sbx+F/YM4JDHcsr9moi5YjCFPzYU5S48/yXbjEwEgo++RPKsNv6YVum
	 jCIYjshoAKFPQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93A52CCD183
	for <ddprobe@lists.linux.dev>; Fri, 10 Oct 2025 02:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176006339358.23890.2399878755599402952.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2fd4655108ea7126c2e20514360007ea0837c5040a98224f78883f85dc2429f8
Date: Fri, 10 Oct 2025 02:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760063393
