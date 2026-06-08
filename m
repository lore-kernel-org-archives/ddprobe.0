Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C667322768
	for <ddprobe@lists.linux.dev>; Mon,  8 Jun 2026 20:34:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780950874; cv=none; b=O9Cf3OHk5siCYDmArQgbi75sgcGgL2WN6B5XDOqpCsSxpzbIKZH+TeEXBLE8yXUqHittzggk9lHYyBp8eDWDhNppD24QNb5zFELckSVgnEFIe81lECdFPKsbCaOeQHJA8rE7bMIistyUWfm0ULxzoRhojwEOGz22ZejWy+/2R+0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780950874; c=relaxed/simple;
	bh=1otPKzOu2giySUWtjVXT8t09vrEYKLvtml0AoIYwtpU=;
	h=To:Subject:From:Message-Id:Date; b=t48M/CtrQwyYySF0X9AflsB/hmvmRgajbFUw+lv6jrP6jiWEBHx+sFHVDlePFSghQN3enKoGzDGOfCFE5QLNTJ+6N3E8u3pg8Uwp1ovbP1vOyEOQ4VjPlt58igwYhJe7Lk4apxN/9Lt3xtbywOvNdJGg89Uzmpwgz2lRumVYTM8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Us2YgEfY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Us2YgEfY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB67AC2BCB0
	for <ddprobe@lists.linux.dev>; Mon,  8 Jun 2026 20:34:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780950873;
	bh=1otPKzOu2giySUWtjVXT8t09vrEYKLvtml0AoIYwtpU=;
	h=To:Subject:From:Date:From;
	b=Us2YgEfYDHU9E20TKfOnKuW22tB4sLQIOF6PlHwc1bCbiZnw2W1XdhZzYKNuqk6on
	 azyYKZZuc2oezYKWK7bFS9H/sR/0EsdAF0sIWlQq3P8fZml9PAJJ0hhk4If3jfJhiq
	 uGg3j+JH6hK7fTnOym9mTE5UV/xLPwI+siBpFgUfT8Kdht7uGaRzly+X+Wh9JyJolt
	 gR4lnL5ZpgdH6UCLLT5uAYoBVO1VPv+IeHALjxFsC1agLQSu3BBk5dIFF9q/ZrOyap
	 UKprT7djUm65lF8KEpmktdvb5sBNHiPyE+MeAVt7xsb+Chc3ZAGrpdlnrajJsipIk3
	 5xopKjigoSIXQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B08E7CD8CA4
	for <ddprobe@lists.linux.dev>; Mon,  8 Jun 2026 20:34:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178095087371.8520.13344788444200509852.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a33d8028f7d3eec4c2d30540be55476189ba7a5e47728267ce96ed8eb2f9bc1c
Date: Mon, 08 Jun 2026 20:34:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780950873
